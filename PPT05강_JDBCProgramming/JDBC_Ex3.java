package com.dao;

import java.io.*; // 파일 입출력과 관련된 클래스
import java.sql.*; // DB 연결과 SQL 쿼리 실행 등 DB 관련 기능을 제공하는 클래스

// PPT05강: JDBC Programming (p32) - 데이터의 변경
public class JDBC_Ex3 {
	
	public static void main(String[] args) {	
		
		Connection conn; // Connection 객체 선언 (JDBC와 DB 간의 연결 담당)
		Statement stmt = null; // Statement 객체 선언 (SQL 문 실행 담당)
		
		try {
			// JDBC 드라이버 로드
			Class.forName("com.mysql.jdbc.Driver");
			// DB 연결 (JDBC URL, 사용자 이름, 비밀번호를 사용)
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sampledb", "root", "");
			System.out.println("DB 연결완료");
			
			// Statement 객체 생성
			stmt = conn.createStatement();
			
			// 레코드(행) 추가
			stmt.executeUpdate("insert into sudent(name,id,dept values('아무개', '0893012', '컴퓨터공학과'); "); // name, id, dept 열에 값 삽입
			System.out.println("--- 아무개 삽입 후 ---");
			printTable(stmt); // 테이블 데이터 출력
			
			// 데이터 수정
			stmt.executeUpdate("update sudent set id='0189011' where name='아무개'"); // 특정 조건(name='아무개')에 맞는 행의 id 값 수정
			System.out.println("--- 아무개 수정 후 ---");
			printTable(stmt); // 테이블 데이터 출력
			
			// 레코드 삭제
			stmt.executeUpdate("delete from sudent where name='아무개'"); // 특정 조건(name='아무개')에 맞는 행 삭제
			System.out.print("--- 아무개 삭제 후 ---");
			printTable(stmt); // 테이블 데이터 출력
			
		} catch (ClassNotFoundException e) { // JDBC 드라이버를 찾을 수 없는 경우 예외 처리
			System.out.println("JDBC 드라이버 로드 에러");
			
		} catch (SQLException e) { // SQL 관련 예외 처리
			System.out.println("DB 연결 오류");
		}
		
	}
	
	// printTable 메서드 구현
	// Statement 객체를 통해 테이블 데이터를 읽어와 출력
	private static void printTable(Statement stmt) throws SQLException {
		
		ResultSet srs = stmt.executeQuery("select * from student"); // student 테이블의 모든 행 검색
		
		while (srs.next()) { // ResultSet의 다음 행이 있을 때까지 반복
			System.out.println(srs.getString("name")); // name 컬럼 값 출력
			System.out.println("\t|\t" + srs.getString("id")); // id 컬럼 값 출력
			System.out.println("\t|\t" + srs.getString("dept")); // dept 컬럼 값 출력
		}
	}
	
} // public class JDBC_Ex3 닫기
