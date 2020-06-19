<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(function() {
		$(document).ready(function() {
			$.ajax({
				url:"productlist.do",
				success: (function(result) {
					$('div').append(result);				
				})
			})	
		})
	})	

</script>
</head>
<body>
	상품정보
	<hr>
	<div>
	
	</div>
</body>
</html>