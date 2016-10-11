<!-- Header 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

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
							<li class="active"><a href="#">&nbsp</a></li>
						</ul></li>
					<li class="active"><a href="insertHouse">호스팅하기</a>
						<ul class="sub">
							<li class="active"><a href="#">&nbsp</a></li>
							<li class="active"><a href="#">&nbsp</a></li>
							<li class="active"><a href="#">&nbsp</a></li>
						</ul></li>
					<li><a href="<%=request.getContextPath()%>/left-sidebar.html">메시지</a>
						<ul class="sub">
							<li class="active"><a href="#">&nbsp</a></li>
							<li class="active"><a href="#">&nbsp</a></li>
							<li class="active"><a href="#">&nbsp</a></li>
						</ul></li>
					<li><a href="faq">고객센터</a>
						<ul class="sub">
							<li class="active"><a href="faq">FAQ</a></li>
							<li class="active"><a href="report">신고 게시판</a></li>
							<li class="active"><a href="#">&nbsp</a></li>
						</ul></li>
					
					<c:choose>	
					<c:when test="${ empty user }">
						<li><a href="login">로그인</a>
							<ul class="sub">
								<li class="active"><a href="join">회원가입</a></li>
								<li class="active"><a href="idAndPass">ID/PASS 찾기</a></li>
								<li class="active"><a href="#">&nbsp</a></li>
							</ul>
						</li>
					</c:when>
					<c:otherwise>
						<li><a href="inputPass">마이페이지</a>
							<ul class="sub">
								<li class="active"><a href="logout">로그아웃</a></li>
								<li class="active"><a href="#">&nbsp</a></li>
								<li class="active"><a href="#">&nbsp</a></li>
							</ul>
						</li>
					</c:otherwise>	
					</c:choose>

					<li><a href="search">검색된 페이지</a>
						<ul class="sub">
							<li class="active"><a href="#">&nbsp</a></li>
							<li class="active"><a href="#">&nbsp</a></li>
							<li class="active"><a href="#">&nbsp</a></li>
						</ul></li>
					<li><a href="bbs">문의게시판</a>
						<ul class="sub">
							<li class="active"><a href="#">&nbsp</a></li>
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