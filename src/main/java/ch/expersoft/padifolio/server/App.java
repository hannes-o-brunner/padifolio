package ch.expersoft.padifolio.server;

import java.io.IOException;
import java.net.URI;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.sql.DataSource;
import javax.ws.rs.core.UriBuilder;

import org.glassfish.jersey.jdkhttp.JdkHttpServerFactory;
import org.glassfish.jersey.server.ResourceConfig;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.sun.net.httpserver.HttpServer;

import ch.expersoft.padifolio.rest.AbstractService;
import ch.expersoft.padifolio.rest.CORSResponseFilter;
import oracle.jdbc.OracleDriver;
import oracle.jdbc.pool.OracleConnectionPoolDataSource;

/**
 * Padifolio REST API Server
 */
@SuppressWarnings("restriction")
public class App {

	public static final String JDBC_HOST = "192.168.99.100";
	public static final String JDBC_PORT = "49161";
	public static final String JDBC_SID = "xe";
	public static final String JDBC_URL = "jdbc:oracle:thin:@" + JDBC_HOST + ":" + JDBC_PORT + ":" + JDBC_SID;
	public static final String JDBC_USER = "transeval";
	private static final String JDBC_PWD = "padifolio";

	private static final String REST_PROTOCOL = "http";
	private static final String REST_HOST = "0.0.0.0";
	private static final int REST_PORT = 9001;
	private static final String REST_PATH = "padifolio";

	private static final Logger LOGGER = LoggerFactory.getLogger(App.class);

	static DataSource dataSource;

	public static void main(String[] args) throws SQLException, IOException {

		LOGGER.info("Initialising JDBC ...");
		dataSource = initDataSource(JDBC_URL, JDBC_USER, JDBC_PWD);

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
		rc.property("com.sun.jersey.api.json.POJOMappingFeature", true);

		URI baseUri = UriBuilder.fromUri(REST_PROTOCOL + "://" + REST_HOST + "/").port(REST_PORT).path(REST_PATH).build();
		LOGGER.info("Starting web server on " + baseUri);
		HttpServer server = JdkHttpServerFactory.createHttpServer(baseUri, rc);

		LOGGER.info("Adding static content handler ...");
		server.createContext("/padifolio/test", new StaticContentHandler());
		server.createContext("/padifolio/app", new StaticContentHandler());
		server.createContext("/padifolio/macc", new StaticContentHandler());

		LOGGER.info("Happily serving everafter ...");

	}

	private static DataSource initDataSource(String jdbcUrl, String user, String pwd) throws SQLException {
		DriverManager.registerDriver(new OracleDriver());
		OracleConnectionPoolDataSource dataSource = new OracleConnectionPoolDataSource();
		dataSource.setURL(jdbcUrl);
		dataSource.setUser(user);
		dataSource.setPassword(pwd);
		return dataSource;
	}

}
