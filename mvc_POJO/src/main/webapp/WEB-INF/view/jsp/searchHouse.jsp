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

<style>
	.h1{
		font-size: 28pt;	
	}
</style>

</head>
<body class="homepage">
<jsp:include page="./Header.jsp"></jsp:include>
	<!-- Main -->
	<div id="main">
		<div id="content" class="auto_center">
			<h1>하우스 정보</h1>
			<div>
				<img src="${houseImg }" width="50" height="50"/>
				<h1 class="h1">${memberName}의 ${houseName}!!</h1> <br/>
			</div>
			<div>
				아주 휼룡한 ${houseScore }점!! <br/>
				지하철역 도보 3분이라 아주 좋아요!! <br/>
				욕실이 아주 깨끗해요. <br/>
				호스트가 친절하세요!! <br/>
			</div>
			<div>
				<h1>상세설명 : ${houseInfo }</h1>
			</div>	
			<div>
				<!-- 예약버튼 클릭시 :: 달력 출력 -->
				<a href="#"><button>예약하기</button></a>
			</div>
		</div>
	</div>
<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script>
</script>
</html>