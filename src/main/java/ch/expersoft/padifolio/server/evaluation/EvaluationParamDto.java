package ch.expersoft.padifolio.server.evaluation;

import java.math.BigDecimal;
import java.time.LocalDate;

public class EvaluationParamDto {

	public LocalDate evalDate;
	public int dateType;
	public BigDecimal twrStd;
	public BigDecimal twrSpan;
	public BigDecimal twrPrevDate;
	public BigDecimal marketValue;
	public BigDecimal flowPrevDate;
	public BigDecimal profitPrevDate;

}
