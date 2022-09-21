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
	<%-- 		<c:forEach items="${boardList}" var="items">
				${items.fb_seq }
				${items.fb_title }
				${items.fb_writer }
				${items.fb_createday }
			</c:forEach> --%>
	
		
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
			  <tbody>
			   
			   <c:forEach items="${boardList}" var="items">
			    <tr class="tbodyTag">
				      <td class="td_1" >${items.fb_seq }</td>
				      <td class="td_2">
					      <a href="/freeBoardView?fb_seq=${items.fb_seq }">
						      ${items.fb_title}
					      </a>		      
				       </td>
				      <td class="td_3">${items.fb_writer }</td>
				      <td class="td_4">${items.fb_createday }</td>
				      <td class="td_5">
				      	<form action="/freeBoardDelete" method="POST">
				      		<input type="hidden" value="${items.fb_seq }" name="fb_seq">
				      		<input type="submit" value="Delete">
				      	</form>
				      </td>
			    </tr>
			    </c:forEach> 
			  </tbody>
		</table>	
		<a href="/freeBoardInsert">글쓰기</a>
		
	
	</div>
	


	</section>



</body>
</html>