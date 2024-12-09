<%@ page contentType = "text/html; charset=utf-8" %>

<!--html주석입니다. -->
	<%-- JSP주석 --%>
<html>
<head>
	<title>Database SQL</title>
</head>
<body>
	
	<!-- 스크립트태그의 1)선언문태그: 전역변수 선언-->
	<%! int data=520; %> 
	
	<!-- 스크랩트태그의 2)스크립틀릿태그 -->
	<%
		out.println("Value of the variable is:" + data);
	%>
</body>
</html>