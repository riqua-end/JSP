package com.ezen.jspCh11.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBManager {
	
	public static Connection getConnection() {
		Connection conn = null;
		//DBCP를 사용시 DAtaSource객체를 얻어 Connection 객체 얻어냄
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			//jdbc/Oracle11g이란 이름을 객체를 찾아서 DateSource가 받는다.
			DataSource ds = (DataSource) envContext.lookup("jdbc/Oracle11g");
			//ds가 생성되었으므로 Connection을 구한다.
			conn = ds.getConnection();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	//select를 수행한 후 리소스 해제를 위한 메소드 (finally)
	public static void close(Connection conn,Statement stmt,ResultSet rs) {
		try {
			rs.close();
			stmt.close();
			conn.close();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//DML (insert,update,delete)을 수행한 후 리소스 해제를 위한 메소드
	public static void close(Connection conn,Statement stmt) {
		try {
			stmt.close();
			conn.close();
		}catch ( Exception e) {
			e.printStackTrace();
		}
	}
}
