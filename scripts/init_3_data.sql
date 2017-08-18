
connect transeval/padifolio;


delete from v_transeval_twr;

commit;


insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('12/31/2012', 'MM/DD/YYYY'), 0, 0, 0, 56342117, 0, 0);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('01/31/2013', 'MM/DD/YYYY'), 3, 0.007396, 0.007396, 57750233, 982874, 425242);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('02/28/2013', 'MM/DD/YYYY'), 3, 0.006628, -0.000763, 57711890, 5741, -44084);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('03/31/2013', 'MM/DD/YYYY'), 3, 0.03754, 0.030709, 59124428, -349406, 1761944);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('04/30/2013', 'MM/DD/YYYY'), 3, 0.040073, 0.002441, 63461897, 4185783, 151686);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('05/31/2013', 'MM/DD/YYYY'), 3, 0.038902, -0.001127, 62674993, -710858, -76045);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('06/30/2013', 'MM/DD/YYYY'), 3, 0.032853, -0.005822, 63721676, 1420100, -373416);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('07/31/2013', 'MM/DD/YYYY'), 3, 0.048623, 0.015269, 65700317, 979176, 999465);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('08/31/2013', 'MM/DD/YYYY'), 3, 0.050101, 0.001409, 64694296, -1097364, 91344);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('09/30/2013', 'MM/DD/YYYY'), 3, 0.033065, -0.016223, 64384112, 751601, -1061786);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('10/31/2013', 'MM/DD/YYYY'), 3, 0.021595, -0.011103, 93674289, 29948648, -658471);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('11/30/2013', 'MM/DD/YYYY'), 3, 0.032722, 0.010892, 79652295, -14998321, 976327);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('12/31/2013', 'MM/DD/YYYY'), 4, 0.062286, 0.028627, 81539462, -381360, 2268528);

insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('12/31/2012', 'MM/DD/YYYY'), 0, 0, 0, 52546136, 0, 0);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('01/31/2013', 'MM/DD/YYYY'), 3, 0.003178, 0.003178, 50602444, -2112618, 168926);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('02/28/2013', 'MM/DD/YYYY'), 3, -0.003324, -0.006482, 49622854, -654947, -324643);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('03/31/2013', 'MM/DD/YYYY'), 3, 0.069771, 0.073339, 53283848, 19825, 3641169);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('04/30/2013', 'MM/DD/YYYY'), 3, 0.068949, -0.000768, 52904357, -337986, -41505);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('05/31/2013', 'MM/DD/YYYY'), 3, 0.05281, -0.015098, 53107182, 1016324, -813498);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('06/30/2013', 'MM/DD/YYYY'), 3, 0.03702, -0.014998, 51277612, -1048091, -781480);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('07/31/2013', 'MM/DD/YYYY'), 3, 0.047229, 0.009845, 51554232, -228948, 505568);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('08/31/2013', 'MM/DD/YYYY'), 3, 0.047505, 0.000263, 52276222, 707071, 14919);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('09/30/2013', 'MM/DD/YYYY'), 3, -0.002749, -0.047975, 49771657, 3586, -2508151);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('10/31/2013', 'MM/DD/YYYY'), 3, -0.051021, -0.048405, 52129498, 4764556, -2406714);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('11/30/2013', 'MM/DD/YYYY'), 3, -0.017177, 0.035664, 45901129, -7811718, 1583349);
insert into v_transeval_twr (pf_id, evaldate, datetype, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('12/31/2013', 'MM/DD/YYYY'), 4, 0.042, 0.060212, 48008308, -621511, 2728691);

commit;



delete from v_transeval_bm;

commit;


insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('12/31/2012', 'MM/DD/YYYY'), 0, 'Cash', 0, 0, 243217, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('12/31/2012', 'MM/DD/YYYY'), 0, 'Fixed Income', 0, 0, 6056499, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('12/31/2012', 'MM/DD/YYYY'), 0, 'Equities', 0, 0, 3473820, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('12/31/2012', 'MM/DD/YYYY'), 0, 'Real Estate', 0, 0, 18576357, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('12/31/2012', 'MM/DD/YYYY'), 0, 'Private Equity', 0, 0, 11098861, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('12/31/2012', 'MM/DD/YYYY'), 0, 'Alternative Investments', 0, 0, 0, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('12/31/2012', 'MM/DD/YYYY'), 0, 'Other', 0, 0, 16893362, 0, 0);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('01/31/2013', 'MM/DD/YYYY'), 3, 'Cash', 0.234319, 0.234319, 71745, -228463, 56990);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('01/31/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.009974, 0.009974, 6116909, 0, 60410);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('01/31/2013', 'MM/DD/YYYY'), 3, 'Equities', -0.000059, -0.000059, 4163615, 690000, -205);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('01/31/2013', 'MM/DD/YYYY'), 3, 'Real Estate', 0.009529, 0.009529, 18243895, -509471, 177008);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('01/31/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0, 0, 11370186, 271325, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('01/31/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0, 0, 0, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('01/31/2013', 'MM/DD/YYYY'), 3, 'Other', 0.007757, 0.007757, 17783884, 759483, 131039);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('02/28/2013', 'MM/DD/YYYY'), 3, 'Cash', 0.234319, 0, 113725, 41980, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('02/28/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.004847, -0.005077, 6085854, 0, -31056);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('02/28/2013', 'MM/DD/YYYY'), 3, 'Equities', -0.000036, 0.00002, 4163697, 0, 82);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('02/28/2013', 'MM/DD/YYYY'), 3, 'Real Estate', 0.011531, 0.002039, 18250120, -30969, 37194);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('02/28/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.00064, 0.000625, 11370186, -7106, 7106);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('02/28/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0, 0, 0, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('02/28/2013', 'MM/DD/YYYY'), 3, 'Other', 0.004358, -0.003228, 17728309, 1836, -57411);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('03/31/2013', 'MM/DD/YYYY'), 3, 'Cash', 0.234317, -0.000004, 299943, 186218, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('03/31/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.002338, -0.002496, 6070661, 0, -15193);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('03/31/2013', 'MM/DD/YYYY'), 3, 'Equities', 0.002125, 0.001802, 4459270, 288070, 7504);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('03/31/2013', 'MM/DD/YYYY'), 3, 'Real Estate', 0.031207, 0.020028, 18621165, 5531, 365514);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('03/31/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.096515, 0.093586, 12377716, -56565, 1064095);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('03/31/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0, 0, 0, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('03/31/2013', 'MM/DD/YYYY'), 3, 'Other', 0.024486, 0.01918, 17295672, -772661, 340024);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('04/30/2013', 'MM/DD/YYYY'), 3, 'Cash', 0.236408, 0.001696, 155896, -144556, 509);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('04/30/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.013782, 0.011417, 6080264, -59704, 69308);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('04/30/2013', 'MM/DD/YYYY'), 3, 'Equities', 0.002174, 0.000039, 6459443, 2000000, 173);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('04/30/2013', 'MM/DD/YYYY'), 3, 'Real Estate', 0.034942, 0.003726, 18621165, -69380, 69380);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('04/30/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.096496, -0.000017, 12927512, 550000, -204);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('04/30/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0, 0, 0, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('04/30/2013', 'MM/DD/YYYY'), 3, 'Other', 0.025227, 0.000724, 19217616, 1909423, 12521);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('05/31/2013', 'MM/DD/YYYY'), 3, 'Cash', 0.236082, -0.000509, 144282, -11534, -79);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('05/31/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.018332, 0.004532, 6107822, 0, 27558);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('05/31/2013', 'MM/DD/YYYY'), 3, 'Equities', 0.029224, 0.014547, 6242682, -310727, 93966);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('05/31/2013', 'MM/DD/YYYY'), 3, 'Real Estate', 0.038672, 0.003721, 18621165, -69281, 69281);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('05/31/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.059485, -0.031776, 12195684, -321048, -410780);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('05/31/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0, 0, 0, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('05/31/2013', 'MM/DD/YYYY'), 3, 'Other', 0.033752, 0.007494, 19363357, 1732, 144009);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('06/30/2013', 'MM/DD/YYYY'), 3, 'Cash', 0.236082, 0, 313450, 169167, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('06/30/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.015378, -0.002929, 6089934, 0, -17889);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('06/30/2013', 'MM/DD/YYYY'), 3, 'Equities', 0.049466, 0.011264, 6234516, -78483, 70317);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('06/30/2013', 'MM/DD/YYYY'), 3, 'Real Estate', 0.052447, 0.013743, 18810534, -66537, 255905);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('06/30/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.082912, 0.02132, 13108442, 652750, 260008);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('06/30/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0, 0, 0, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('06/30/2013', 'MM/DD/YYYY'), 3, 'Other', -0.021995, -0.048636, 19164801, 743202, -941758);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('07/31/2013', 'MM/DD/YYYY'), 3, 'Cash', 0.474203, 0.184767, 169099, -202266, 57915);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('07/31/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.020158, 0.004753, 6118881, 0, 28947);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('07/31/2013', 'MM/DD/YYYY'), 3, 'Equities', 0.049466, 0, 6738123, 503607, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('07/31/2013', 'MM/DD/YYYY'), 3, 'Real Estate', 0.056127, 0.003634, 18810534, -68356, 68356);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('07/31/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.08321, 0.000252, 13149364, 37615, 3307);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('07/31/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0, 0, 0, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('07/31/2013', 'MM/DD/YYYY'), 3, 'Other', 0.027784, 0.043879, 20714316, 708575, 840939);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('08/31/2013', 'MM/DD/YYYY'), 3, 'Cash', 0.474203, 0, 144559, -24540, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('08/31/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.020372, 0.000212, 6120176, 0, 1295);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('08/31/2013', 'MM/DD/YYYY'), 3, 'Equities', 0.064809, 0.00791, 6695993, -95429, 53299);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('08/31/2013', 'MM/DD/YYYY'), 3, 'Real Estate', 0.059807, 0.003634, 18810534, -68356, 68356);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('08/31/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.067544, -0.013222, 12233137, -742360, -173867);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('08/31/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0, 0, 0, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('08/31/2013', 'MM/DD/YYYY'), 3, 'Other', 0.036205, 0.006868, 20689898, -166678, 142260);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('09/30/2013', 'MM/DD/YYYY'), 3, 'Cash', 0.474203, 0, 376076, 231517, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('09/30/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.032369, 0.011873, 6192841, 0, 72665);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('09/30/2013', 'MM/DD/YYYY'), 3, 'Equities', 0.085753, 0.010865, 6688618, -80130, 72755);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('09/30/2013', 'MM/DD/YYYY'), 3, 'Real Estate', -0.017439, -0.076284, 17310236, -65356, -1434942);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('09/30/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.113351, 0.04156, 12664886, -76655, 508405);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('09/30/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0, 0, 0, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('09/30/2013', 'MM/DD/YYYY'), 3, 'Other', 0.019591, -0.013566, 21151453, 742225, -280669);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('10/31/2013', 'MM/DD/YYYY'), 3, 'Cash', 0.399858, -0.048081, 37456626, 37098631, -18082);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('10/31/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.046284, 0.013608, 6216879, -60232, 84270);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('10/31/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.113351, 0, 12664886, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('10/31/2013', 'MM/DD/YYYY'), 3, 'Equities', 0.085753, 0, 6688618, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('10/31/2013', 'MM/DD/YYYY'), 3, 'Real Estate', -0.060616, -0.046335, 9409513, -7098651, -802072);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('10/31/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0, 0, 0, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('10/31/2013', 'MM/DD/YYYY'), 3, 'Other', 0.024173, 0.00366, 21237767, 8900, 77413);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('11/30/2013', 'MM/DD/YYYY'), 3, 'Cash', 0.399858, 0, 925598, -36531028, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('11/30/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.040672, -0.005466, 27905068, 21722172, -33984);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('11/30/2013', 'MM/DD/YYYY'), 3, 'Equities', 0.103682, 0.009312, 6621936, -128965, 62282);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('11/30/2013', 'MM/DD/YYYY'), 3, 'Real Estate', -0.018255, 0.083629, 9385274, -811150, 786911);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('11/30/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.113218, -0.000117, 13527407, 864000, -1479);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('11/30/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0, 0, 0, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('11/30/2013', 'MM/DD/YYYY'), 3, 'Other', 0.033798, 0.007656, 21287012, -113351, 162596);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('12/31/2013', 'MM/DD/YYYY'), 4, 'Cash', 0.205033, 0.391003, 423164, -864345, 361912);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('12/31/2013', 'MM/DD/YYYY'), 4, 'Fixed Income', 0.032402, 0.002045, 27788970, -173155, 57057);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('12/31/2013', 'MM/DD/YYYY'), 4, 'Equities', 0.090938, 0.023448, 6591624, -185579, 155268);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('12/31/2013', 'MM/DD/YYYY'), 4, 'Real Estate', -0.011704, 0.015873, 9474142, -60104, 148971);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('12/31/2013', 'MM/DD/YYYY'), 4, 'Private Equity', 0.174476, 0.058318, 14909401, 593105, 788889);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('12/31/2013', 'MM/DD/YYYY'), 4, 'Alternative Investments', 0, 0, 0, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (1, to_date('12/31/2013', 'MM/DD/YYYY'), 4, 'Other', 0.068654, 0.035535, 22352161, 308719, 756431);

commit;


insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('12/31/2012', 'MM/DD/YYYY'), 0, 'Cash', 0, 0, 28719, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('12/31/2012', 'MM/DD/YYYY'), 0, 'Fixed Income', 0, 0, 623135, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('12/31/2012', 'MM/DD/YYYY'), 0, 'Equities', 0, 0, 5796178, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('12/31/2012', 'MM/DD/YYYY'), 0, 'Real Estate', 0, 0, 17171172, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('12/31/2012', 'MM/DD/YYYY'), 0, 'Private Equity', 0, 0, 15426703, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('12/31/2012', 'MM/DD/YYYY'), 0, 'Alternative Investments', 0, 0, 10228, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('12/31/2012', 'MM/DD/YYYY'), 0, 'Other', 0, 0, 13490001, 0, 0);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('01/31/2013', 'MM/DD/YYYY'), 3, 'Cash', 0.620174, 0.620174, 399079, 352548, 17811);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('01/31/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.004496, 0.004496, 625936, 0, 2801);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('01/31/2013', 'MM/DD/YYYY'), 3, 'Equities', 0.014591, 0.014591, 3429200, -2451551, 84573);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('01/31/2013', 'MM/DD/YYYY'), 3, 'Real Estate', 0.000622, 0.000622, 17181860, 0, 10688);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('01/31/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.000135, 0.000135, 15409512, -19271, 2080);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('01/31/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0.012194, 0.012194, 10353, 0, 125);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('01/31/2013', 'MM/DD/YYYY'), 3, 'Other', 0.003769, 0.003769, 13546504, 5656, 50848);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('02/28/2013', 'MM/DD/YYYY'), 3, 'Cash', -1.922432, -0.182977, 1102657, 776600, -73022);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('02/28/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.002558, -0.001929, 624729, 0, -1207);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('02/28/2013', 'MM/DD/YYYY'), 3, 'Equities', -0.021893, -0.061668, 2550000, -667730, -211470);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('02/28/2013', 'MM/DD/YYYY'), 3, 'Real Estate', -0.0002, -0.000822, 17167735, 0, -14125);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('02/28/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.000185, 0.00005, 14645553, -764735, 777);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('02/28/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0.012455, 0.000258, 10355, 0, 3);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('02/28/2013', 'MM/DD/YYYY'), 3, 'Other', 0.001872, -0.00189, 13521825, 918, -25597);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('03/31/2013', 'MM/DD/YYYY'), 3, 'Cash', -1.932162, -0.000253, 539490, -562887, -279);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('03/31/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.00063, -0.001923, 623528, 0, -1201);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('03/31/2013', 'MM/DD/YYYY'), 3, 'Equities', -0.044388, -0.051131, 2413000, -6615, -130385);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('03/31/2013', 'MM/DD/YYYY'), 3, 'Real Estate', 0.077741, 0.077957, 18506084, 0, 1338349);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('03/31/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.090041, 0.094648, 15854855, -176873, 1386174);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('03/31/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0.011558, -0.000885, 10346, 0, -9);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('03/31/2013', 'MM/DD/YYYY'), 3, 'Other', 0.079598, 0.077543, 15336546, 766200, 1048521);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('04/30/2013', 'MM/DD/YYYY'), 3, 'Cash', -1.903545, 0.001523, 509430, -30882, 822);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('04/30/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.009247, 0.008612, 610443, -18454, 5370);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('04/30/2013', 'MM/DD/YYYY'), 3, 'Equities', -0.093731, -0.118525, 2127000, 0, -286000);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('04/30/2013', 'MM/DD/YYYY'), 3, 'Real Estate', 0.077741, 0, 18506084, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('04/30/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.101303, 0.010958, 15734341, -294258, 173745);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('04/30/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0.017623, 0.005996, 10408, 0, 62);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('04/30/2013', 'MM/DD/YYYY'), 3, 'Other', 0.084379, 0.004205, 15406650, 5608, 64496);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('05/31/2013', 'MM/DD/YYYY'), 3, 'Cash', -1.91378, -0.000577, 2493379, 1984243, -294);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('05/31/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.008302, -0.000965, 609854, 0, -589);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('05/31/2013', 'MM/DD/YYYY'), 3, 'Equities', -0.148625, -0.149589, 2280000, 471175, -318175);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('05/31/2013', 'MM/DD/YYYY'), 3, 'Real Estate', 0.077741, 0, 18506084, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('05/31/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.068555, -0.032108, 13789184, -1439961, -505197);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('05/31/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0.019544, 0.001887, 10428, 0, 20);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('05/31/2013', 'MM/DD/YYYY'), 3, 'Other', 0.085175, 0.000697, 15418254, 866, 10737);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('06/30/2013', 'MM/DD/YYYY'), 3, 'Cash', -2.066951, -0.001764, 1925728, -563253, -4399);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('06/30/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.015435, 0.007288, 614299, 0, 4445);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('06/30/2013', 'MM/DD/YYYY'), 3, 'Equities', -0.209182, -0.153947, 1929000, 0, -351000);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('06/30/2013', 'MM/DD/YYYY'), 3, 'Real Estate', 0.105098, 0.025383, 18975830, 0, 469746);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('06/30/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.070258, 0.001905, 13160967, -654488, 26272);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('06/30/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0.005785, -0.013495, 10287, 0, -141);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('06/30/2013', 'MM/DD/YYYY'), 3, 'Other', 0.016501, -0.060085, 14661501, 169650, -926403);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('07/31/2013', 'MM/DD/YYYY'), 3, 'Cash', 4.77481, 0.102035, 1763992, -358228, 196492);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('07/31/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.023161, 0.007838, 619114, 0, 4815);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('07/31/2013', 'MM/DD/YYYY'), 3, 'Equities', -0.248664, -0.118633, 2679200, 979044, -228844);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('07/31/2013', 'MM/DD/YYYY'), 3, 'Real Estate', 0.105098, 0, 18975830, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('07/31/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.070258, 0, 12924191, -236776, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('07/31/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0.008138, 0.002339, 10311, 0, 24);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('07/31/2013', 'MM/DD/YYYY'), 3, 'Other', 0.056018, 0.036359, 14581594, -612988, 533082);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('08/31/2013', 'MM/DD/YYYY'), 3, 'Cash', 11.210014, 0.104771, 3772698, 1823891, 184815);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('08/31/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.024658, 0.001507, 620046, 0, 933);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('08/31/2013', 'MM/DD/YYYY'), 3, 'Equities', -0.216453, 0.069685, 2865900, 0, 186700);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('08/31/2013', 'MM/DD/YYYY'), 3, 'Real Estate', 0.105098, 0, 18975830, 0, 0);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('08/31/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.04622, -0.028693, 11604016, -949346, -370830);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('08/31/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0.011506, 0.003341, 10345, 0, 34);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('08/31/2013', 'MM/DD/YYYY'), 3, 'Other', 0.057002, 0.00091, 14427386, -167474, 13266);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('09/30/2013', 'MM/DD/YYYY'), 3, 'Cash', 9.817778, -0.010598, 2894499, -838215, -39984);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('09/30/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.039071, 0.014485, 629028, 0, 8981);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('09/30/2013', 'MM/DD/YYYY'), 3, 'Equities', -0.095028, 0.245577, 3569700, 0, 703800);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('09/30/2013', 'MM/DD/YYYY'), 3, 'Real Estate', -0.074839, -0.162824, 15886102, 0, -3089728);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('09/30/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.06478, 0.024674, 11890336, 0, 286320);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('09/30/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0.023229, 0.011589, 10465, 0, 120);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('09/30/2013', 'MM/DD/YYYY'), 3, 'Other', 0.029006, -0.026177, 14891527, 841801, -377660);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('10/31/2013', 'MM/DD/YYYY'), 3, 'Cash', 5.652674, -0.041326, 22391608, 19616728, -119619);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('10/31/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.046141, 0.007004, 614816, -18617, 4405);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('10/31/2013', 'MM/DD/YYYY'), 3, 'Equities', -0.187602, -0.150313, 2908300, -124828, -536572);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('10/31/2013', 'MM/DD/YYYY'), 3, 'Real Estate', -0.175985, -0.109328, 84656, -14064644, -1736802);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('10/31/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.062474, -0.002991, 11190387, -664380, -35569);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('10/31/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0.026948, 0.003634, 10503, 0, 38);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('10/31/2013', 'MM/DD/YYYY'), 3, 'Other', 0.030296, 0.001169, 14929228, 20296, 17405);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('11/30/2013', 'MM/DD/YYYY'), 3, 'Cash', 5.720307, 0.000087, 15418680, -6974870, 1942);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('11/30/2013', 'MM/DD/YYYY'), 3, 'Fixed Income', 0.049609, 0.003515, 616977, 0, 2161);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('11/30/2013', 'MM/DD/YYYY'), 3, 'Equities', -0.220503, -0.065571, 2717600, 0, -190700);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('11/30/2013', 'MM/DD/YYYY'), 3, 'Real Estate', -0.092056, 17.023731, 84656, -1441164, 1441164);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('11/30/2013', 'MM/DD/YYYY'), 3, 'Private Equity', 0.068004, 0.007623, 11787342, 511656, 85299);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('11/30/2013', 'MM/DD/YYYY'), 3, 'Alternative Investments', 0.028529, 0.001539, 10520, 0, 16);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('11/30/2013', 'MM/DD/YYYY'), 3, 'Other', 0.048344, 0.016308, 15265354, 92660, 243466);

insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('12/31/2013', 'MM/DD/YYYY'), 4, 'Cash', 0.125253, 0.028704, 16214784, 353527, 442577);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('12/31/2013', 'MM/DD/YYYY'), 4, 'Fixed Income', 0.056729, 0.002219, 10187, -608159, 1369);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('12/31/2013', 'MM/DD/YYYY'), 4, 'Equities', -0.290549, 0.094849, 2996814, 21451, 257763);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('12/31/2013', 'MM/DD/YYYY'), 4, 'Real Estate', -0.099168, 2.370851, 285363, 0, 200707);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('12/31/2013', 'MM/DD/YYYY'), 4, 'Private Equity', 0.127765, 0.04796, 12167069, -185596, 565323);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('12/31/2013', 'MM/DD/YYYY'), 4, 'Alternative Investments', 0.034866, 0.006161, 10584, 0, 65);
insert into v_transeval_bm (pf_id, evaldate, datetype, segment_desc, twr_std, twr_prev_date, marketvalue, flow_prev_date, profit_prev_date) values (2, to_date('12/31/2013', 'MM/DD/YYYY'), 4, 'Other', 0.136137, 0.082598, 16323506, -202735, 1260887);

commit;
