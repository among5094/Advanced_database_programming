<%@ page contentType = "text/html; charset=utf-8" %>
<!-- 07강 JSP태그 (ppt9) -->
<html>
<head>
	<title>Scripting tag</title>
</head>
<body>

	<!-- 스크립틀릿 태그에 0~10까지 짝수 출력하기 -->
	
	
	<p> 스크립틀릿 태그에 0~10까지 짝수 출력하기 </p>
	<%
		for(int i=0; i<=10; i++){
			
			
			if(i%2==0)
				out.println(i+"<br>");
		}
	%>
</html>