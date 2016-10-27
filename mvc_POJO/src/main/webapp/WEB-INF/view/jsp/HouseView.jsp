<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Linear by TEMPLATED</title>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/slidepro/dist/css/slider-pro.min.css" media="screen"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/slidepro/examples/css/examples.css" media="screen"/>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>




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
<a href="/<%=request.getContextPath() %>/slidepro/examples/example3.html" style="color:#fff">샘플3</a>
	<jsp:include page="./Header.jsp"></jsp:include>
	<!-- 맨위 -->
	<div id="main">
 		<div class="divTable">
			<div class="divTableBody">
				<div class="divTableRow">
					<div class="divTableCell" >
		<div id="example1" class="slider-pro">
		<div class="sp-slides">
			<div class="sp-slide">
				<img class="sp-image" src="<%=request.getContextPath() %>/slidepro/src/css/images/aaa.jpg"
					data-src="<%=request.getContextPath() %>/slidepro/src/css/images/aaa.jpg"
					data-retina="<%=request.getContextPath() %>/slidepro/src/css/images/aaa.jpg"/>
				
				<p class="sp-layer sp-white sp-padding"
					data-horizontal="50" data-vertical="50"
					data-show-transition="left" data-hide-transition="up" data-show-delay="400" data-hide-delay="200">
					공주빌라내부사진1
				</p>

				<p class="sp-layer sp-black sp-padding hide-small-screen"
					data-horizontal="180" data-vertical="50"
					data-show-transition="left" data-hide-transition="up" data-show-delay="600" data-hide-delay="100">
					깔끔합니다
				</p>

				<p class="sp-layer sp-white sp-padding hide-medium-screen"
					data-horizontal="315" data-vertical="50"
					data-show-transition="left" data-hide-transition="up" data-show-delay="800">
					안락합니다.
				</p>
			</div>

	        <div class="sp-slide">
	        	<img class="sp-image" src="<%=request.getContextPath() %>/slidepro/src/css/images/aaa.jpg"
	        		data-src="<%=request.getContextPath() %>/slidepro/src/css/images/aaa4.jpg"
	        		data-retina="<%=request.getContextPath() %>/slidepro/image/image2_large.jpg"/>

				<h3 class="sp-layer sp-black sp-padding" 
					data-horizontal="40" data-vertical="10%" 
					data-show-transition="left" data-hide-transition="left">
					공주빌라내부사진2
				</h3>

				<p class="sp-layer sp-white sp-padding hide-medium-screen" 
					data-horizontal="40" data-vertical="22%" 
					data-show-transition="left" data-show-delay="200" data-hide-transition="left" data-hide-delay="200">
					엄청 깔끔합니다
				</p>

				<p class="sp-layer sp-black sp-padding hide-small-screen" 
					data-horizontal="40" data-vertical="34%" data-width="350" 
					data-show-transition="left" data-show-delay="400" data-hide-transition="left" data-hide-delay="500">
					지하철역 도보 3분 거리에 위치합니다!!
				</p>
			</div>

			<div class="sp-slide">
				<img class="sp-image" src="<%=request.getContextPath() %>/slidepro/src/css/images/blank.gif"
					data-src="<%=request.getContextPath() %>/slidepro/src/css/images/aaa3.jpg"
					data-retina="<%=request.getContextPath() %>/slidepro/image/image3_large.jpg"/>

				<p class="sp-layer sp-white sp-padding" 
					data-position="centerCenter" data-vertical="-50" 
					data-show-transition="right" data-hide-transition="left" data-show-delay="500" >
					단기로 사실 분에게 최적화 되어있습니다.
				</p>

				<p class="sp-layer sp-black sp-padding hide-small-screen" 
					data-position="centerCenter" data-vertical="50" 
					data-show-transition="left" data-show-delay="700" data-hide-transition="right" data-hide-delay="200">
					환영해요 공주빌라 꽥
				</p>
			</div>

			<div class="sp-slide">
				<img class="sp-image" src="<%=request.getContextPath() %>/slidepro/src/css/images/blank.gif"
					data-src="<%=request.getContextPath() %>/slidepro/src/css/images/aaa5.jpg"
					data-retina="<%=request.getContextPath() %>/slidepro/image/image4_large.jpg"/>

				<p class="sp-layer sp-black sp-padding" 
					data-position="bottomLeft"
					data-show-transition="up" data-hide-transition="down">
					화장실도 깨끗합니다 <span class="hide-small-screen">샤워도구도 배치되어 있습니다.</span> <span class="hide-medium-screen"></span>
				</p>
			</div>

			<div class="sp-slide">
				<img class="sp-image" src="<%=request.getContextPath() %>/slidepro/src/css/images/blank.gif"
					data-src="<%=request.getContextPath() %>/slidepro/image/image5_medium.jpg"
					data-retina="<%=request.getContextPath() %>/slidepro/image/image5_large.jpg"/>

				<p class="sp-layer sp-white sp-padding" 
					data-vertical="10" data-horizontal="2%" data-width="96%" 
					data-show-transition="down" data-show-delay="400" data-hide-transition="up">
					Lorem ipsum dolor sit amet <span class="hide-small-screen">, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span> <span class="hide-medium-screen">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>
				</p>
			</div>

			<div class="sp-slide">
				<img class="sp-image" src="<%=request.getContextPath() %>/slidepro/src/css/images/blank.gif"
					data-src="<%=request.getContextPath() %>/slidepro/image/image6_medium.jpg"
					data-retina="<%=request.getContextPath() %>/slidepro/image/image6_large.jpg"/>

				<p class="sp-layer sp-white sp-padding" 
					data-horizontal="10" data-vertical="10" data-width="35%">
					Lorem ipsum dolor sit amet <span class="hide-small-screen">, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span> <span class="hide-medium-screen">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>
				</p>
			</div>

			<div class="sp-slide">
				<img class="sp-image" src="<%=request.getContextPath() %>/slidepro/src/css/images/blank.gif"
					data-src="<%=request.getContextPath() %>/slidepro/image/image7_medium.jpg"
					data-retina="<%=request.getContextPath() %>/slidepro/image/image7_large.jpg"/>

				<p class="sp-layer sp-black sp-padding" 
					data-position="bottomLeft" data-vertical="10" data-horizontal="2%" data-width="96%" 
					data-show-transition="up" data-show-delay="400" data-hide-transition="down">
					Lorem ipsum dolor sit amet <span class="hide-small-screen">, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span> <span class="hide-medium-screen">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>
				</p>
			</div>

			<div class="sp-slide">
				<img class="sp-image" src="<%=request.getContextPath() %>/slidepro/src/css/images/blank.gif"
					data-src="<%=request.getContextPath() %>/slidepro/image/image8_medium.jpg"
					data-retina="<%=request.getContextPath() %>/slidepro/image/image8_large.jpg"/>
			</div>

			<div class="sp-slide">
				<img class="sp-image" src="<%=request.getContextPath() %>/slidepro/src/css/images/blank.gif"
					data-src="<%=request.getContextPath() %>/slidepro/image/image9_medium.jpg"
					data-retina="<%=request.getContextPath() %>/slidepro/image/image9_large.jpg"/>

				<p class="sp-layer sp-black sp-padding" 
					data-position="bottomLeft" data-horizontal="50" data-vertical="100"
					data-show-transition="down" data-show-delay="500" data-hide-transition="up">
					Lorem ipsum dolor sit amet
				</p>

				<p class="sp-layer sp-white sp-padding hide-small-screen" 
					data-position="bottomLeft" data-horizontal="50" data-vertical="50"
					data-show-transition="up" data-show-delay="500" data-hide-transition="down">
					consectetur adipisicing elit <span class="hide-medium-screen">, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span>
				</p>
			</div>

			<div class="sp-slide">
				<img class="sp-image" src="<%=request.getContextPath()%>/slidepro/src/css/images/blank.gif"
					data-src="<%=request.getContextPath() %>/slidepro/image/image10_medium.jpg"
					data-retina="<%=request.getContextPath() %>/slidepro/image/image10_large.jpg"/>
			</div>
		</div>

		<div class="sp-thumbnails">
			<div class="sp-thumbnail">
				<div class="sp-thumbnail-title">공주빌라 사진1</div>
				<div class="sp-thumbnail-description">반갑습니다</div>
			</div>

			<div class="sp-thumbnail">
				<div class="sp-thumbnail-title">공주빌라 사진2</div>
				<div class="sp-thumbnail-description">두정역 근처</div>
			</div>

			<div class="sp-thumbnail">
				<div class="sp-thumbnail-title">공주빌라 사진3</div>
				<div class="sp-thumbnail-description">편의시설 배치</div>
			</div>

			<div class="sp-thumbnail">
				<div class="sp-thumbnail-title">공주빌라 사진4</div>
				<div class="sp-thumbnail-description">인테리어한 화장실</div>
			</div>

			<div class="sp-thumbnail">
				<div class="sp-thumbnail-title">Duis aute</div>
				<div class="sp-thumbnail-description">Irure dolor in reprehenderit in voluptate velit</div>
			</div>

			<div class="sp-thumbnail">
				<div class="sp-thumbnail-title">Esse cillum</div>
				<div class="sp-thumbnail-description">Dolore eu fugiat nulla pariatur excepteur</div>
			</div>

			<div class="sp-thumbnail">
				<div class="sp-thumbnail-title">Sint occaecat</div>
				<div class="sp-thumbnail-description">Cupidatat non proident, sunt in culpa qui officia</div>
			</div>

			<div class="sp-thumbnail">
				<div class="sp-thumbnail-title">Deserunt</div>
				<div class="sp-thumbnail-description">Mollit anim id est laborum sed ut perspiciatis</div>
			</div>

			<div class="sp-thumbnail">
				<div class="sp-thumbnail-title">Unde omnis</div>
				<div class="sp-thumbnail-description">Iste natus error sit voluptatem doloremque</div>
			</div>

			<div class="sp-thumbnail">
				<div class="sp-thumbnail-title">Laudantium</div>
				<div class="sp-thumbnail-description">Totam rem aperiam, eaque ipsa quae ab illo</div>
			</div>
		</div>
    </div>				
					
					
					<%-- 	<img src="<%=request.getContextPath()%>/upload/${houseUser}/${houseNo}/${houseImg }" width="100%" height="300"/> --%>
					</div>
				</div>

				<!-- 가운데 -->
				<div class="divTableRow">
					<div class="divTableCell" style="width: 300px; height: 200px;">
						&nbsp;
						<!-- <div id='container'> -->
						<div id='left-box'>
							<img src="<%=request.getContextPath()%>/upload/${memberName}/intro/${memImg}" width="250" height="150" onclick="goPopup()"/>
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
							<p><a href="searchbar?key=${key}&page=${page}" class="button button-style1">목록보기</a>
							<p><a href="chatstart?guest=${memberName}" class="button button-style1">메세지보내기</a>
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
<script type="text/javascript" src="<%=request.getContextPath() %>/slidepro/libs/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/slidepro/dist/js/jquery.sliderPro.min.js"></script>

<script type="text/javascript">
	$( document ).ready(function( $ ) {
		$( '#example1' ).sliderPro({
			width: 960,
			height: 500,
			arrows: true,
			buttons: false,
			waitForLayers: true,
			thumbnailWidth: 200,
			thumbnailHeight: 100,
			thumbnailPointer: true,
			autoplay: true,
			autoScaleLayers: false,
			breakpoints: {
				500: {
					thumbnailWidth: 120,
					thumbnailHeight: 50
				}
			}
		});
	});
	
	function goPopup(){
		   var pop = 
			   window.open("<%=request.getContextPath()%>/profile?memberName=${memberName}", "pop", "width=570,height=800, scrollbars=yes");	
	}
</script>

</html>