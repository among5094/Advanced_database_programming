<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head>
	<title>Form Processing</title>
	<!-- 11월 21일 목 - 일단 form01을 보고 작성해보기 (스스로) -->
</head>
<body>
	<%
		// 클라이언트에서 전송된 데이터의 인코딩 방식을 UTF-8로 설정
		request.setCharacterEncoding("utf-8");
		
		// 폼 데이터를 가져와서 변수에 저장
		String user_id = request.getParameter("id"); // 입력받은 아이디
		String user_password = request.getParameter("passwd"); // 입력받은 비밀번호
		String user_name = request.getParameter("name"); // 입력받은 이름
		
		// 연락처 데이터를 정수형으로 가져오기
		// 잘못된 메서드 사용: getIntHeader는 HTTP 헤더에서 값을 가져오므로 폼 데이터에는 부적합
		// 이를 getParameter로 수정해야 올바르게 동작
		int user_phone1 = request.getIntHeader("phone1"); // 연락처 첫 번째 값
		int user_phone2 = request.getIntHeader("phone2"); // 연락처 두 번째 값
		int user_phone3 = request.getIntHeader("phone3"); // 연락처 세 번째 값
		
		String user_sex = request.getParameter("sex"); // 입력받은 성별
		String hobby1 = request.getParameter("hobby1"); // 체크된 취미1
		String hobby2 = request.getParameter("hobby2"); // 체크된 취미2
		String hobby3 = request.getParameter("hobby3"); // 체크된 취미3
	%>
	
	<!-- 사용자 입력 데이터를 출력 -->
	<p> 아이디 : <%= user_id %> <!-- 아이디 출력 -->
	<p> 비밀번호 : <%= user_password %> <!-- 비밀번호 출력 -->
	<p> 이름 : <%= user_name %> <!-- 이름 출력 -->
	<p> 핸드폰 번호 : <%= user_phone1 %>-<%= user_phone2 %>-<%= user_phone3 %> <!-- 연락처 출력 -->
	<p> 성별 : <%= user_sex %> <!-- 성별 출력 -->
	<p> 취미1 : <%= hobby1 %> <!-- 취미1 출력 -->
	<p> 취미2 : <%= hobby2 %> <!-- 취미2 출력 -->
	<p> 취미3 : <%= hobby3 %> <!-- 취미3 출력 -->
</body>
</html>
