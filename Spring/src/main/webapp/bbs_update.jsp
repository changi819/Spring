<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(function() {
		$("#bt").click(function() {
			/* bbsnumVal = $('#bbsnum').val()
			titleVal = $('#title').val()
			contentVal = $('#content').val()
			bbsdateVal = $('#bbsdate').val() */
			$.ajax({
				url: "update_bbs.do",
				data: {
					bbsnum: $('#bbsnum').val(),
					title: $('#title').val(),
					content: $('#content').val(),
					bbsdate: $('#bbsdate').val()
				},
				success: function() {
					alert("수정되었습니다.")
				}
			})
		})
	})
</script>
<jsp:include page="head.jsp"></jsp:include>
<%
	String writer = (String)session.getAttribute("id");
%>
<body>
<div class="container d-flex h-100 align-items-center">
                <div class="mx-auto text-center">
<input type="hidden" id="bbsnum" value="<%=request.getParameter("bbsnum")%>">
<input type="text" id="title" value="<%=request.getParameter("title")%>"><br>
<textarea rows="8" cols="30" id="content"><%=request.getParameter("content")%></textarea><br>
<input type="hidden" value="<%=writer %>" id="writer">
<input type="hidden" value="${today}" id="bbsdate">
<button class="btn btn-primary js-scroll-trigger" id="bt">수정</button>
</div>
</div>
</body>
</html>