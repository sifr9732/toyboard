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
		<h1>
			${boardList.fb_seq }
		</h1> 
		<h1>
			${boardList.fb_title }
		</h1>
		<h1>
			${boardList.fb_content }
		</h1>
		<h1>
			${boardList.fb_writer }
		</h1>
		<h1>
			${boardList.fb_createday }
		</h1>
	</div>
	


	</section>



</body>
</html>