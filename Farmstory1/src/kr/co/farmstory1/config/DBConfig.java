package kr.co.farmstory1.config;

import java.sql.Connection;
import java.sql.DriverManager;

import com.mysql.jdbc.Driver;

public class DBConfig {
	
	// ������
	//private static final String HOST = "jdbc:mysql://cjh.ne.kr:3306/root?useUnicode=true&characterEncoding=utf8";
	//private static final String USER = "root";
	//private static final String PASS = "1234";
	
	// ���߿�
	private static final String HOST = "jdbc:mysql://192.168.44.46:3306/cjh";
	private static final String USER = "cjh";
	private static final String PASS = "1234";
	
	public static Connection getConnection() throws Exception {
		// 1�ܰ�
		Class.forName("com.mysql.jdbc.Driver");
		
		// 2�ܰ�
		Connection conn = DriverManager.getConnection(HOST, USER, PASS);
		
		return conn;
	}
}
