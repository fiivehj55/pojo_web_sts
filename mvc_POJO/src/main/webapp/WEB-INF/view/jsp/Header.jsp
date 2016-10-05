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
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900'
	rel='stylesheet' type='text/css'>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="../js/skel.min.js"></script>
<script src="../js/skel-panels.min.js"></script>
<script src="../js/init.js"></script>
<link rel="stylesheet" href="../css/skel-noscript.css" />
<link rel="stylesheet" href="../css/style.css" />
<link rel="stylesheet" href="../css/style-desktop.css" />

</head>
<body>
	<!-- Header -->
	<div id="header">
		<div id="nav-wrapper">
			<!-- Nav -->
			<nav id="nav">
				<ul class="menu1">
					<li class="active"><a href="<%=request.getContextPath()%>/index2.jsp">호스팅하기</a>
						<ul class="sub">
							<li class="active"><a href="#">&nbsp</a></li>
							<li class="active"><a href="#">&nbsp</a></li>
						</ul></li>
					<li><a href="<%=request.getContextPath()%>/left-sidebar.html">메시지</a>
						<ul class="sub">
							<li class="active"><a href="#">&nbsp</a></li>
							<li class="active"><a href="#">&nbsp</a></li>
						</ul></li>
					<li><a href="<%=request.getContextPath()%>/right-sidebar.html">고객센터</a>
						<ul class="sub">
							<li class="active"><a href="<%=request.getContextPath()%>/jsp/FAQ.jsp">FAQ</a></li>
							<li class="active"><a href="#">신고 게시판</a></li>
						</ul></li>
					<li><a href="<%=request.getContextPath()%>/jsp/Login.jsp">로그인</a>
						<ul class="sub">
							<li class="active"><a href="<%=request.getContextPath()%>/jsp/Join.jsp">회원가입</a></li>
							<li class="active"><a href="<%=request.getContextPath()%>/jsp/FindId.jsp">ID/PASS 찾기</a></li>
						</ul></li>
					<li><a href="<%=request.getContextPath()%>/jsp/Main.jsp">검색된 페이지</a>
						<ul class="sub">
							<li class="active"><a href="#">&nbsp</a></li>
							<li class="active"><a href="#">&nbsp</a></li>
						</ul></li>
					<li><a href="<%=request.getContextPath()%>/jsp/Table.jsp">게시판</a>
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