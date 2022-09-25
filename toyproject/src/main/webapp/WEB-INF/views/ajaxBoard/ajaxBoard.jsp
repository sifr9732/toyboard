<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>

<link rel="stylesheet" href="/resources/css/reset.css" />
<link rel="stylesheet" href="/resources/css/main.css" />

<!-- <script src="/resources/js/ajaxBoard.js"></script> -->


<script>
$(function(){
	$.ajax({
		url:"/ajaxBoard" ,
		type:"POST",
		dataType: "json",
		success:function(data) {
			alert("dd");
			var list ="";
				
		}
	})
})
</script>
</head>
<body>
	<%@include file="/WEB-INF/views/includes/header.jsp"%>
	<%@include file="/WEB-INF/views/includes/navbar.jsp"%>

	<section>
	<div id="main_position">
		<h3>글쓰기</h3>
		<hr>
			<label>작성자</label>
			<input type="text" value="${user_data.ui_id}">
			<br>
			
			<label>제목</label>
			<input type="text" value="${user_data.ui_id}">
			<br>
			
			<label>내용</label>
			<br>
			<textarea rows="5" cols="20"></textarea>
			<br>
			<button onclick="AjaxSave()">작성</button>
		<hr>
		
		<table class="table">
			  <thead class="table-dark ">
			   <tr class="theadTag">
			      <td class="td_1">No</td>
			      <td class="td_2">title</td>
			      <td class="td_3">writer</td>
			      <td class="td_4">createDay</td>
			      <td class="td_5">delete</td>
			    </tr>
			  </thead>
			  <tbody id="ajax_list">
			   	
					
			  </tbody>
		</table>	
		<a href="/freeBoardInsert">글쓰기</a>
		
	
	</div>
	


	</section>



</body>
</html>