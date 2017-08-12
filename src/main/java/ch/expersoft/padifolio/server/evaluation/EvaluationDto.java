package ch.expersoft.padifolio.server.evaluation;

import java.math.BigDecimal;

public class EvaluationDto {

	public String evalDate; // already in JSON format yyyy-MM-dd
	public int dateType;
	public BigDecimal twrStd;
	public BigDecimal twrSpan;
	public BigDecimal twrPrevDate;
	public BigDecimal marketValue;
	public BigDecimal flowPrevDate;
	public BigDecimal profitPrevDate;

}
