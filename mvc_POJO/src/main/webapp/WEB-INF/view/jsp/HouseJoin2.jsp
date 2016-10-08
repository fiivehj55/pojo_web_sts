<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>Linear by TEMPLATED</title>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='/text/css'>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
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
			<fieldset>
				<legend>호스팅 3단계</legend>
				
				<img src="/img/mage_tp.jpg"/>
				
				<label for="day"></label>
				<input type="radio" id="rone" name="day" value="1개">
				<label for="dd">일</label>
				
				<input type="radio" id="rtwo" name="day" value="2개">
				<label for="ww">주</label>
				
				<input type="radio" id="rthree" name="day" value="3개">
				<label for="mm">월</label>
				<br/>
				
			</fieldset>
			<!-- <input type="submit" id="next" name="next" value="다음 단계"/> <br/> -->
			<a href="search"><input type="button" value="완료"/></a>
		</form>
		</div>
	</div>
<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script>
</script>
</html>