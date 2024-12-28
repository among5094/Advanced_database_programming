<!-- 11월 28일 목 (ppt10장): MySQL 데이터베이스 연결 -->

<%@ page import="java.sql.*" %> 
<%
	// Connection 객체 선언: 데이터베이스 연결을 위한 객체
	Connection conn = null;

	// 데이터베이스 연결 정보 설정
	String url = "jdbc:mysql://localhost:3306/JSPBookDB"; // MySQL 서버 주소 및 사용할 데이터베이스 이름
	String user = "root"; // MySQL 데이터베이스 사용자 계정 이름
	String password = "1234"; // MySQL 데이터베이스 사용자 계정 비밀번호
	
	// JDBC 드라이버 로드
	// MySQL JDBC 드라이버를 메모리에 로드하여 사용 가능하도록 설정
	Class.forName("com.mysql.jdbc.Driver");

	// 데이터베이스 연결
	// DriverManager를 통해 설정된 URL, 사용자 계정, 비밀번호를 사용하여 MySQL 데이터베이스에 연결
	conn = DriverManager.getConnection(url, user, password);

	// conn 객체를 통해 데이터베이스와의 연결이 생성됨
%>
