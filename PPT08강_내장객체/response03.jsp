<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head>
	<title>Implicit Objects</title>
</head>
<body>

		
		<%
			// 클라이언트에게 HTTP 404 오류 코드를 반환
			// 첫 번째 인수: HTTP 상태 코드 (404 - Not Found)
			// 두 번째 인수: 오류와 관련된 메시지 ("요청 페이지를 찾을 수 없습니다.")
			response.sendError(404, "요청 페이지를 찾을 수 없습니다.");
		%>
		
</body>
</html>