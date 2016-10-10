<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Linear by TEMPLATED</title>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900'
	rel='stylesheet' type='text/css'>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script> 
<script src="js/init.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/skel-noscript.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style-desktop.css" />


<!-- 기본 jQuery js파일 연결 -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

<!-- bxSlider js파일 연결 -->
<script src="bxslider/jquery.bxslider/jquery.bxslider.min.js"></script>

<!-- bxSlider css파일 연결 -->
<link href="bxslider/jquery.bxslider/jquery.bxslider.css" rel="stylesheet" />




<style>
input, input[placeholder] {
	font-weight: bold;
	text-align: center;
}
</style>

</head>
<body class="homepage">
	<!-- Header -->
	<div id="header">
	<ul class="bxslider">
    <li><img src="css/images/image2.jpg" /></li>
    <li><img src="css/images/image3.jpg" /></li>
</ul>
	
		<div id="nav-wrapper">
			<!-- Nav -->
			<nav id="nav">
				<ul class="menu1">
					<li class="active"><a href="index">호스팅하기</a>
						<ul class="sub">
							<li class="active"><a href="#">&nbsp</a></li>
							<li class="active"><a href="#">&nbsp</a></li>
							<li class="active"><a href="#">&nbsp</a></li>
						</ul></li>
					<li><a href="left-sidebar.html">메시지</a>
						<ul class="sub">
							<li class="active"><a href="#">&nbsp</a></li>
							<li class="active"><a href="#">&nbsp</a></li>
							<li class="active"><a href="#">&nbsp</a></li>
						</ul></li>
					<li><a href="faq">고객센터</a>
						<ul class="sub">
							<li class="active"><a href="faq">FAQ</a></li>
							<li class="active"><a href="#">신고 게시판</a></li>
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

		<div class="container">
			<!-- Logo -->
			<div id="logo">
				<h1>
					<a href="#">사랑방손님</a>
				</h1>
				<span class="tag">By POJO</span>
			</div>
		</div>
	</div>
<script src="http://code.jquery.com/jquery.js"></script>

	<!-- Featured -->
	<div id="featured">
		<div class="container">
			<header>
				<input id="text_box" type="text" size="100"
					placeholder="두정동 또는 건물이름을 입력하세요"> <input type="button"
					value="확인">
			</header>
			<p>
				지금 <a href="http://templated.co"> 인기있는 </a>숙소를 만나보세요!
		</div>
	</div>

	<!-- Main -->
	<div id="main">

		<div id="content" class="container">

			<div class="row">
				<section class="6u">
					<a href="searchByHouseNo?houseNo=1" class="image full">
					<img src="css/images/image1.jpg"
						width=500 height=500 alt="" id="test"></a>
				</section>
				<section class="6u">
					<a href="#" class="image full"><img src="css/images/image2.jpg"
						width=500 height=500 alt=""></a>
				</section>
			</div>

			<div class="row">
				<section class="6u">
					<a href="#" class="image full"><img src="css/images/image3.jpg"
						width=500 height=500 alt=""></a>
					<header>
						<!-- <h2>Mauris vulputate dolor</h2> -->
					</header>
					<!-- <p>In posuere eleifend odio. Quisque semper augue mattis wisi. Maecenas ligula. Pellentesque viverra vulputate enim. Aliquam erat volutpat. Donec leo, vivamus fermentum nibh in augue praesent a lacus at urna congue rutrum.</p> -->
				</section>
				<section class="6u">
					<a href="#" class="image full"><img src="css/images/image4.jpg"
						width=500 height=500 alt=""></a>
					<header>
						<!-- <h2>Mauris vulputate dolor</h2> -->
					</header>
					<!-- <p>In posuere eleifend odio. Quisque semper augue mattis wisi. Maecenas ligula. Pellentesque viverra vulputate enim. Aliquam erat volutpat. Donec leo, vivamus fermentum nibh in augue praesent a lacus at urna congue rutrum.</p> -->
				</section>
			</div>

		</div>
	</div>

	<!-- Tweet -->
	<div id="tweet">
		<div class="container">
			<section>
				<blockquote> &ldquo;In posuere eleifend odio. Quisque
					semper augue mattis wisi. Maecenas ligula. Pellentesque viverra
					vulputate enim. Aliquam erat volutpat.&rdquo;</blockquote>
			</section>
		</div>
	</div>


</body>

<script>
  $(document).ready(function(){
    $('.bxslider').bxSlider();
  });
</script>



<!-- <script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script>
var image1 = "./css/images/house1.jpg";
var image2 = "./css/images/house2.jpg";

var image3 = "url(./css/images/house1.jpg) no-repeat bottom center";
var image4 = "url(./css/images/house2.jpg) no-repeat bottom center";
var img = [image1,image2];
var pos = 1;

var myImg = document.getElementById("test");
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
		
		window.setInterval(function(){
			var rand = Math.floor(Math.random()*2);
	myImg.setAttribute("src",img[rand]);
	$("#header").attr("background-image",img[rand]);
	console.log("rand = "+img[rand]);
			console.log($("#header").attr("background-image")); 
		//	console.log($("#header").attr("background"));
			},1000);
		
	});
</script> -->
</html>