package ch.expersoft.padifolio.server.evaluation.impl;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.jvnet.hk2.annotations.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import ch.expersoft.padifolio.server.ConnectionProvider;
import ch.expersoft.padifolio.server.evaluation.EvaluationApi;
import ch.expersoft.padifolio.server.evaluation.EvaluationDto;

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
	private static final String CALC_SEL_STMT =
		"select  to_char(evaldate, 'yyyy-mm-dd')\n" +
		"       ,datetype\n" +
		"       ,twr_std\n" +
		"       ,twr_span\n" +
		"       ,twr_prev_date\n" +
		"       ,marketvalue\n" +
		"       ,flow_prev_date\n" +
		"       ,profit_prev_date\n" +
		"from    v_transeval_twr\n" +
		"where   datetype in (0, 3, 4)\n" +
		"  and   evaldate between to_date(?/*1*/, 'yyyy-mm-dd') and to_date(?/*2*/, 'yyyy-mm-dd')\n" +
		"order by 1, 2";
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
	public List<EvaluationDto> getEvaluation(int portfolioId, String refCurrency, LocalDate fromDate, LocalDate toDate) {

		List<EvaluationDto> evalList = new ArrayList<EvaluationDto>();

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
			PreparedStatement selStmt = cp.getConnection().prepareStatement(CALC_SEL_STMT);
			selStmt.setString(1, fromDate(fromDate));
			selStmt.setString(2, fromDate(toDate));
			resultSet = selStmt.executeQuery();
			while (resultSet.next()) {
				EvaluationDto eval = new EvaluationDto();
				eval.evalDate = resultSet.getString(1);
				eval.dateType = resultSet.getInt(2);
				eval.twrStd = resultSet.getBigDecimal(3);
				eval.twrSpan = resultSet.getBigDecimal(4);
				eval.twrPrevDate = resultSet.getBigDecimal(5);
				eval.marketValue = resultSet.getBigDecimal(6);
				eval.flowPrevDate = resultSet.getBigDecimal(7);
				eval.profitPrevDate = resultSet.getBigDecimal(8);
				evalList.add(eval);
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

		return evalList;

	}

}
