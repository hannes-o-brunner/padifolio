package ch.expersoft.padifolio.server.evaluation;

import java.time.LocalDate;

import org.jvnet.hk2.annotations.Contract;

@Contract
public interface EvaluationApi {

	String fromDate(LocalDate date);

	LocalDate toDate(String date);

	EvaluationDto getEvaluation(int portfolioId, String refCurrency, LocalDate from, LocalDate to);

}
