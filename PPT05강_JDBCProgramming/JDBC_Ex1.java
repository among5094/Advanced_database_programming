package com.dao;
import java.sql.*;

// PPT05강: JDBC Programming 
public class JDBC_Ex1 {
	
	public static void main(String[] args) {
		
		try {
			// 데이터베이스 연결 설정
			Class.forName("com.mysql.jdbc.Driver"); // MySQL 서버의 JDBC 드라이버 로드
			
			// 자바와 JDBC 연결
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sampledb", "root","");
			System.out.println("DB 연결완료");
			
		}catch(ClassNotFoundException e) { // 데이터베이스 연결 설정 오류
			System.out.println("JDBC 드라이버 로드 에러");
			
		}catch(SQLException e) { // 데이터베이스 관련 오류
			System.out.println("DB 연결 오류");
		}
		
	}
}
