package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static Connection conn;
	
	public static Connection getConn() {
		
		try {
			
			//step:1 for connection - load the driver class
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//step:2 create a connection
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dpp", "root", "root");
			
		} catch (Exception e) {
			e.printStackTrace();
			//TODO: handle exception
		}
		
		return conn;
	}
	
}
