<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<link href="resources/css/sidebar.css" rel="stylesheet">

<style type="text/css">
.jointable {
	margin-top: 30px;
	margin-left: 30px;
	font-size: 1px;
}

table {
	width: 230px
}

table, tr, td {
	height: 35px;
}

td {
	border-top: 1px solid #BFBFBF;
	border-bottom: 1px solid #BFBFBF;
	text-align: center;
}

.td_bk {
	background-color: #ddd;
}

.infobtn {
	width: 150px;
	height: 25px;
	background-color: white;
    color: black;
    font-size: 13px;
    outline-style: auto;
    margin-top: 20px;
    margin-left: 35px;
}
a {
	text-decoration:none;
}

label {
    display: block;
    font: 1rem 'Fira Sans', sans-serif;
}

input,
label {
    margin: .4rem 0;
    font-size: 13px;
}
</style>
<script type="text/javascript">
	function joins() {
		
		let password = document.querySelector("#empPw").value;
		let password2 = document.querySelector("#empPw2").value;
		
		if(password!=password2){
			alert("패스워드는 동일해야 합니다.");
			return false;
		}
		
		var num = password.search(/[0-9]/g);
		var eng = password.search(/[a-z]/ig);

		 if(password.length < 8 || password.length > 20){
			alert("8자리 ~ 20자리 이내로 입력해주세요.");
			return false;
		 }else if(password.search(/\s/) != -1){
			alert("비밀번호는 공백 없이 입력해주세요.");
			return false;
		 }else if(num < 0 || eng < 0){
			alert("영문, 숫자를 혼합하여 입력해주세요.");
			return false;
		 }
		
		//email 하나로 합치기
		let email1 = document.querySelector("#email1").value;
		let email2 = document.querySelector("#email2").value;
		let email = document.querySelector("#empEmail");
		
		if(email2 == '1'){
			email.value=email1;
			return true;
		}else{
			email.value=email1+"@"+email2;
			return true;
		}
	
	}
</script>
</head>
<body>
	<!-- 사이드바 시작 -->
	<div class="sidebar">
		<span class="sidebar-brand"> <a href="javascript:void(0)"
			data-toggle="sidebar"><i class="glyphicon glyphicon-arrow-left"></i>
		</a><br /> <br />
		</span>
		<ul class="sidebar-nav">

			<li><a href="javascript:void(0)" data-toggle="collapse"
				data-target="#menu-collapse-1"> 개인정보
					<div class="caret"></div>
			</a>
				<ul id="menu-collapse-1" class="collapse in">
					<li><a href="javascript:void(0)"> subMenu1 </a></li>
					<li><a href="javascript:void(0)"> subMenu2 </a></li>
					<li><a href="javascript:void(0)"> subMenu3 </a></li>
				</ul></li>
			<li><a href="javascript:void(0)" data-toggle="collapse"
				data-target="#menu-collapse-2"> 로그아웃 </a></li>
		</ul>
	</div>
	<!-- 사이드바 끝-->

	<!-- 메뉴 -->
	<div class="container-fluid">
		<a href="javascript:void(0)" class="btn" data-toggle="sidebar"
			style="margin: auto;"> <img alt="logo"
			src="resources/img/icon2.png" style="width: 20PX;">
		</a> <img alt="logo" src="resources/img/logo.png" style="margin-top: 25px; margin-left: 30px;">
	</div>
	<!-- 메뉴 끝 -->

	<!-- 내용 시작 -->
	<section>
		<div class="jointable">
			<form onsubmit="return joins()" action="/join" method="post">
				<table>
					<tr>
						<td class="td_bk"><label for="empId" style="margin: auto;">사원코드(ID)</label></td>
						<td><input type="text" name="empId" id="empId"
							style="width: 150px;" required/></td>
					</tr>
					<tr>
						<td class="td_bk"><label for="empName" style="margin: auto;">사원이름</label></td>
						<td><input type="text" name="empName" id="empName"
							style="width: 150px;" required/></td>
					</tr>
					<tr>
						<td class="td_bk"><label for="empNum" style="margin: auto;">전화번호</label></td>
						<td><input type="text" name="empNum" id="empNum" style="width: 150px;"/></td>
					</tr>

					<tr>
						<td class="td_bk"><label for="email1" style="margin: auto;">이메일</label></td>
						<td><input type="text" name="email1" id="email1"
							style="width: 62px;"  required/> @ <select id="email2"
							style="width: 70px;"  required>
								<option value="gmail.com">gmail.com</option>
								<option value="naver.com">naver.com</option>
								<option value="daum.net">daum.net</option>
								<option value="hanmail.net">hanmail.net</option>
								<option value="nate.com">nate.com</option>
								<option value="" >직접입력</option>
						</select></td>
					</tr>

					<tr>
						<td class="td_bk"><label for="empHiredate" style="margin: auto;">입사일</label></td>
						<td><input type="date" id="empHiredate" name="empHiredate" value="2021-02-01" 
						style="width: 150px; line-height: 18px;" min="2021-02-01" max="9999-99-99" ></td>
					</tr>
				</table>
				
				
				<button class="infobtn" >
					<a href="emp" style="margin-top: 15px; color: black;">수정</a>
				</button>	<br /><br />
				
				<input type="submit"  class="infobtn" value="확인"><br>
				
			</form>
		</div>
	</section>
	<!-- 내용 끝 -->



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
	<script src="resources/js/sidebar.js"></script>

</body>
</html>