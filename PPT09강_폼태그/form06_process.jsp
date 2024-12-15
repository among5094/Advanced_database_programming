<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import= "java.io.*, java.util.*" %>
<html>
<head>
	<title>Form Processing</title>
</head>
<body>
	<!-- 요청 파라미터 이름과 값을 테이블 형태로 출력 -->
	<table border="1">
		<tr>
			<th>요청 파라미터 이름</th> <!-- 요청 파라미터의 이름(키) -->
			<th>요청 파라미터 값</th> <!-- 요청 파라미터의 값 -->
		</tr>
	
	<%
		// 클라이언트에서 전송된 데이터의 인코딩 방식을 UTF-8로 설정
		// 한글이나 다국어 데이터가 깨지지 않도록 처리
		request.setCharacterEncoding("utf-8");
	
		// 모든 요청 파라미터의 이름을 Enumeration 객체로 가져옴
		// Enumeration: 파라미터 키를 순차적으로 읽어올 수 있는 객체
		Enumeration paramNames = request.getParameterNames();
		
		// 요청 파라미터가 더 있는 동안 반복
		while(paramNames.hasMoreElements()) {
			// 현재 요청 파라미터의 이름(키)을 가져옴
			String name = (String) paramNames.nextElement();
			
			// 테이블 행 생성: 파라미터 이름 출력
			out.print("<tr><td>" + name + "</td>\n");
			
			// 해당 파라미터 이름에 해당하는 값을 가져옴
			String paramValue = request.getParameter(name);
			
			// 테이블 행에 파라미터 값 출력
			out.println("<td>" + paramValue + "</td></tr>\n");
		}
	%>
	</table>
</body>
</html>
