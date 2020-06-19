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
<%
	String writer = (String)session.getAttribute("id");
%>
<jsp:include page="head.jsp"></jsp:include>
<body>
<div class="container d-flex h-100 align-items-center">
	<div class="mx-auto text-center">
		<form action="insert_bbs.do">
		<input type="text" name="title"><br>
		<textarea rows="8" cols="30" name="content"></textarea><br>
		<input type="hidden" value="<%=writer %>" name="writer">
		<input type="hidden" value="${today}" name="bbsdate">
		<input class="btn btn-primary js-scroll-trigger" type="submit" value="글쓰기">
	</form>
	</div>
</div>
</body>
</html>