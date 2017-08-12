package ch.expersoft.padifolio.server.portfolio;

import java.util.List;

import org.jvnet.hk2.annotations.Contract;

@Contract
public interface PortfolioApi {

	List<PortfolioDto> getPortfolios();

	PortfolioDto getPortfolio(int portfolioId);

}
