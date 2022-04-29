<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="resources/css/boardList.css">
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
</head>
<body>
	<table class="boardListTable" style="border: 1px solid black;">
		<colgroup>
			<col width="86px">
			<col width="*">
			<col width="126px">
		</colgroup>
		
		<tr class="boardList"">
			<td scope="col" class="bseq">글 번호</td>		
			<td scope="col" class="btitle">제목</td>		
			<td scope="col" class="bdate">날짜</td>		
			<td scope="col" class="bhit">조회수</td>			
		</tr>
		
	<c:forEach items="${boardList }" var="boarddto">
		<tr>
			<td>${boarddto.bseq }</td>
			<td><a href="boardDetail?bseq=${boarddto.bseq }">${boarddto.btitle }</a></td>
			<td><fmt:formatDate value="${boarddto.bdate }" pattern="yyyy-MM-dd"/></td>
			<td>${boarddto.bhit }</td>
		</tr>
	</c:forEach>
	</table>
	
	<!-- 관리자 글작성 버튼 -->
		<div class="btn">
	<c:if test="${userid != null }">
			<button type="button">
				<a href="boardWriteDetail" style="color: black;" >글쓰기</a>
			</button>
	</c:if>
	
	<c:if test="${userid == null }">
			<button type="button">
				<a href="login" style="color: black;" >로그인</a>
			</button>
	</c:if>
	
	<c:if test="${userid != null }">
			<button type="button" >
				<a href="logout" style="color: black;" >로그아웃</a>
			</button>
	</c:if>

			<button>
				<a href="signIn" style="color: black;" >회원가입</a>
			</button>
		</div>
	<div>
		<h5>${userid }님 환영합니다.</h5>
	</div>

</body>
</html>