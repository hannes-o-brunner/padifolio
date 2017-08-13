package ch.expersoft.padifolio.server;

import java.io.IOException;
import java.net.URI;
import java.sql.SQLException;

import javax.ws.rs.core.UriBuilder;

import org.glassfish.jersey.jdkhttp.JdkHttpServerFactory;
import org.glassfish.jersey.server.ResourceConfig;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.sun.net.httpserver.HttpServer;

import ch.expersoft.padifolio.rest.AbstractService;
import ch.expersoft.padifolio.rest.CORSResponseFilter;

/**
 * Padifolio REST API Server
 */
@SuppressWarnings("restriction")
public class App {

	private static final Logger LOGGER = LoggerFactory.getLogger(App.class);

	private static final String REST_PROTOCOL = "http";
	private static final String REST_HOST = "0.0.0.0";
	private static final int REST_PORT = 9001;
	private static final String REST_PATH = "padifolio";

	public static void main(String[] args) throws SQLException, IOException {

		LOGGER.info("Scanning REST services ...");
		ResourceConfig rc = new ResourceConfig();
		rc.packages("ch.expersoft.padifolio.rest");
		for (Class<?> c : rc.getClasses()) {
			if (AbstractService.class.isAssignableFrom(c)) {
				LOGGER.info("... " + c.getSimpleName());
			}
		}
		rc.register(CORSResponseFilter.class); // apply CORS filter globally
		rc.register(ServiceBinder.class);

		URI baseUri = UriBuilder.fromUri(REST_PROTOCOL + "://" + REST_HOST + "/").port(REST_PORT).path(REST_PATH).build();
		LOGGER.info("Starting web server on " + baseUri);
		HttpServer server = JdkHttpServerFactory.createHttpServer(baseUri, rc);

		LOGGER.info("Adding static content handler ...");
		server.createContext("/padifolio/app", new StaticContentHandler());
		server.createContext("/padifolio/lib", new StaticContentHandler());

		LOGGER.info("Happily serving everafter ...");

	}

}
