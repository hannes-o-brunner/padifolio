package ch.expersoft.padifolio.server;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.jvnet.hk2.annotations.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import oracle.jdbc.OracleDriver;
import oracle.jdbc.pool.OracleConnectionPoolDataSource;

@Service
public class ConnectionProviderImpl implements ConnectionProvider {

	private static Logger LOGGER = LoggerFactory.getLogger(ConnectionProviderImpl.class);

	private static final String JDBC_HOST = "192.168.99.100";
	private static final String JDBC_PORT = "49161";
	private static final String JDBC_SID = "xe";
	private static final String JDBC_URL = "jdbc:oracle:thin:@" + JDBC_HOST + ":" + JDBC_PORT + ":" + JDBC_SID;

	private static final String DB_USER = "transeval";
	private static final String DB_PWD = "padifolio";

	private DataSource dataSource;
	private Connection connection;

	public ConnectionProviderImpl() throws SQLException {

		LOGGER.info("Initialising JDBC ...");
		dataSource = initDataSource(JDBC_URL, DB_USER, DB_PWD);

		LOGGER.info("... init database connection");
		try {
			connection = dataSource.getConnection();
		} catch (SQLException e) {
			LOGGER.error("Crashed while getting connection", e);
			throw new RuntimeException(e);
		}

		LOGGER.info("... test database connection");
		ResultSet resultSet = null;
		try {
			PreparedStatement getSourceIdStatement = connection.prepareStatement("select count(*), min(marketvalue), max(marketvalue) from v_transeval_twr");
			resultSet = getSourceIdStatement.executeQuery();
			if (resultSet.next()) {
				LOGGER.info("... database connected [" + resultSet.getInt(1) + ", " + resultSet.getBigDecimal(2) + " .. " + resultSet.getBigDecimal(3) + "]");
			} else {
				LOGGER.error("... CRASHED while connecting to database");
				throw new RuntimeException("Could not connect to database");
			}
		} catch (SQLException e) {
			LOGGER.error("... CRASHED while testing connection", e);
			throw new RuntimeException(e);
		} finally {
			try {
				resultSet.close();
			} catch (SQLException e) {
				LOGGER.error("... CRASHED while closing resultset", e);
				throw new RuntimeException(e);
			}
		}
	}

	public Connection getConnection() {
		return connection;
	}

	private static DataSource initDataSource(String jdbcUrl, String dbUser, String dbPwd) throws SQLException {
		DriverManager.registerDriver(new OracleDriver());
		OracleConnectionPoolDataSource dataSource = new OracleConnectionPoolDataSource();
		dataSource.setURL(jdbcUrl);
		dataSource.setUser(dbUser);
		dataSource.setPassword(dbPwd);
		return dataSource;
	}

}
