<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Linear by TEMPLATED</title>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900'
	rel='stylesheet' type='/text/css'>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script>
<script src="js/init.js"></script>
<link rel="stylesheet" href="css/skel-noscript.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/style-desktop.css" />

</head>
<body class="homepage">
<jsp:include page="./Header.jsp"></jsp:include>
	<!-- Main -->
	<div id="main">

		<div id="content" class="auto_center">

		<h1>하우스 등록</h1>
		
	<form>
		<p>
			<label for="id">아이디:</label> 
			<input type="text" name="id" id="id" placeholder="영문+숫자 조합 8 이상"> 
			<input type="button" value="중복확인">
		</p>

		<p>
			<label for="pass">비밀번호:</label>
			<input type="password" name="password" id="pass" placeholder="영문+숫자 조합 8 이상">
		<p>
			<label for="passok"></label> 
			<input type="password" name="password" placeholder="영문+숫자 조합 8 이상">
		<p>
			<label for="name">이름:</label> 
			<input type="text" name="name" id="name">
		</p>
		<p>
			<label for="gender">성별:</label> 
			<input type="radio" name="gender" value="men" id="men">남 
			<input type="radio" name="gender" value="women" id="women">여
		<p>
			전화번호:<select name="phone" id="phone">
				<option value=SKT>SKT</option>
				<option value=KT>KT</option>
				<option value=U+>U+</option>
			</select> <input type="tel" name="number" placeholder="-빼고 숫자만 입력">
		</p>
		<p>
			<label for="email">이메일:</label> 
			<input type="email" name="email" placeholder="pojo@google.com">
		</p>
		<p>
			<label for="pic">프로필 사진:</label> 
			<input type="text" name="pic" id="pic">
			<button>첨부하기</button>
		<p>
			<label for="intro">자기소개:<textarea cols="45" rows="10"></textarea></label>
		<p>
			<input type="submit" value="가입">
	</form>

		</div>
	</div>

	<!-- Tweet -->
	<div id="tweet">
		<div class="container">
			<section>
				<blockquote>&ldquo;In posuere eleifend odio. Quisque
					semper augue mattis wisi. Maecenas ligula. Pellentesque viverra
					vulputate enim. Aliquam erat volutpat.&rdquo;</blockquote>
			</section>
		</div>
	</div>

<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script>
</script>
</html>