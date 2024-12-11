<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head>
	<title>Implicit Objects</title>
	<!-- 11월 21일 목 -->
</head>
<body>
	
	<p> 이 페이지는 5초마다 새로고침 됩니다.
		
		<%
		// response 객체의 setIntHeader 메서드를 사용하여 
		// HTTP 응답 헤더에 "Refresh"를 설정. 5초마다 페이지를 새로고침하도록 설정.
		// 첫 번째 매개변수는 헤더의 이름, 두 번째 매개변수는 새로고침할 시간(초 단위)
			response.setIntHeader("Refresh", 5);
		%>
		
	<!-- 현재 시간을 출력하는 코드 -->
	<p> <%=(new java.util.Date()) %>
</body>
</html>