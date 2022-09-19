<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="/resources/css/reset.css" />
<link rel="stylesheet" href="/resources/css/includes/header.css" />

<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="/resources/js/header.js"></script>

</head>
<body>


	<section>
		<c:choose>
			<c:when test="${empty user_data.ui_id}">
				<div id="main_header">
					<a href="/" id="h_home">ToyBlog</a>
					<a href="/login" id="h_login">Sign in</a>
					<a href="/join" id="h_join">Sign up</a>
				</div>
			</c:when>
			<c:otherwise>	
				<div id="main_header">
					<a href="/" id="h_home">ToyBlog</a>
					<a href="#" id="h_login">${user_data.ui_id }</a>
					<a href="/logout" onclick="logout()" id="h_join">Logout</a>
				</div>
			</c:otherwise>
		</c:choose>
	</section>
</body>
</html>