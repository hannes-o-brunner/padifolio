package ch.expersoft.padifolio.server.portfolio.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.jvnet.hk2.annotations.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import ch.expersoft.padifolio.server.ConnectionProvider;
import ch.expersoft.padifolio.server.portfolio.PortfolioApi;
import ch.expersoft.padifolio.server.portfolio.PortfolioDto;

@Service
public class PortfolioApiImpl implements PortfolioApi {

	private static Logger LOGGER = LoggerFactory.getLogger(PortfolioApiImpl.class);

	@Inject
	private ConnectionProvider cp;

	private Map<Integer, PortfolioDto> portfolioById = new HashMap<Integer, PortfolioDto>();

	public List<PortfolioDto> getPortfolios() {

		if (!portfolioById.isEmpty()) {
			return new ArrayList<PortfolioDto>(portfolioById.values());
		}

		List<PortfolioDto> pfList = new ArrayList<PortfolioDto>();

		ResultSet resultSet = null;
		try {
			PreparedStatement stmt = cp.getConnection().prepareStatement("select id, name, zip, city from table (cast (transeval_svc.portfolio_list as t_portfolio_tab))");
			resultSet = stmt.executeQuery();
			while (resultSet.next()) {
				PortfolioDto pf = new PortfolioDto();
				pf.id = resultSet.getInt(1);
				pf.name = resultSet.getString(2);
				pf.zip = resultSet.getString(3);
				pf.city = resultSet.getString(4);
				portfolioById.put(pf.id, pf);
				pfList.add(pf);
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

		return pfList;

	}

	public PortfolioDto getPortfolio(int portfolioId) {
		if (portfolioById.isEmpty()) {
			getPortfolios();
		}
		return portfolioById.get(portfolioId);
	}

}
