<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
.h1 {
	font-size: 28pt;
	font-weight: bold;
}

.h3 {
	color: #4C4C4C;
	font-weight: bold;
	font-size: 18pt;
}

.h5 {
	font-weight: bold;
	font-size: 13pt;
}

.divTable {
	display: table;
	width: 100%;
}

.divTableRow {
	display: table-row;
}

.divTableHeading {
	background-color: #EEE;
	display: table-header-group;
}

.divTableCell, .divTableHead {
	/* border: 1px solid #999999; */
	display: table-cell;
	padding: 3px 10px;
}

.divTableHeading {
	background-color: #EEE;
	display: table-header-group;
	font-weight: bold;
}

.divTableFoot {
	background-color: #EEE;
	display: table-footer-group;
	font-weight: bold;
}

.divTableBody {
	display: table-row-group;
}

#left-box {
	float: left;
}

#center-box {
	margin: 0px 0px 0px -50px;
}

#right-box {
	float: right;
}
</style>

</head>
<body class="header">
	<jsp:include page="./Header.jsp"></jsp:include>
	<!-- 맨위 -->
	<div id="main">
		<div class="divTable">
			<div class="divTableBody">
				<div class="divTableRow">
					<div class="divTableCell" style="width: 300px; height: 300px;">
						<img src="<%=request.getContextPath()%>/upload/${houseUser}/${houseNo}/${houseImg }" />
					</div>
				</div>

				<!-- 가운데 -->
				<div class="divTableRow">
					<div class="divTableCell" style="width: 300px; height: 200px;">
						&nbsp;
						<!-- <div id='container'> -->
						<div id='left-box'>
							<img src="css/images/n1.jpg" width="250" height="150" />
						</div>

						<div id='right-box'>
							<c:if test="${user!=null}">
								<a href="#" class="button button-style1">예약하기</a>
								<p>
									<c:if test="${user. memId == houseUser}">
										<p><a href="updateHouse?houseNo=${houseNo}" class="button button-style1"> 수정하기</a>
										<p><a href="deleteHouse?houseNo=${houseNo}" class="button button-style1"> 삭제하기</a>
									</c:if>
							</c:if>
							<p><a href="search?page=1" class="button button-style1">목록보기</a>
						</div>

						<div id='center-box'>
							<h1 class="h1">${memberName}의${houseName}</h1>
							<br /> 아주 휼룡한 ${houseScore }점!! <br /> 지하철역 도보 3분이라 아주 좋아요!! <br />
							욕실이 아주 깨끗해요. 호스트가 친절하세요!! <br />

						</div>
					</div>
				</div>
			</div>

			<!-- 마지막 -->
			<div class="divTableRow">
				<div class="divTableCell" style="width: 300px; height: 250px;">
					<h3 class="h3">상세설명</h3>
					<p>${houseInfo }
					<p>
					<h5 class="h5">
						<img src="css/images/icon1.png" width="50" height="50" />방의 개수: ${houseRoom } 
						<img src="css/images/icon2.JPG" width="50" height="60" />화장실 개수: ${houseBath } 
						<img src="css/images/icon3.JPG" width="80" height="50" />예약 가능 인원: ${houseHosting }
						<img src="css/images/icon4.JPG" width="50" height="50" />사용가능한 편의시설: ${houseAircon }, ${houseWifi },${houseElebe }, 	${houseWashing }
					</h5>
				</div>
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