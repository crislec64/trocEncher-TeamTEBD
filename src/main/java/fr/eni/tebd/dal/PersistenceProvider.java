package fr.eni.tebd.dal;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


public class PersistenceProvider {
	
	private static DataSource ds;
	
	static {
		Context context;
		try {
			context = new InitialContext();
			PersistenceProvider.ds = (DataSource)context.lookup("java:comp/env/jdbc/pool_cnx");
		}
		catch (NamingException e){
			e.printStackTrace();
		}
	
	}
	
	public static Connection getConnection() throws SQLException {
		return ds.getConnection();
	}
	
}