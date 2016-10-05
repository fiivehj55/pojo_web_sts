<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Linear by TEMPLATED</title>

<style>


label {
	width: 100px;
	display: inline-block;
}

.auto_center {
	width: 400px;
	height: 400px;
	padding: 20px;
	margin: 30px auto;
}




input, input[placeholder] {
	font-weight: bold;
	text-align: center;
}

* {
	margin: 0;
	padding: 0;
	list-style-type: none;
}

#container1 {
	margin: 100px auto;
	width: 537px;
	background: rgba(0,0,0,0.1);
}

ul.menu li {
	float: left;
	width: 179px;
	height: 48px;
	background-color: rgba(0,0,0,0.1);
	position: relative;
}

ul.menu li a {
	display: block;
	width: 100%;
	height: 100%;
	line-height: 48px;
	text-indent: 30px;
	font-weight: bold;
	color: #eee;
	text-decoration: none;
}

ul.menu li a:hover {
	background-color: #333;
}

ul.menu li ul.sub {
	position: absolute;
}

ul.menu {
	zoom: 1;
}

ul.menu:after {
	height: 0;
	visibility: hidden;
	content: ".";
	display: block;
	clear: both;
}



</style>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900'
	rel='stylesheet' type='/text/css'>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="../js/skel.min.js"></script>
<script src="../js/skel-panels.min.js"></script>
<script src="../js/init.js"></script>
<link rel="stylesheet" href="../css/skel-noscript.css" />
<link rel="stylesheet" href="../css/style.css" />
<link rel="stylesheet" href="../css/style-desktop.css" />

</head>
<body class="homepage">
	<!-- Header -->
	<div id="header">
		<div id="nav-wrapper">
			<!-- Nav -->
			<nav id="nav">
				<div id="container">
					<ul class="menu">
						<li class="active"><a href="/index2.jsp">호스팅하기</a></li>
						<li><a href="/left-sidebar.html">메시지</a></li>
						<li><a href="/right-sidebar.html">고객센터</a>
							<ul class="sub">
								<li><a href="#">FAQ</a></li>
								<li><a href="#">신고 게시판</a></li>
							</ul></li>
						<li><a href="/jsp/Login.jsp">로그인</a></li>
						<li><a href="/jsp/Main.jsp">검색된 페이지</a></li>
						<li><a href="/jsp/Table.jsp">게시판</a></li>
					</ul>
				</div>
			</nav>
		</div>

		<div class="container">
		
		
			<div id="logo">
				<h1>
					<a href="#">사랑방손님</a>
				</h1>
				<span class="tag">By POJO</span>
			</div>
		</div>
	</div>


	<!-- Main -->
	<div id="main">

		<div id="content" class="auto_center">

		<h1>회원가입</h1>
		
	<form>
		<p>
			<label for="id">아이디:</label> <input type="text" name="id" id="id"
				placeholder="영문+숫자 조합 8 이상"> <input type="button"
				value="중복확인">
		</p>

		<p>
			<label for="pass">비밀번호:</label> <input type="password"
				name="password" id="pass" placeholder="영문+숫자 조합 8 이상">
		<p>
			<label for="passok"></label> <input type="password" name="password"
				placeholder="영문+숫자 조합 8 이상">
		<p>
			<label for="name">이름:</label> <input type="text" name="name"
				id="name">
		</p>
		<p>
			<label for="gender">성별:</label> <input type="radio" name="gender"
				value="men" id="men">남 <input type="radio" name="gender"
				value="women" id="women">여
		<p>
			전화번호:<select name="phone" id="phone">
				<option value=SKT>SKT</option>
				<option value=KT>KT</option>
				<option value=U+>U+</option>
			</select> <input type="tel" name="number" placeholder="-빼고 숫자만 입력">
		</p>
		<p>
			<label for="email">이메일:</label> <input type="email" name="email"
				placeholder="pojo@google.com">
		</p>
		<p>
			<label for="pic">프로필 사진:</label> <input type="text" name="pic"
				id="pic">
			<button>첨부하기</button>
		<p>
			<label for="intro">자기소개:<textarea cols="45" rows="10"></textarea></label>
		<p>
			<input type="submit" value="가입">
	</form>

		</div>
	</div>


	<!-- Footer -->
	<!--  footerì ë´ì©ê³¼ snsì°ê²° ìì´ì½ -->
	<div id="footer">
		<div class="container">
			<section>
				<header>
					<h2>Get in touch</h2>
					<span class="byline">Integer sit amet pede vel arcu aliquet
						pretium</span>
				</header>
				<ul class="contact">
					<li><a href="#" class="fa fa-twitter"><span>Twitter</span></a></li>
					<li class="active"><a href="#" class="fa fa-facebook"><span>Facebook</span></a></li>
					<li><a href="#" class="fa fa-dribbble"><span>Pinterest</span></a></li>
					<li><a href="#" class="fa fa-tumblr"><span>Google+</span></a></li>
				</ul>
			</section>
		</div>
	</div>

	<!-- Copyright -->
	<div id="copyright">
		<div class="container">
			Design: <a href="http://templated.co">TEMPLATED</a> Images: <a
				href="http://unsplash.com">Unsplash</a> (<a
				href="http://unsplash.com/cc0">CC0</a>
		</div>
	</div>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script>

	var subMenu = $("#subMenu");
	subMenu.hide();

	$(function() {
		$("ul.sub").hide();
		$("ul.menu li").hover(function() {
			$("ul:not(:animated)", this).slideDown("fast");
		}, function() {
			$("ul", this).slideUp("fast");
		});
	});
</script>
</html>