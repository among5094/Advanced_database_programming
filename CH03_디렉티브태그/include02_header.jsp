<%@ page contentType = "text/html; charset=utf-8" %>

<!-- 스크립트 태그 - 1)선언문 태그: 자바변수와 메소드 정의 -->
<%!
	int pageCount = 0;
	void addCount(){
		pageCount++;
	}
%>

<!-- 스크립트 태그 - 2)스크립틀릿 태그: 자바 로직 코드 작성 -->
<% addCount(); %>

<!-- 스크립트 태그 - 3)표현문 태그: 자바 로직 코드 작성 -->
<p>이 사이트 방문은 <%=pageCount %>번째 입니다.</p>