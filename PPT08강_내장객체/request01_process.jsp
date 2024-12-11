<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head>
	<title>Implicit Objects</title>
	<!-- 11월 21일 목 -->
</head>
<body>
	<%
		// 요청 데이터의 문자 인코딩을 UTF-8로 설정
		request.setCharacterEncoding("utf-8");
		String userid=request.getParameter("id");
		String password=request.getParameter("passwd");
	%>
	
	<p> 아이디: <%= userid %>
	<p> 비밀번호: <%= password %>
	
	<p>
		<!-- 요청의 내용 길이 (바이트 단위) -->
		요청 정보 길이: <%=request.getContentLength() %><br>
		
		<!-- 요청 방식(GET, POST 등) -->
		클라이언트 전송 방식: <%=request.getMethod() %><br>
		
		<!-- 요청 URI (요청된 URL) -->
		요청 URI: <%=request.getRequestURI() %><br>
		
		<!-- 요청을 보낸 서버의 이름 -->
		서버 이름: <%=request.getServerName() %><br>
		
		<!-- 요청을 처리하는 서버의 포트 번호 -->
		서버 포트: <%=request.getServerPort() %><br>
	</p>
</body>
</html>
