<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head>
	<title>Implicit Objects</title>
	<!-- 11월 21일 목 -->
</head>
<body>
	<!-- 사용자 입력을 서버로 전송하기 위한 HTML 폼 -->
	<form action="response01_process.jsp" method="post">
		<p> 아이디: <input type="text" name="id">
		<p> 비밀번호: <input type="text" name="passwd">
		<p> <input type="submit" name="전송">
	</form>
</body>
</html>