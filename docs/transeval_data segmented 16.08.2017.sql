
DROP TABLE V_TRANSEVAL_BM;

CREATE TABLE V_TRANSEVAL_BM
(
  EVALDATE                DATE,
  DATETYPE                INTEGER,
  SEGMENT_CODE            VARCHAR2(3),
  TWR_STD                 NUMBER,
  TWR_PREV_DATE           NUMBER,
  MARKETVALUE             NUMBER,
  CAPITALFLOW_PREV_DATE   NUMBER,
  PROFIT_PREV_DATE        NUMBER
);

--SQL Statement which produced this data:
--
--  SELECT EVALDATE, DATETYPE, SEGMENT_CODE, ROUND(MWR_STD, 6) AS TWR_STD, ROUND(MWR_SPAN, 6) AS TWR_PREV_DATE, ROUND(MARKETVALUE) AS MARKETVALUE,
--   ROUND(CAPITALFLOW_PREV_DATE) AS CAPITALFLOW_PREV_DATE, ROUND(PROFIT_PREV_DATE) AS PROFIT_PREV_DATE
--    FROM V_TRANSEVAL_BM B
--   WHERE MARKETVALUE <> 0
--   order by evaldate;
--
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('12/31/2012 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 0, 'AR4', 0, 0, 
    10228, 0, 0);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('12/31/2012 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 0, 'AR2', 0, 0, 
    623135, 0, 0);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('12/31/2012 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 0, 'AR3', 0, 0, 
    5796178, 0, 0);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('12/31/2012 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 0, 'CG4', 0, 0, 
    13490001, 0, 0);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('12/31/2012 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 0, 'CG1', 0, 0, 
    15426703, 0, 0);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('12/31/2012 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 0, 'CG2', 0, 0, 
    17171172, 0, 0);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('12/31/2012 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 0, 'AR1', 0, 0, 
    28719, 0, 0);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('01/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR2', 0.004496, 0.004496, 
    625936, 0, 2801);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('01/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR3', 0.014591, 0.014591, 
    3429200, -2451551, 84573);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('01/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG1', 0.000135, 0.000135, 
    15409512, -19271, 2080);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('01/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG4', 0.003769, 0.003769, 
    13546504, 5656, 50848);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('01/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG2', 0.000622, 0.000622, 
    17181860, 0, 10688);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('01/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR1', 0.620174, 0.620174, 
    399079, 352548, 17811);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('01/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR4', 0.012194, 0.012194, 
    10353, 0, 125);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('02/28/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR3', -0.021893, -0.061668, 
    2550000, -667730, -211470);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('02/28/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR2', 0.002558, -0.001929, 
    624729, 0, -1207);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('02/28/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR1', -1.922432, -0.182977, 
    1102657, 776600, -73022);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('02/28/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR4', 0.012455, 0.000258, 
    10355, 0, 3);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('02/28/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG2', -0.0002, -0.000822, 
    17167735, 0, -14125);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('02/28/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG1', 0.000185, 0.00005, 
    14645553, -764735, 777);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('02/28/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG4', 0.001872, -0.00189, 
    13521825, 918, -25597);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('03/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR2', 0.00063, -0.001923, 
    623528, 0, -1201);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('03/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG2', 0.077741, 0.077957, 
    18506084, 0, 1338349);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('03/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR1', -1.932162, -0.000253, 
    539490, -562887, -279);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('03/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG1', 0.090041, 0.094648, 
    15854855, -176873, 1386174);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('03/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR4', 0.011558, -0.000885, 
    10346, 0, -9);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('03/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR3', -0.044388, -0.051131, 
    2413000, -6615, -130385);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('03/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG4', 0.079598, 0.077543, 
    15336546, 766200, 1048521);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('04/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG4', 0.084379, 0.004205, 
    15406650, 5608, 64496);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('04/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG2', 0.077741, 0, 
    18506084, 0, 0);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('04/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR2', 0.009247, 0.008612, 
    610443, -18454, 5370);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('04/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR4', 0.017623, 0.005996, 
    10408, 0, 62);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('04/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR3', -0.093731, -0.118525, 
    2127000, 0, -286000);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('04/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR1', -1.903545, 0.001523, 
    509430, -30882, 822);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('04/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG1', 0.101303, 0.010958, 
    15734341, -294258, 173745);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('05/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG1', 0.068555, -0.032108, 
    13789184, -1439961, -505197);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('05/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR3', -0.148625, -0.149589, 
    2280000, 471175, -318175);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('05/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR4', 0.019544, 0.001887, 
    10428, 0, 20);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('05/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG2', 0.077741, 0, 
    18506084, 0, 0);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('05/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR2', 0.008302, -0.000965, 
    609854, 0, -589);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('05/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG4', 0.085175, 0.000697, 
    15418254, 866, 10737);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('05/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR1', -1.91378, -0.000577, 
    2493379, 1984243, -294);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('06/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR1', -2.066951, -0.001764, 
    1925728, -563253, -4399);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('06/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR2', 0.015435, 0.007288, 
    614299, 0, 4445);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('06/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR3', -0.209182, -0.153947, 
    1929000, 0, -351000);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('06/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR4', 0.005785, -0.013495, 
    10287, 0, -141);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('06/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG4', 0.016501, -0.060085, 
    14661501, 169650, -926403);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('06/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG1', 0.070258, 0.001905, 
    13160967, -654488, 26272);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('06/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG2', 0.105098, 0.025383, 
    18975830, 0, 469746);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('07/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR4', 0.008138, 0.002339, 
    10311, 0, 24);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('07/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR2', 0.023161, 0.007838, 
    619114, 0, 4815);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('07/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR3', -0.248664, -0.118633, 
    2679200, 979044, -228844);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('07/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG4', 0.056018, 0.036359, 
    14581594, -612988, 533082);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('07/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG1', 0.070258, 0, 
    12924191, -236776, 0);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('07/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG2', 0.105098, 0, 
    18975830, 0, 0);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('07/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR1', 4.77481, 0.102035, 
    1763992, -358228, 196492);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('08/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR2', 0.024658, 0.001507, 
    620046, 0, 933);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('08/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR3', -0.216453, 0.069685, 
    2865900, 0, 186700);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('08/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG1', 0.04622, -0.028693, 
    11604016, -949346, -370830);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('08/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG4', 0.057002, 0.00091, 
    14427386, -167474, 13266);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('08/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG2', 0.105098, 0, 
    18975830, 0, 0);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('08/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR1', 11.210014, 0.104771, 
    3772698, 1823891, 184815);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('08/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR4', 0.011506, 0.003341, 
    10345, 0, 34);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('09/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR3', -0.095028, 0.245577, 
    3569700, 0, 703800);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('09/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR2', 0.039071, 0.014485, 
    629028, 0, 8981);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('09/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR1', 9.817778, -0.010598, 
    2894499, -838215, -39984);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('09/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR4', 0.023229, 0.011589, 
    10465, 0, 120);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('09/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG2', -0.074839, -0.162824, 
    15886102, 0, -3089728);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('09/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG1', 0.06478, 0.024674, 
    11890336, 0, 286320);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('09/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG4', 0.029006, -0.026177, 
    14891527, 841801, -377660);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('10/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR2', 0.046141, 0.007004, 
    614816, -18617, 4405);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('10/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG2', -0.175985, -0.109328, 
    84656, -14064644, -1736802);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('10/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR1', 5.652674, -0.041326, 
    22391608, 19616728, -119619);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('10/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG1', 0.062474, -0.002991, 
    11190387, -664380, -35569);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('10/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR4', 0.026948, 0.003634, 
    10503, 0, 38);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('10/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR3', -0.187602, -0.150313, 
    2908300, -124828, -536572);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('10/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG4', 0.030296, 0.001169, 
    14929228, 20296, 17405);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('11/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG4', 0.048344, 0.016308, 
    15265354, 92660, 243466);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('11/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG2', -0.092056, 17.023731, 
    84656, -1441164, 1441164);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('11/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR2', 0.049609, 0.003515, 
    616977, 0, 2161);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('11/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR4', 0.028529, 0.001539, 
    10520, 0, 16);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('11/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR3', -0.220503, -0.065571, 
    2717600, 0, -190700);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('11/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'AR1', 5.720307, 0.000087, 
    15418680, -6974870, 1942);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('11/30/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 3, 'CG1', 0.068004, 0.007623, 
    11787342, 511656, 85299);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('12/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 4, 'CG1', 0.127765, 0.04796, 
    12167069, -185596, 565323);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('12/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 4, 'AR3', -0.290549, 0.094849, 
    2996814, 21451, 257763);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('12/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 4, 'AR4', 0.034866, 0.006161, 
    10584, 0, 65);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('12/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 4, 'CG2', -0.099168, 2.370851, 
    285363, 0, 200707);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('12/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 4, 'AR2', 0.056729, 0.002219, 
    10187, -608159, 1369);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('12/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 4, 'CG4', 0.136137, 0.082598, 
    16323506, -202735, 1260887);
Insert into V_TRANSEVAL_BM
   (EVALDATE, DATETYPE, SEGMENT_CODE, TWR_STD, TWR_PREV_DATE, 
    MARKETVALUE, CAPITALFLOW_PREV_DATE, PROFIT_PREV_DATE)
 Values
   (TO_DATE('12/31/2013 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 4, 'AR1', 0.125253, 0.028704, 
    16214784, 353527, 442577);
COMMIT;