<!-- 회원 비밀번호 찾기 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

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
<link rel="stylesheet" href="css/skel-noscript.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/style-desktop.css" />

<style>
label {
	width: 100px;
	display: inline-block;
}

.auto_center {
	width: 400px;
	height: 400px;
	padding: 20px;
	margin: 200px auto;
}
</style>
</head>
<jsp:include page = "./Header.jsp"></jsp:include>
<body class="auto_center">
<h1>비밀번호 찾기</h1>
	<p><label>아이디: </label>
	<input type="text" id = "id" name= "id"></p>
	<p><label>이름: </label>
	<input type="text" id = "id" name= "id"></p>
	<p><label>이메일</label>
	<input type="email" id="email"name="email">
	<button>OK</button>
</body>
	<jsp:include page="./Footer.jsp"></jsp:include>
<script></script>
</html>