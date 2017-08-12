package ch.expersoft.padifolio.server;

import java.sql.Connection;

import org.jvnet.hk2.annotations.Contract;

@Contract
public interface ConnectionProvider {

	Connection getConnection();

}
