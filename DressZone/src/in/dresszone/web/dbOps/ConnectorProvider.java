package in.dresszone.web.dbOps;

import java.sql.Connection;

public abstract class ConnectorProvider {
	Connection conn;

	public abstract Connection getConnection();
	
	public abstract boolean terminateConnection();

}
