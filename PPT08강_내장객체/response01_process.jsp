<%@ page contentType = "text/html; charset=utf-8" %>
<!-- JSP 페이지의 기본 설정: 응답 콘텐츠 타입을 HTML로 설정하고, 문자 인코딩을 UTF-8로 지정 -->

<html>
<head>
	<title>Implicit Objects</title>
	<!-- 11월 21일 목 -->
</head>
<body>
	
	<%
		// 요청의 문자 인코딩을 UTF-8로 설정 (클라이언트에서 전송된 데이터를 제대로 처리하기 위해 필수)
		request.setCharacterEncoding("utf-8");
		
		// 클라이언트에서 전송된 "id"와 "passwd" 파라미터를 가져옴
		String userid = request.getParameter("id");
		String password = request.getParameter("passwd");
		
		// 조건문: id와 passwd가 "관리자"와 "1234"로 일치하는지 확인
		if(userid.equals("관리자") && password.equals("1234")){
			// 조건이 참일 경우 "response01_success.jsp"로 리다이렉트
			response.sendRedirect("response01_success.jsp");
		} else {
			// 조건이 거짓일 경우 "response01_failed.jsp"로 리다이렉트
			response.sendRedirect("response01_failed.jsp");
		}
	%>
	
</body>
</html>
