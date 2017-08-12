package ch.expersoft.padifolio.server;

import javax.ws.rs.core.Feature;
import javax.ws.rs.core.FeatureContext;

import org.glassfish.hk2.api.ServiceLocator;
import org.glassfish.hk2.utilities.ServiceLocatorUtilities;
import org.glassfish.jersey.ServiceLocatorProvider;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import ch.expersoft.padifolio.server.evaluation.impl.EvaluationApiImpl;
import ch.expersoft.padifolio.server.portfolio.impl.PortfolioApiImpl;

public class ServiceBinder implements Feature {

	private static Logger LOGGER = LoggerFactory.getLogger(ServiceBinder.class);

	@Override
	public boolean configure(FeatureContext context) {
		LOGGER.info("Binding HK2 services ...");
		ServiceLocator locator = ServiceLocatorProvider.getServiceLocator(context);
		ServiceLocatorUtilities.addClasses(locator, PortfolioApiImpl.class, EvaluationApiImpl.class, ConnectionProviderImpl.class);
		return true;
	}

}
