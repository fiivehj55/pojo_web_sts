<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
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
		<h1>정보를 제공해주세요.</h1>
		<form>
			<fieldset>
				<legend>호스팅 2단계</legend>
				<label for="rname">숙소 이름</label><br/>
				<input type="text" id="rname" name="rname"/> <br/> 
				
				<label for="infor">숙소 안내말</label> <br/>
				<textarea rows="5" cols="20" name="infor"></textarea> <br/>
				
				<label for="photo">사진</label> <br/>
				<input type="file" name="photo"/> <br/>
				
				<label for="addr">주소</label><br/>
				<textarea rows="5" cols="20" name="addr"></textarea> <br/>
			</fieldset>
			<!-- <input type="submit" id="next" name="next" value="다음 단계"/> <br/> -->
			<a href="insertHouse2"><input type="button" value="다음 단계"/></a>
		</form>
		</div>
	</div>
<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script>
</script>
</html>