<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head>
	<title>Action Tag</title>
</head>
<body>
	<h2>forward 액션 태그</h2>
	<jsp:forward page = "forward_date.jsp"/>
	<p> ----------------------- </p>
	<p> JSP 컨테이너는 현재 JSP 페이지에서 forward 액션 태그를 만나면 <br>
	 	그 전까지 출력 버퍼에 저장되어 있던 내용을 모두 삭제하고 <br>
	 	forward 액션 태그에 설정된 페이지로 프로그램의 제어가 넘어감 <br> </p>
</body>
</html>