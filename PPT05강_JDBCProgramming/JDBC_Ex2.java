package com.dao;

import java.io.*; // 파일 입출력과 관련된 클래스
import java.sql.*; // DB 연결과 SQL 쿼리 실행 등 DB 관련 기능을 제공하는 클래스

//PPT05강: JDBC Programming (p29)
public class JDBC_Ex2 {
	
	public static void main(String[] args) {	
		
		
		Connection conn; // 자바와 JDBC 연결을 위한 객체
		Statement stmt = null; // SQL문을 실행하기 위한 객체
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver"); // 데이터베이스 연결 설정
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sampledb", "root","");// 자바와 JDBC 연결
			System.out.println("DB 연결완료");
			
			// 테이블의 모든 데이터 검색
			stmt = conn.createStatement();
			ResultSet srs = stmt.executeQuery("select * from student");
			printData(srs, "name", "id", "dept");
			
			// 조건 검색
			srs = stmt.executeQuery("select name,id,dept from student where name='이기자'");
			printData(srs, "name", "id", "dept");
			
		}catch(ClassNotFoundException e) { // 데이터베이스 연결 설정 오류
			System.out.println("JDBC 드라이버 로드 에러");
			
		}catch(SQLException e) { // 데이터베이스 관련 오류
			System.out.println("DB 연결 오류");
		}
		
	}
	
	// printData 메서드 구현
	// ResultSet 객체에서 데이터를 읽어와 지정된 컬럼의 데이터를 출력
	private static void printData(ResultSet srs, String col1, String col2, String col3) throws SQLException{
		
		while(srs.next()) {// ResultSet의 다음 행이 있을 때까지 반복
			
			if(!col1.equals("")) // 첫 번째 컬럼 값이 빈 문자열이 아닌 경우
				System.out.println(srs.getString("name")); // name 컬럼 값 출력
			
			if (!col2.equals("")) // 두 번째 컬럼 값이 빈 문자열이 아닌 경우
				System.out.println("\t|\t" + srs.getString("id")); // id 컬럼 값 출력
			
			if (!col3.equals("")) // 세 번째 컬럼 값이 빈 문자열이 아닌 경우
				System.out.println("\t|\t" + srs.getString("dept")); // dept 컬럼 값 출력
			else
				System.out.println(); // col3이 빈 문자열인 경우 줄바꿈 출력
		}
	}
	
	
	
	
} // public class JDBC_Ex2 닫기
