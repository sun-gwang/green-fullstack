package com.myshop.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBHelper {
	
	// DB정보
	private final String HOST = "jdbc:mysql://127.0.0.1:3306/shop";
	private final String USER = "kc5353";
	private final String PASS = "abcd1234";
		
	// DB 자원
	protected Connection           conn = null;
	protected Statement            stmt = null;
	protected PreparedStatement    psmt = null;
	protected PreparedStatement psmtEtc = null;
	protected ResultSet              rs = null;
		
	protected Connection getConnection() throws ClassNotFoundException ,SQLException {
			
	Class.forName("com.mysql.cj.jdbc.Driver");
	return DriverManager.getConnection(HOST, USER, PASS);
		}
		
	protected void Close() throws SQLException {
			
			if(rs!=null) {
				rs.close();
			}
			
			if(stmt!=null) {
				stmt.close();
			}
			
			if(psmt!=null) {
				psmt.close();
			}
			
			if(psmtEtc!=null) {
				psmt.close();
			}
			
			if(conn!=null) {
				conn.close();
			}
			
		}

}
