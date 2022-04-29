<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
<h2>회원가입</h2>
		<form action="signInProc" method="post">
			<table>
				<tr>
					<td class="title">아이디</td>
					<td class="right" colspan="2"><input id="id" name="id" type="text" required autofocus></td>
				</tr>
				<tr>
					<td class="title">비밀번호</td>
					<td class="right" colspan="2"><input id="pw" name="pw" type="password" required></td>
				</tr>
			</table>
			<input id="btn" type="submit" value="가입완료" />
		</form>
</body>
</html>


