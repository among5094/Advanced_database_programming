<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head>
	<title>Form Processing</title>
</head>
<body>
	<!-- 페이지 제목 -->
	<h3>회원 가입</h3>
	
	<!-- 회원 가입 폼 -->
	<!-- ① form 태그 사용 -->
	<form action="form06_process.jsp" name="member" method="post">
		
		<!-- 아이디 입력 필드 -->
		<!-- ② input 태그 사용 -->
		<p> 아이디 : 
			<input type="text" name="id"> 
			<input type="button" value="아이디 중복 검사"> <!-- 아이디 중복 검사 버튼 -->
		</p>
		
		<!-- 비밀번호 입력 필드 -->
		<p> 비밀번호 : <input type="password" name="passwd"></p>
		
		<!-- 이름 입력 필드 -->
		<p> 이름 : <input type="text" name="name"></p>
		
		<!-- 연락처 입력 필드 -->
		<!-- ③ select 태그 사용 -->
		<p> 연락처 : <select name="phone1">
				<!-- 연락처의 첫 번째 부분 선택 (국번) -->
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select> 
			- <input type="text" maxlength="4" size="4" name="phone2">
			<!-- 연락처 두 번째 부분 입력 -->
			- <input type="text" maxlength="4" size="4" name="phone3">
			<!-- 연락처 세 번째 부분 입력 -->
		</p>
		
		<!-- 성별 선택 -->
		<p> 성별 : 
			<input type="radio" name="sex" value="남성" checked>남성
			<input type="radio" name="sex" value="여성">여성
			<!-- 기본값은 남성으로 설정 -->
		</p>
		
		<!-- 취미 선택 -->
		<p> 취미 : 
			독서 <input type="checkbox" name="hobby1" checked>
			<!-- 기본값으로 독서가 선택됨 -->
			운동 <input type="checkbox" name="hobby2">
			영화 <input type="checkbox" name="hobby3">
		</p>
		
		<!-- 가입하기와 다시 쓰기 버튼 -->
		<p> 
			<input type="submit" value="가입하기">
			<input type="reset" value="다시쓰기">
			<!-- reset 버튼으로 수정 -->
		</p>
		
		<!-- 추가 코멘트를 입력하는 텍스트 영역 -->
		<p> <textarea name="comment" cols="30" rows="5"></textarea></p>
	</form>
</body>
</html>
