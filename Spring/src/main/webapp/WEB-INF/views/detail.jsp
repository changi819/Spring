<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
$(function() {
	$('#add').click(function() {
		var conval= $('#content').val()
		$.ajax({
			url: "add.do",
			data: {
				content: conval,
				name: '${dto.writer}',
				bbsnum: '${dto.bbsnum}'
			},
			success: function(result) {
				location.reload();
			}
		})
	})
}) 
function del(me) {
	alert($(me).attr('id'));
	$.ajax({
		url:"del.do",
		data:{
			comment_num:$(me).attr('id')
		},
		success: function() {
			alert("삭제완료.")
			location.reload();
		}
	})
};
function up() {
		location='bbs_update.jsp?title=${dto.title}&content=${dto.content}&bbsnum=${dto.bbsnum}'
}
//이전 버튼 이벤트
function fn_prev(page, range, rangeSize) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
		var url = "detail.ko";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}
  //페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, searchType, keyword) {
		var url = "detail.ko";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;	
	}
	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		var url = "detail.ko";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}
</script>
<jsp:include page="../../head.jsp"></jsp:include>
</head>
<body>
<div class="container d-flex h-100 align-items-center">
                <div class="mx-auto text-center">
	<div>
	<input type="text" value="${dto.title}" readonly="readonly">
	</div>
	<div>
	<textarea rows="8" cols="40" readonly="readonly">${dto.content}</textarea>
	</div>
	<button class="btn-primary" onclick="up();">수정</button>
	<form action="delete_bbs.do">
	<input type="hidden" name="bbsnum" value="${dto.bbsnum}">
	<input class="btn-primary" type="submit" value="삭제">
	</form>
	<c:forEach var="dto" items="${list2}">
		<h5 class="text-white-50">
		댓글 내용 : ${dto.content}
		작성자 아이디 : ${dto.name}
		게시일 : ${dto.comdate}
		<input type="button" class="btn-primary" id="${dto.comment_num}" value="삭제" onclick="del(this);">
		<br>
		</h5>
	</c:forEach>
	<!-- pagination{s} -->
	<div id="paginationBox">
		<ul class="pagination">
			<c:if test="${paging.prev}">
				<li class="page-item"><a class="page-link" href="#" onClick="fn_prev('${paging.page}', '${paging.range}', '${paging.rangeSize}')">Previous</a></li>
			</c:if>
			<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="idx">
				<li class="page-item <c:out value="${paging.page == idx ? 'active' : ''}"/> "><a class="page-link" href="#" onClick="fn_pagination('${idx}', '${paging.range}', '${paging.rangeSize}')"> ${idx} </a></li>
			</c:forEach>
			<c:if test="${paging.next}">
				<li class="page-item"><a class="page-link" href="#" onClick="fn_next('${paging.range}', 
'${paging.range}', '${paging.rangeSize}')" >Next</a></li>
			</c:if>
		</ul>
	</div>
	<!-- pagination{e} -->
	댓글 내용 : <input type="text" id='content' name='content'>
	<button class="btn-primary" id="add">작성</button>
	</div>
	</div>
</body>
</html>