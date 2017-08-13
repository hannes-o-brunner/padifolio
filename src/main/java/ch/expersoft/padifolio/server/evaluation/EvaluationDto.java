package ch.expersoft.padifolio.server.evaluation;

import java.util.List;

public class EvaluationDto {

	public int portfolioId;
	public String refCurrency;
	public String fromDate; // already in JSON format yyyy-MM-dd
	public String toDate; // already in JSON format yyyy-MM-dd

	public List<EvaluationPeriodDto> periods;

}
