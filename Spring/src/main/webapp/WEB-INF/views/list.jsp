<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
</script>
<head>
<meta charset="UTF-8">
	<table class="table">
			<tr>
			<h4 class="text-white-50 mx-auto mt-2 mb-5">
				<td>번호</td>
				<td>제목</td>
				<td>글쓴이</td>
				<td>날짜</td>
				<td>조회수</td>
			</tr>
		<c:forEach items="${list}" var="dto">
			<tr>
				<td>${dto.bbsnum}</td>
				<td><a href="detail.do?bbsnum=${dto.bbsnum}" id="${dto.bbsnum}" >${dto.title}</a></td>
				<td>${dto.writer}</td>
				<td>${dto.bbsdate}</td>
				<td>${dto.hits}</td>
			</h4>
			</tr>
		</c:forEach>
			<tr>
				<td colspan="2"><button class="btn btn-primary" onclick="location='bbs_insert.jsp'">글쓰기</button></td>
				<td colspan="3"><button class="btn btn-primary" onclick="location='productlist.do'">상품리스트 보기</button></td>
			</tr>
	</table>
</body>
</html>