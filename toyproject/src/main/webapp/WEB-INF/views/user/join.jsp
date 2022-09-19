<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/reset.css" />
<link rel="stylesheet" href="/resources/css/user/join.css" />
</head>
<body>
	<%@include file="/WEB-INF/views/includes/header.jsp"%>
	<%@include file="/WEB-INF/views/includes/navbar.jsp"%>

	<section>
		<div id="div_position">	
			<h1 id="join_title">회원가입</h1>
			
			<form method="POST" action="#">
				<label>이름</label>
				<input type="text" id="user_name" placeholder="이름을 입력하세요.">
				<label>아이디</label>
				<input type="text" id="user_id" placeholder="아이디을 입력하세요.">
				<label>비밀번호</label>
				<input type="password" id="user_pwd" placeholder="비밀번호를 입력하세요.">
				<label>비밀번호 확인</label>
				<input type="password" id="user_pwdChk" placeholder="비밀번호를 입력하세요.">
				<label>주소</label>
				<input type="text" id="user_addr" placeholder="주소를 입력하세요.">
				<label>이메일</label>
				<input type="email" id="user_eamil" placeholder="이메이을 입력하세요.">
				<input type="submit"  value="회원가입"/>
			</form>
			
			
		</div>
	</section>
</body>
</html>