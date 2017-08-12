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
