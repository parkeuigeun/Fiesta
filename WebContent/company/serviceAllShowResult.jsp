<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
    $(function() {
		$('button[name=reviewInsert]').click(function() {
			window.location.href="./review/insertReview.jsp";
		});//button[name=reviewInsert] click
	});//ready
    </script>
    
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    
    <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<h3 align="center">서비스</h3><p>
<table border="2" width="350" bgcolor="yellow" align="center">
	<c:forEach items="${list}" var="service">
		<tr>
			<td>${service.serviceName}</td>
			<td>${service.serviceImg}</td>
			<td>${service.serviceDesc}</td>
			<td>${service.serviceTag}</td>
		</tr>
	</c:forEach>
</table>
<a href="ServiceDelete.do?serviceCode=4">삭제</a>
<p></p>
<hr>
<div id="review">
	<div id="reviewInsert">
	<button name="reviewInsert">리뷰하기</button>
	</div>
	<div id="reviewScore">
	평점 : 
	</div>
	<hr>
	<div id="reviewContent">
	이름 평점 일시 리뷰개수<br>
	사진<br>
	리뷰 내용
	</div>
</div>
</body>
</html>