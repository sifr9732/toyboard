<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link rel="stylesheet" href="/resources/css/reset.css" />
<link rel="stylesheet" href="/resources/css/main.css" />



</head>
<body>
	<%@include file="/WEB-INF/views/includes/header.jsp"%>
	<%@include file="/WEB-INF/views/includes/navbar.jsp"%>

	<section>
	<div id="main_position">
		<h1>글쓰기</h1>
		<hr>
		<form action="freeBoardInsert" method="POST">
			<label>작성자</label>
			<input type="text" value="${user_data.ui_id}" name="fb_writer">
			<br><br>
			<label>제목</label>
			<input type="text" placeholder="제목을 입력하세요" name="fb_title">
			<br><br>
			<label>내용</label>
			<textarea placeholder="내용을 입력하세요" name="fb_content"></textarea>
			<br><br>
			<input type="submit" value="작성">
			<a href="/freeBoard">목록으로</a>
		</form>
	</div>
	


	</section>



</body>
</html>