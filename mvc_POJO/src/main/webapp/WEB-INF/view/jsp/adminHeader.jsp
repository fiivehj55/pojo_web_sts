<!-- Header 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/skel.min.js"></script>
<script src="<%=request.getContextPath()%>/js/skel-panels.min.js"></script>
<script src="<%=request.getContextPath()%>/js/init.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/skel-noscript.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style-desktop.css" />

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>
<body>
	<!-- Header -->
	<div id="header">
		<div id="nav-wrapper">
			<!-- Nav -->
			<nav id="nav">
				<ul class="menu1">
					<li class="active"><a href="index">메인가기</a>
						<ul class="sub">
							<li class="active"><a href="#">&nbsp</a></li>
							<li class="active"><a href="#">&nbsp</a></li>
						</ul></li>

					<li><a href="bbs?page=1">게시판관리</a>
						<ul class="sub">
							<li class="active"><a href="adminQuestion?page=1">문의게시판 관리</a></li>
							<li class="active"><a href="adminReport?page=1">신고게시판 관리</a></li>
						</ul></li>
						
					<li><a href="bbs?page=1">댓글 관리</a>
						<ul class="sub">
							<li class="active"><a href="adminQuestionReply?page=1">문의게시판 댓글 관리</a></li>
							<li class="active"><a href="adminReportReply?page=1">신고게시판 댓글 관리</a></li>
						</ul></li>

					<li><a href="bbs?page=1">하우스관리</a>
						<ul class="sub">
							<li class="active"><a href="adminHouse?page=1">하우스관리</a></li>
							<li class="active"><a href="adminReply?page=1">하우스 댓글 관리</a></li>
						</ul></li> 
						
					<li><a href="adminCustomer?page=1">회원관리</a>
						<ul class="sub">
							<li class="active"><a href="#">&nbsp</a></li>
							<li class="active"><a href="#">&nbsp</a></li>
						</ul></li>
						
					<li><a href="adminPage">관리자님 환영합니다</a>
						<ul class="sub">
							<li class="active"><a href="#">&nbsp</a></li>
							<li class="active"><a href="#">&nbsp</a></li>
						</ul></li>
				</ul>
			</nav>
		</div>
	</div>	
</body>
	<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
	<script>
		var subMenu = $(".sub");
		subMenu.hide();
		$(document).ready(function() {
			$("#nav").hover(function(e) {
				if (e.type == "mouseenter") {
					subMenu.show();
				}
			});
			$("#nav").hover(function(e) {
				if (e.type == "mouseleave") {
					subMenu.hide();
				}
			});
		}); 
	</script>
</html>