package com.mycompany.dbutil;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	public static Connection dbConn() throws ClassNotFoundException, SQLException {
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/productdb", "root", "");
		Class.forName("com.mysql.cj.jdbc.Driver");
		return con;
	}
}
