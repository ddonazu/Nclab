<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="resources/css/boardUpdate.css">
<head>
<meta charset="UTF-8">
<title>게시판 수정</title>
</head>
<body>
	<form action="boardModify" method="post">
	<input type="hidden" name="bseq" value="${boardDetail.bseq }" />
	<table id="boardUpdateTable" style="border: 1px solid black;">
		<tr>
			<th scope="col" class="th_seq" colspan="">글 번호</th>		
				<td class="td_seq">${boardDetail.bseq }</td>

			<th scope="col" class="th_title">제목</th>
				<td colspan="2" class="td_title">
					<input type="text" name="bTitle" value="${boardDetail.btitle }" size="30px" /></td>
						
			<th class="th_date" colspan="2">날 짜</th>
				<td colspan="2" class="td_date"><fmt:formatDate value="${boardDetail.bdate }" pattern="yyy-MM-dd"/></td>
				
			<th class="th_hit" colspan="2">조회수</th>
				<td colspan="2" class="td_hit">${boardDetail.bhit }</td>
		</tr>
		
		<tr class="tr_content">
			<th class="th_content" colspan="">내용</th>
				<td colspan="11" class="td_content">
				<textarea name="bContent" class="textarea_content" cols="80px" rows="10px"
				 style="resize: none">${boardDetail.bcontent }</textarea></td>
			</tr>
	</table>


		<div class="btn">
			<input type="submit" value="저장" />&nbsp;&nbsp;
			<button><a href="boardDetail?bseq=${boardDetail.bseq }">취소</a></button>
		</div>
	</form>
	
</body>
</html>