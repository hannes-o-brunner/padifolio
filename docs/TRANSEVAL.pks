CREATE OR REPLACE PACKAGE TRANSEVAL IS

/** <pre>
* Client/Project:   Expersoft Systems AG
* Module Name:      TRANSEVAL
* Author:           Patrik Fassbind
* Version:          1.0.0
* Date:            
* Description:      
* </pre>
* @headcom
*/

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
