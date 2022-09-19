<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/resources/css/reset.css" />
<link rel="stylesheet" href="/resources/css/user/login.css" />
</head>
<body>
	<%@include file="/WEB-INF/views/includes/header.jsp"%>
	<%@include file="/WEB-INF/views/includes/navbar.jsp"%>
	
	<section>
		<div id="div_position">
			<form method="POST" action="/login">
				<label>아아디</label>
				<input type="text" name="ui_id" placeholder="아이디를 입력하시오">
				<label>비밀번호</label>
				<input type="password" name="ui_pwd" placeholder="비밀번호를 입력하시오">
				
				<input type="submit" value="로그인" />			
			</form>
		</div>


	</section>
</body>
</html>