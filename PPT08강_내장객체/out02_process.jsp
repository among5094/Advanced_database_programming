<%@ page contentType = "text/html; charset=utf-8" %>
<!-- JSP 페이지의 설정: 응답 콘텐츠 타입을 HTML로 설정하고, 문자 인코딩을 UTF-8로 지정 -->

<html>
<head>
    <title>Implicit Objects</title>
    <!-- 페이지 제목 설정 -->
    <!-- out 내장 객체의 기능과 사용법 --> 
</head>
<body>
    
    <%
		// 요청 데이터의 문자 인코딩을 UTF-8로 설정
		// 클라이언트가 서버로 보낸 데이터가 올바르게 해석되도록 설정
		request.setCharacterEncoding("utf-8");
		
		// 클라이언트 요청에서 전달된 "id"와 "passwd" 파라미터 값을 가져옴
		String userid = request.getParameter("id"); // "id" 파라미터 값을 저장
		String password = request.getParameter("passwd"); // "passwd" 파라미터 값을 저장
	%>
	
	<p> 아이디: <% out.println(userid); %> 
	<!-- 클라이언트가 입력한 아이디 값을 화면에 출력 -->
	
	<p> 비밀번호: <% out.println(password); %>
	<!-- 클라이언트가 입력한 비밀번호 값을 화면에 출력 -->
	
</body>
</html>
