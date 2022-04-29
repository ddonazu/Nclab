<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>sidebar</title>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/sidebar.css" rel="stylesheet">
</head>
<body>
<!-- 사이드바 시작 -->
<div class="sidebar">
    <span class="sidebar-brand">
        <a href="javascript:void(0)" data-toggle="sidebar"><i class="glyphicon glyphicon-arrow-left"></i> </a><br/>
        <img alt="logo" src="resources/img/logo.jpg" style="width: 60%;"><br/>
    </span>
    <ul class="sidebar-nav">
       
        <li>
            <a href="javascript:void(0)" data-toggle="collapse" data-target="#menu-collapse-1">
                 	개인정보
                <div class="caret"></div>
            </a>
            <ul id="menu-collapse-1" class="collapse in">
                <li>
                    <a href="javascript:void(0)">
                    	subMenu1
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)">
                        subMenu2
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)">
                        subMenu3
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="javascript:void(0)" data-toggle="collapse" data-target="#menu-collapse-2">
                	로그아웃
            </a>
        </li>
    </ul>
</div>
<!-- 사이드바 끝-->

<!-- 메뉴 -->
<div class="container-fluid">
	<a href="javascript:void(0)" class="btn" data-toggle="sidebar" style="margin: auto;">
       <img alt="logo" src="resources/img/icon2.png" style="width: 20PX;">
    </a>
   <img alt="logo" src="resources/img/logo.jpg" >
</div>
<!-- 메뉴 끝 -->






<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<script src="resources/js/sidebar.js"></script>
</body>
</html>