<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<style>
	.h1{
		font-size: 28pt;	
	}
</style>

</head>
<body class="header">
<jsp:include page="./Header.jsp"></jsp:include>
	<!-- Main -->
	<div id="main">
		<div id="content" class="auto_center">
			
			<div>
				<img src="<%=request.getContextPath()%>/upload/${houseUser}/${houseNo}/${houseImg }" width="1200" height="100"/>
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
				<h1>방의 개수 : ${houseRoom }</h1>
				<h1>화장실 개수 : ${houseBath }</h1>
				<h1>예약 가능 인원 : ${houseHosting }</h1>
				<h1>사용가능한 편의시설 : ${houseTv }, ${houseAircon }, ${houseWifi },
					${houseElebe }, ${houseWashing }</h1>
			</div>
			
			<div>
				<!-- 예약버튼 클릭시 :: 달력 출력 -->
			<c:if test="${user!=null}">
				<a href="#"><button>예약하기</button></a>
				<c:if test="${user. memId == houseUser}">
				<a href="updateHouse?houseNo=${houseNo}"><button>수정하기</button></a>
				<a href="deleteHouse?houseNo=${houseNo}"><button>삭제하기</button></a>				
				</c:if>
			</c:if>
			</div>
			<jsp:include page="./HouseToReply.jsp"></jsp:include>
		</div>
	</div>
<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script>
</script>
</html>