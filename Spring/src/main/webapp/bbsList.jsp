<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url:"list.do",
			success: function(result) {
				$('#list').append(result)
			}
		})
	})

</script>
<title>Insert title here</title>
</head>
<jsp:include page="head.jsp"></jsp:include>
	<div class="container d-flex h-100 align-items-center">
    	<div class="mx-auto text-center" id="list">

		</div>
	</div>
</body>
</html>