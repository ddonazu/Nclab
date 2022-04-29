<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="resources/css/boardWrite.css">
<head>
<meta charset="UTF-8">
<title>게시판 글작성</title>
</head>
<body>
	<form action="boardWrite" method="get">
	<table id="boardWriteTable" style="border: 1px solid black;">
		<tr>
			<th scope="col" class="th_title">제목</th>
				<td colspan="2" class="td_title">
				<input type="text" name="bTitle" class="input_title" placeholder="제목을 입력하세요." style="width: 100%;"/></td>	
		</tr>
		
		<tr class="tr_content">
			<th class="th_content" colspan="2">내용</th>
				<td class="td_content">
					<textarea class="textarea_content" name="bContent" cols="30" rows="10" placeholder="내용을 입력하세요." style="width: 100%;"></textarea></td>
			</tr>
	</table>

		<div class="btn">
			<input type="submit" value="입력" style="color: black;" />
			<button><a href="boardList" style="color: black;">목록</a></button> &nbsp;&nbsp;
		</div>
	</form>
	
</body>
</html>