<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="resoureces/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(function() {
		$('#add').click(function() {
			var nameval= $('#pname').val()
			var priceval= $('#price').val()
			var imgval= $('#img').val()
			$.ajax({
				url: "productadd.do",
				data: {
					pname: nameval,
					price: priceval,
					img: imgval
				},
				success: function() {
					location.reload();
				}
			})
		})
	})
</script>
<title>Insert title here</title>
</head>
<body>
	<h1> 상품 리스트입니다!</h1>
	<hr>
	<h2>상품 등록하기</h2>
	상품이름 : <input type="text" id="pname">
	상품가격 : <input type="text" id="price">
	이미지 : <input type="text" id="img">
	
	<button id='add'>상품 등록</button>
	<hr>
		<div id='list' style="width: 900px; ">
	<c:forEach var="dto" items="${list}">
		<div id='products' style="width: 300px; float: left;">
		<a href="prodDetail.do?pid=${dto.pid}">
		<img alt="" src="resources/img/${dto.img }" width="340" height="300"><br>
		상품 이름 : ${dto.pname }<br>
		상품 가격 : ${dto.price }<br>
		<br>
		<hr>
		</a>
		</div>
	</c:forEach>
		</div>
</body>
</html>