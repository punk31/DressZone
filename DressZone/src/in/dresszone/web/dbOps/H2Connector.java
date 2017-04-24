package in.dresszone.web.dbOps;

import java.sql.Connection;

public class H2Connector extends ConnectorProvider {

	@Override
	public Connection getConnection() {

		return conn;
	}

	@Override
	public boolean terminateConnection() {
		return false;
	}

}
