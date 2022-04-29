<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="resources/css/boardDetail.css">
<head>
<meta charset="UTF-8">
<title>게시판 상세</title>
</head>
<body>
	<table id="boardDetailTable" style="border: 1px solid black;">
		<tr>
			<th scope="col" class="th_seq" colspan="2">글 번호</th>		
				<td class="td_seq">${boardDetail.bseq }</td>
			<th scope="col" class="th_title">제목</th>
				<td colspan="2" class="td_title">${boardDetail.btitle }</td>		
			<th class="th_date" colspan="2">날 짜</th>
				<td colspan="2" class="td_date"><fmt:formatDate value="${boardDetail.bdate }" pattern="yyy-MM-dd"/></td>
			<th class="th_hit" colspan="2">조회수</th>
				<td colspan="2" class="td_hit">${boardDetail.bhit }</td>
		</tr>
		
		<tr class="tr_content">
			<th class="th_content" colspan="2">내용</th>
				<td colspan="11" class="td_content">${boardDetail.bcontent }</td>
			</tr>
	</table>


	<c:if test="${userid eq 'admin' }">
		<!-- 관리자 영역 BTN -->
			<div class="admin_btn">
				<a href="boardDelete?bseq=${boardDetail.bseq }" style="color: black;">			
					<input type="submit" id="deletebtn_boardList" value="삭제" /></a>&nbsp;&nbsp;
				<a href="boardUpdate?bseq=${boardDetail.bseq }" style="color: black;">			
					<input type="submit" id="modifybtn_boardList" value="수정" /></a>&nbsp;&nbsp;
			</div>
	</c:if>
		<div class="btn">
				<a href="boardList" style="color: black;">
					<input type="submit" class="listbtn_boardDetail" value="목록" /></a> &nbsp;&nbsp;
		</div>

</body>
</html>