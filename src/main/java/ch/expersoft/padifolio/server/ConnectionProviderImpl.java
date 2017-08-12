package ch.expersoft.padifolio.server;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.jvnet.hk2.annotations.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Service
public class ConnectionProviderImpl implements ConnectionProvider {

	private static Logger LOGGER = LoggerFactory.getLogger(ConnectionProviderImpl.class);

	private Connection connection;

	public ConnectionProviderImpl() {
		LOGGER.info("Init & test database connection ...");
		try {
			connection = App.dataSource.getConnection();
		} catch (SQLException e) {
			LOGGER.error("Crashed while getting connection", e);
			throw new RuntimeException(e);
		}
		ResultSet resultSet = null;
		try {
			PreparedStatement getSourceIdStatement = connection.prepareStatement("select count(*), min(marketvalue), max(marketvalue) from v_transeval_twr");
			resultSet = getSourceIdStatement.executeQuery();
			if (resultSet.next()) {
				LOGGER.info("... database connected [" + resultSet.getInt(1) + ", " + resultSet.getBigDecimal(2) + " .. " + resultSet.getBigDecimal(3) + "]");
			} else {
				LOGGER.error("... could not connect to database");
				throw new RuntimeException("Could not connect to database");
			}
		} catch (SQLException e) {
			LOGGER.error("Crashed while testing connection", e);
			throw new RuntimeException(e);
		} finally {
			try {
				resultSet.close();
			} catch (SQLException e) {
				LOGGER.error("Crashed while closing resultset", e);
				throw new RuntimeException(e);
			}
		}
	}

	public Connection getConnection() {
		return connection;
	}

}
