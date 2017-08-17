package ch.expersoft.padifolio.server.evaluation;

import java.math.BigDecimal;

public class EvaluationPeriodDto {

	public String evalDate; // already in JSON format yyyy-MM-dd
	public int dateType;
	public String segment;
	public BigDecimal twrStd;
	public BigDecimal twrPrevDate;
	public BigDecimal marketValue;
	public BigDecimal flowPrevDate;
	public BigDecimal profitPrevDate;

}
