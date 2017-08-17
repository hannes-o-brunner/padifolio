package ch.expersoft.padifolio.server.evaluation.impl;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import javax.inject.Inject;

import org.jvnet.hk2.annotations.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import ch.expersoft.padifolio.server.ConnectionProvider;
import ch.expersoft.padifolio.server.evaluation.EvaluationApi;
import ch.expersoft.padifolio.server.evaluation.EvaluationDto;
import ch.expersoft.padifolio.server.evaluation.EvaluationPeriodDto;

@Service
public class EvaluationApiImpl implements EvaluationApi {

	private static Logger LOGGER = LoggerFactory.getLogger(EvaluationApiImpl.class);

	// @formatter:off
	private static final String CALC_EXEC_STMT =
		"begin\n" +
		"  transeval_svc.calc_portfolio_performance(\n" +
		"    i_portf_id => ?/*1*/,\n" +
		"    i_ref_curry => ?/*2*/,\n" +
		"    i_from_date => to_date(?/*3*/, 'yyyy-mm-dd'),\n" +
		"    i_to_date => to_date(?/*4*/, 'yyyy-mm-dd')\n" +
		"  );\n" +
		"end;";
	private static final String PERIOD_SEL_STMT =
		"select *\n" +
		"from (\n" +
		"select  to_char(evaldate, 'yyyy-mm-dd')\n" +
		"       ,null       segment_desc\n" +
		"       ,datetype\n" +
		"       ,twr_std\n" +
		"       ,twr_prev_date\n" +
		"       ,marketvalue\n" +
		"       ,flow_prev_date\n" +
		"       ,profit_prev_date\n" +
		"from    v_transeval_twr\n" +
		"where   pf_id = ?/*1*/\n" +
		"  and   evaldate between to_date(?/*2*/, 'yyyy-mm-dd') and to_date(?/*3*/, 'yyyy-mm-dd')\n" +
		"  and   datetype in (0, 3, 4)\n" +
		"union all\n" +
		"select  to_char(evaldate, 'yyyy-mm-dd')\n" +
		"       ,segment_desc\n" +
		"       ,datetype\n" +
		"       ,twr_std\n" +
		"       ,twr_prev_date\n" +
		"       ,marketvalue\n" +
		"       ,flow_prev_date\n" +
		"       ,profit_prev_date\n" +
		"from    v_transeval_bm\n" +
		"where   pf_id = ?/*4*/\n" +
		"  and   evaldate between to_date(?/*5*/, 'yyyy-mm-dd') and to_date(?/*6*/, 'yyyy-mm-dd')\n" +
		"  and   datetype in (0, 3, 4)\n" +
		")\n" +
		"order by 1, 2 nulls first";
	// @formatter:on

	private static final DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

	@Inject
	private ConnectionProvider cp;

	@Override
	public String fromDate(LocalDate date) {
		return date.format(dateFormatter);
	}

	@Override
	public LocalDate toDate(String date) {
		return LocalDate.parse(date, dateFormatter);
	}

	@Override
	public EvaluationDto getEvaluation(int portfolioId, String refCurrency, LocalDate fromDate, LocalDate toDate) {

		EvaluationDto eval = new EvaluationDto();
		eval.portfolioId = portfolioId;
		eval.refCurrency = refCurrency;
		eval.fromDate = fromDate(fromDate);
		eval.toDate = fromDate(toDate);
		eval.periods = new ArrayList<EvaluationPeriodDto>();

		try {
			CallableStatement callStmt = cp.getConnection().prepareCall(CALC_EXEC_STMT);
			callStmt.setInt(1, portfolioId);
			callStmt.setString(2, refCurrency);
			callStmt.setString(3, fromDate(fromDate));
			callStmt.setString(4, fromDate(toDate));
			callStmt.execute();
		} catch (SQLException e) {
			LOGGER.error("Crashed on Calculation", e);
			throw new RuntimeException(e);
		}

		ResultSet resultSet = null;
		try {
			PreparedStatement selStmt = cp.getConnection().prepareStatement(PERIOD_SEL_STMT);
			selStmt.setInt(1, portfolioId);
			selStmt.setString(2, fromDate(fromDate));
			selStmt.setString(3, fromDate(toDate));
			selStmt.setInt(4, portfolioId);
			selStmt.setString(5, fromDate(fromDate));
			selStmt.setString(6, fromDate(toDate));
			resultSet = selStmt.executeQuery();
			while (resultSet.next()) {
				EvaluationPeriodDto period = new EvaluationPeriodDto();
				period.evalDate = resultSet.getString(1);
				period.segment = resultSet.getString(2);
				period.dateType = resultSet.getInt(3);
				period.twrStd = resultSet.getBigDecimal(4);
				period.twrPrevDate = resultSet.getBigDecimal(5);
				period.marketValue = resultSet.getBigDecimal(6);
				period.flowPrevDate = resultSet.getBigDecimal(7);
				period.profitPrevDate = resultSet.getBigDecimal(8);
				eval.periods.add(period);
			}
		} catch (SQLException e) {
			LOGGER.error("Crashed on SQL", e);
			throw new RuntimeException(e);
		} finally {
			try {
				resultSet.close();
			} catch (SQLException e) {
				LOGGER.error("Crashed while closing resultset", e);
				throw new RuntimeException(e);
			}
		}

		return eval;

	}

}
