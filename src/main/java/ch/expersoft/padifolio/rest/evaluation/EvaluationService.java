package ch.expersoft.padifolio.rest.evaluation;

import javax.inject.Inject;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import ch.expersoft.padifolio.rest.AbstractService;
import ch.expersoft.padifolio.server.evaluation.EvaluationApi;
import ch.expersoft.padifolio.server.evaluation.EvaluationDto;

@Path("/evaluations")
public class EvaluationService extends AbstractService {

	private static Logger LOGGER = LoggerFactory.getLogger(EvaluationService.class);

	@Inject
	private EvaluationApi api;

	@GET
	@Path("/{portfolioId}/{refCurrency}/{fromDate}/{toDate}")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public EvaluationDto getEvaluation(@PathParam("portfolioId") int portfolioId, @PathParam("refCurrency") String refCurrency, @PathParam("fromDate") String fromDate,
			@PathParam("toDate") String toDate) {
		try {
			return api.getEvaluation(portfolioId, refCurrency, api.toDate(fromDate), api.toDate(toDate));
		} catch (Exception x) {
			LOGGER.error("getEvaluation crashed", x);
			throw (x);
		}
	}

}
