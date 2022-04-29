<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
<h2>로그인</h2>
	<form action="loginProc" method="post">
	<label for="id">아이디 : </label>
	<input type="text" name="id" size="12px"/>

	<br />
	
	<label for="pw">비밀번호 :</label>
	<input type="password" name="pw" size="10px"/> <br />
	
	<c:if test="${not empty userid }" >
		<div id="btn" style="margin-top: 5px;">
			</a><input type="submit" value="확인" onclick="alert('로그인 성공')"/>
		</div>
	</c:if>
</form>
</body>
</html>