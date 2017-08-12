package ch.expersoft.padifolio.rest.portfolio;

import java.util.List;

import javax.inject.Inject;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.NotFoundException;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import ch.expersoft.padifolio.rest.AbstractService;
import ch.expersoft.padifolio.server.portfolio.PortfolioApi;
import ch.expersoft.padifolio.server.portfolio.PortfolioDto;

@Path("/portfolios")
public class PortfolioService extends AbstractService {

	private static Logger LOGGER = LoggerFactory.getLogger(PortfolioService.class);

	@Inject
	private PortfolioApi api;

	@GET
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public List<PortfolioDto> getPortfolios() {
		try {
			return api.getPortfolios();
		} catch (Exception x) {
			LOGGER.error("getPortfolios crashed", x);
			throw (x);
		}
	}

	@GET
	@Path("/{portfolioId}")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public PortfolioDto getPortfolio(@PathParam("portfolioId") int portfolioId) {
		try {
			PortfolioDto pf = api.getPortfolio(portfolioId);
			if (pf == null) {
				throw new NotFoundException();
			}
			return pf;
		} catch (Exception x) {
			LOGGER.error("getPortfolio crashed", x);
			throw (x);
		}
	}

}
