<%@ page import = "java.util.Enumeration" %>
<!-- java.util.Enumeration 클래스를 가져옴: 요청 헤더의 이름들을 순차적으로 접근하기 위해 사용 -->

<html>
<head>
    <title>Implicit Objects</title>
    <!-- 페이지 제목 설정 -->
</head>
<body>
	<%
		// request 객체에서 모든 요청 헤더의 이름을 가져옴
		Enumeration en = request.getHeaderNames();
		
		// 가져온 요청 헤더 이름들을 순차적으로 탐색
		while(en.hasMoreElements()){
			String headerName = (String) en.nextElement();// 다음 요청 헤더의 이름을 가져옴
			String headerValue = request.getHeader(headerName);// 요청 헤더 이름에 해당하는 값을 가져옴
	%>
	
	<!-- JSP 표현식으로 요청 헤더 이름과 값을 출력 -->
	<%= headerName %> : <%= headerValue %> <br>
	<%
		}
	%>
</body>
</html>
