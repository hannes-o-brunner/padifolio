
connect transeval/padifolio;


drop table v_transeval_twr cascade constraints;

create table v_transeval_twr(
	pf_id             integer,
	evaldate          date,
	datetype          integer,
	twr_std           number,
	twr_prev_date     number,
	marketvalue       number,
	flow_prev_date    number,
	profit_prev_date  number
);

create index v_transeval_twr#i#1 on v_transeval_twr(pf_id, evaldate);


drop table v_transeval_bm cascade constraints;

create table v_transeval_bm(
	pf_id             integer,
	evaldate          date,
	segment_desc      varchar2(30),
	datetype          integer,
	twr_std           number,
	twr_prev_date     number,
	marketvalue       number,
	flow_prev_date    number,
	profit_prev_date  number
);

create index v_transeval_bm#i#1 on v_transeval_bm(pf_id, evaldate, segment_desc);


CREATE OR REPLACE PACKAGE TRANSEVAL IS

	/**
	* defines portfolio to evaluate
	*
	* @param in_pf_id
	* @param in_add_to_prev_selection if <> 0 then portfolios are added to previously defined ones
	*/
	PROCEDURE PREP_PORTFOLIO_ID (
		in_pf_id INTEGER, 
		in_add_to_prev_selection INTEGER DEFAULT 0);

	TYPE TITLE_LIST IS TABLE OF INTEGER;

	TYPE SEGMENT_LIST IS TABLE OF TITLE_LIST;

	-- allows to initialize all segments in one call.
	-- the numbering of the segment is done automatically and corresponds to the sequence of title_lists
	-- sample call:
	-- EXEC TRANSEVAL.PREP_SEGMENTS(
	--        TRANSEVAL.SEGMENT_LIST(
	--          TRANSEVAL.TITLE_LIST(1, 2, 3), -- titles of segment 1
	--          TRANSEVAL.TITLE_LIST(14, 15, 16),  -- titles of segment 2
	--          TRANSEVAL.TITLE_LIST(37, 38, 39))); -- titles of segment 3
	PROCEDURE PREP_SEGMENTS (in_segment_list SEGMENT_LIST);

	/**
	* calculated evaluation or performance
	*
	* @param in_refcur reference currency
	* @param in_from evaluation startdate
	* @param in_to evaluation enddate
	* @param in_net evaluation net or gross. domain: COMMONS_NUMBER.c_n_TRUE/c_n_FALSE
	* @param in_method gain/loss calculation method. domain: TRANS.average_/fifo_/lifo_method
	* @param in_bookkeeping gain/loss calculation method. domain: TRANS.acquisition/bookkeeping
	* @param in_incl_nipselflows unbundle flows. domain: NIPSELN_HR.NIPSEL_WP_INTERNAL/_DA_CONNECTED/_WP_CONNECTED/_WP_OPEN/_TYPE_DA_PRIV
	* @param in_required_return domain: c_n_mwr_only, c_n_mwr_and_twr, c_n_twr_only
	* @param in_interval domain: NULL (= no interval), COMMONS_DATE.c_c_monthly, c_c_yearly etc
	* @param in_bm_id benchmark id. Portfolio is segmented into benchmark segments if bm_id is not null
	* @param in_asset_level calculate on asset level. domain: COMMONS_NUMBER.c_n_TRUE/c_n_FALSE
	* @param in_calc_consolidated if COMMONS_NUMBER.c_n_TRUE then consolidate single portfolios composing a consolidation
	* @param in_feetaxset_id make fees/taxes performance active as defined by BASFEETAXSET.ID
	* @param in_crit_type works together with in_crit_value and allows to define filters.
	* @param in_crit_value examples: "CURRENCY CHF", "BASKET 123", "TITLE_ID 12345"
	* @param in_crit_type2 works together with in_crit_value and allows to define filters.
	* @param in_crit_value2 examples: "CURRENCY CHF", "BASKET 123", "TITLE_ID 12345"
	* @param in_crit_type3 works together with in_crit_value and allows to define filters.
	* @param in_crit_value3 examples: "CURRENCY CHF", "BASKET 123", "TITLE_ID 12345"
	* @param in_use_stored_pos values in table HIST_PF_POSITION override evaluation
	* @param in_include_wtax withholdingtax performance active. range: EVAL.c_n_wtax_method_pf_default/_unchanged/_to_nrwtax
	* @param in_rgl_method order transactions by trdat or valdat
	* @param in_quotebank bankcode for quotes and exchange rates
	* @param in_with_base_currency separation of MWR/TWR into base/currency return
	* @param in_dimension_id similar to bm: separate portfolio by e.g. currency
	* @param in_analyze_calculation create calculation step details for analysis
	* @param in_purge_limit start saving memory if number_of_titles * evaluation_period exceed limit
	*/
	PROCEDURE CALC_DETAIL (
		in_refcur               VARCHAR2,
		in_from                 DATE,
		in_to                   DATE,
		in_net                  INTEGER  DEFAULT -1,
		in_method               INTEGER  DEFAULT 1,
		in_bookkeeping          INTEGER  DEFAULT 1,
		in_incl_nipselflows     INTEGER  DEFAULT 0,
		in_required_return      INTEGER  DEFAULT -1,
		in_interval             VARCHAR2 DEFAULT NULL,
		in_bm_id                INTEGER  DEFAULT 0,
		in_asset_level          INTEGER  DEFAULT 0,
		in_calc_consolidated    INTEGER  DEFAULT 0,
		in_feetaxset_id         INTEGER  DEFAULT 0,
		in_crit_type            VARCHAR2 DEFAULT NULL,
		in_crit_value           VARCHAR2 DEFAULT NULL,
		in_crit_type2           VARCHAR2 DEFAULT NULL,
		in_crit_value2          VARCHAR2 DEFAULT NULL,
		in_crit_type3           VARCHAR2 DEFAULT NULL,
		in_crit_value3          VARCHAR2 DEFAULT NULL,
		in_use_stored_positions INTEGER  DEFAULT 0,
		in_include_wtax         INTEGER  DEFAULT 0,
		in_rgl_method           INTEGER  DEFAULT 1,
		in_quotebank            INTEGER  DEFAULT -1,
		in_with_base_currency   INTEGER  DEFAULT 0,
		in_dimension_id         INTEGER  DEFAULT 0,
		in_analyze_calculation  INTEGER  DEFAULT 0,
		in_purge_limit          INTEGER  DEFAULT 1000000);

END TRANSEVAL;
/

CREATE OR REPLACE PACKAGE BODY TRANSEVAL IS

	/** <pre>
	* Client/Project:   Expersoft Systems AG
	* Module Name:      TRANSEVAL
	* Author:           Patrik Fassbind
	* Version:          1.0.0
	* Date:            
	* Description:
	*  
	*   Summary
	*   =======
	*     This package calculates:
	*       - market values (valuation)
	*       - performance (MWR/TWR)
	*       - benchmarks (portfolio segmentation)
	*       - performance series (can be forwarded to calculate risk figures)
	*
	*   Implementation
	*   ==============
	*     Reduce database access as much as possible:
	*       Configuration (transtype, titletype_config):
	*         Load on package initialization into plsql tables
	*
	*       Portfolio:
	*         All required data is retrieved while selecting the portfolios.
	*
	*       Transactions: 
	*         - read from TRANSORIG and TRANSORIGREF with BULK FETCH
	*           -> get 10'000 transactions in 0.15 secs
	*         - for each asset remember the last transaction and its position. If there are no transactions later than
	*           start date and position = 0 then these transactions can be skipped.
	*           -> Evaluating current year of largest tfo portfolio reduces nb of tr from 10'000 to 7'000 (-30%)
	*                  and nb of assets in from 869 to 119 (-85%; good candidates are: fx forwards, time deposits)
	*         - if a position becomes and remains 0 then remove it from the title loop and put its flow into [carry_over].
	* </pre>
	* @headcom
	*/
	PROCEDURE PREP_PORTFOLIO_ID (
		in_pf_id INTEGER, 
		in_add_to_prev_selection INTEGER DEFAULT 0)
	IS
	BEGIN
		NULL;
	END;

	PROCEDURE PREP_SEGMENTS (in_segment_list SEGMENT_LIST)
	IS
	BEGIN
		NULL;
	END;

	PROCEDURE CALC_DETAIL (
		in_refcur               VARCHAR2,
		in_from                 DATE,
		in_to                   DATE,
		in_net                  INTEGER  DEFAULT -1,
		in_method               INTEGER  DEFAULT 1,
		in_bookkeeping          INTEGER  DEFAULT 1,
		in_incl_nipselflows     INTEGER  DEFAULT 0,
		in_required_return      INTEGER  DEFAULT -1,
		in_interval             VARCHAR2 DEFAULT NULL,
		in_bm_id                INTEGER  DEFAULT 0,
		in_asset_level          INTEGER  DEFAULT 0,
		in_calc_consolidated    INTEGER  DEFAULT 0,
		in_feetaxset_id         INTEGER  DEFAULT 0,
		in_crit_type            VARCHAR2 DEFAULT NULL,
		in_crit_value           VARCHAR2 DEFAULT NULL,
		in_crit_type2           VARCHAR2 DEFAULT NULL,
		in_crit_value2          VARCHAR2 DEFAULT NULL,
		in_crit_type3           VARCHAR2 DEFAULT NULL,
		in_crit_value3          VARCHAR2 DEFAULT NULL,
		in_use_stored_positions INTEGER  DEFAULT 0,
		in_include_wtax         INTEGER  DEFAULT 0,
		in_rgl_method           INTEGER  DEFAULT 1,
		in_quotebank            INTEGER  DEFAULT -1,
		in_with_base_currency   INTEGER  DEFAULT 0,
		in_dimension_id         INTEGER  DEFAULT 0,
		in_analyze_calculation  INTEGER  DEFAULT 0,
		in_purge_limit          INTEGER  DEFAULT 1000000)
	IS
	BEGIN
		NULL;
	END;

END TRANSEVAL;
/

drop type t_portfolio_tab;

drop type t_portfolio_rec;

create or replace type t_portfolio_rec as object (
	id                    integer
 ,name                  varchar2(60)
 ,zip                   varchar2(10)
 ,city                  varchar2(40)
);
/

create or replace type t_portfolio_tab as table of t_portfolio_rec;
/

create or replace package transeval_svc is

  function portfolio_list
  return t_portfolio_tab;

  procedure calc_portfolio_performance(
    i_portf_id          integer,
    i_ref_curry         varchar2,
    i_from_date         date,
    i_to_date           date
  );

end transeval_svc;
/

create or replace package body transeval_svc is

  function portfolio_list
  return t_portfolio_tab
  is
    l_portfolio_rec t_portfolio_rec;
    l_portfolio_tab t_portfolio_tab;
  begin
    l_portfolio_tab := new t_portfolio_tab();
    l_portfolio_rec := new t_portfolio_rec(1, 'Pat Winner', '6414', 'Oberarth');
    l_portfolio_tab.extend(1);
    l_portfolio_tab(l_portfolio_tab.last) := l_portfolio_rec;
    l_portfolio_rec := new t_portfolio_rec(2, 'Hank Looser', '8103', 'Unterengstringen');
    l_portfolio_tab.extend(1);
    l_portfolio_tab(l_portfolio_tab.last) := l_portfolio_rec;
    return l_portfolio_tab;
  end portfolio_list;

  procedure calc_portfolio_performance(
    i_portf_id          integer,
    i_ref_curry         varchar2,
    i_from_date         date,
    i_to_date           date
  )
  is
  begin

    ---- INIT PORTFOLIO ----
    transeval.prep_portfolio_id(i_portf_id);

    ---- INIT SEGMENTS ----
    transeval.prep_segments(
      transeval.segment_list(
        transeval.title_list(1, 2, 3),    -- titles of segment 1
        transeval.title_list(14, 15, 16), -- titles of segment 2
        transeval.title_list(37, 38, 39)  -- titles of segment 3
      )
    );

    ---- CALC PERFORMANCE ----
    transeval.calc_detail(
      in_refcur => i_ref_curry,
      in_from   => i_from_date,
      in_to     => i_to_date
    );

  end calc_portfolio_performance;

end transeval_svc;
/

select * from table (cast (transeval_svc.portfolio_list as t_portfolio_tab))
