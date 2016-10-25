<!-- 게시판 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<%-- <meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script>
<script src="js/init.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/skel-noscript.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style-desktop.css" /> --%>

<style>
@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,300);
#right-box {
	float: right;
}
#left-box {
	float: left;
}
body {
	color: #333;
	font-family: 'Open Sans', sans-serif;
	font-weight: 300;
}
h1,
h1+p {
	margin: 30px 15px 0;
	font-weight: 300;
}
h1+p a {
	color: #333;
}
h1+p a:hover {
	text-decoration: none;
}
h2 {
	margin: 60px 15px 0;
	padding: 0;
	font-weight: 300;
}
h2 span {
	margin-left: 1em;
	color: #aaa;
	font-size: 85%;
}
.column {
	float:left;
	margin: 50px 15px 0;
	padding: 0;
}
.column:last-child {
	padding-bottom: 60px;
}
.column::after {
	content: '';
	clear: both;
	display: block;
}
.column div {
	position: relative;
	float: left;
	width: 200px;
	height: 200px;
	margin: 0 0 0 25px;
	padding: 0;
}
.column div:first-child {
	margin-left: 0;
}
.column div span {
	position: absolute;
	bottom: -20px;
	left: 0;
	z-index: -1;
	display: block;
	width: 200px;
	margin: 0;
	padding: 0;
	color: #444;
	font-size: 18px;
	text-decoration: none;
	text-align: center;
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
	opacity: 0;
}
figure {
	width: 200px;
	height: 200px;
	margin: 0;
	padding: 0;
	background: #fff;
	overflow: hidden;
}
figure:hover+span {
	bottom: -36px;
	opacity: 1;
}



/* Zoom In #1 */
.hover01 figure img {
	-webkit-transform: scale(1);
	transform: scale(1);
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}
.hover01 figure:hover img {
	-webkit-transform: scale(1.3);
	transform: scale(1.3);
}

/* Zoom In #2 */
.hover02 figure img {
	width: 300px;
	height: auto;
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}
.hover02 figure:hover img {
	width: 350px;
}

/* Zoom Out #1 */
.hover03 figure img {
	-webkit-transform: scale(1.5);
	transform: scale(1.5);
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}
.hover03 figure:hover img {
	-webkit-transform: scale(1);
	transform: scale(1);
}

/* Zoom Out #2 */
.hover04 figure img {
	width: 400px;
	height: auto;
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}
.hover04 figure:hover img {
	width: 300px;
}

/* Slide */
.hover05 figure img {
	margin-left: 30px;
	-webkit-transform: scale(1.5);
	transform: scale(1.5);
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}
.hover05 figure:hover img {
	margin-left: 0;
}

/* Rotate */
.hover06 figure img {
	-webkit-transform: rotate(15deg) scale(1.4);
	transform: rotate(15deg) scale(1.4);
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}
.hover06 figure:hover img {
	-webkit-transform: rotate(0) scale(1);
	transform: rotate(0) scale(1);
}

/* Blur */
.hover07 figure img {
	-webkit-filter: blur(3px);
	filter: blur(3px);
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}
.hover07 figure:hover img {
	-webkit-filter: blur(0);
	filter: blur(0);
}

/* Gray Scale */
.hover08 figure img {
	-webkit-filter: grayscale(100%);
	filter: grayscale(100%);
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}
.hover08 figure:hover img {
	-webkit-filter: grayscale(0);
	filter: grayscale(0);
}

/* Sepia */
.hover09 figure img {
	-webkit-filter: sepia(100%);
	filter: sepia(100%);
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}
.hover09 figure:hover img {
	-webkit-filter: sepia(0);
	filter: sepia(0);
}

/* Blur + Gray Scale */
.hover10 figure img {
	-webkit-filter: grayscale(0) blur(0);
	filter: grayscale(0) blur(0);
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}
.hover10 figure:hover img {
	-webkit-filter: grayscale(100%) blur(3px);
	filter: grayscale(100%) blur(3px);
}

/* Opacity #1 */
.hover11 figure img {
	opacity: 1;
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}
.hover11 figure:hover img {
	opacity: .5;
}

/* Opacity #2 */
.hover12 figure {
	background: #1abc9c;
}
.hover12 figure img {
	opacity: 1;
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}
.hover12 figure:hover img {
	opacity: .5;
}

/* Flashing */
.hover13 figure:hover img {
	opacity: 1;
	-webkit-animation: flash 1.5s;
	animation: flash 1.5s;
}
@-webkit-keyframes flash {
	0% {
		opacity: .4;
	}
	100% {
		opacity: 1;
	}
}
@keyframes flash {
	0% {
		opacity: .4;
	}
	100% {
		opacity: 1;
	}
}

/* Shine */
.hover14 figure {
	position: relative;
}
.hover14 figure::before {
	position: absolute;
	top: 0;
	left: -75%;
	z-index: 2;
	display: block;
	content: '';
	width: 50%;
	height: 100%;
	background: -webkit-linear-gradient(left, rgba(255,255,255,0) 0%, rgba(255,255,255,.3) 100%);
	background: linear-gradient(to right, rgba(255,255,255,0) 0%, rgba(255,255,255,.3) 100%);
	-webkit-transform: skewX(-25deg);
	transform: skewX(-25deg);
}
.hover14 figure:hover::before {
	-webkit-animation: shine .75s;
	animation: shine .75s;
}
@-webkit-keyframes shine {
	100% {
		left: 125%;
	}
}
@keyframes shine {
	100% {
		left: 125%;
	}
}

/* Circle */
.hover15 figure {
	position: relative;
}
.hover15 figure::before {
	position: absolute;
	top: 50%;
	left: 50%;
	z-index: 2;
	display: block;
	content: '';
	width: 0;
	height: 0;
	background: rgba(255,255,255,.2);
	border-radius: 100%;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	opacity: 0;
}
.hover15 figure:hover::before {
	-webkit-animation: circle .75s;
	animation: circle .75s;
}
@-webkit-keyframes circle {
	0% {
		opacity: 1;
	}
	40% {
		opacity: 1;
	}
	100% {
		width: 200%;
		height: 200%;
		opacity: 0;
	}
}
@keyframes circle {
	0% {
		opacity: 1;
	}
	40% {
		opacity: 1;
	}
	100% {
		width: 200%;
		height: 200%;
		opacity: 0;
	}
}

label {
	width: 100px;
	display: inline-block;
}

.auto_center {
	width: 100%;
	height: 1000px;
	padding-top: 0px;
	margin: 130px auto;
}

#map {
	float: right;
	width: 50%;
	height: 100%;
}

#gallery {
	float: left;
	width: 50%;
	height: 100%;
}


</style>

</head>
<body class="">
	<jsp:include page="./Header.jsp"></jsp:include>
	<div id="">
		<div id="content" class="auto_center">
			<div id="featured">
				<div class="container">
					<div>
						<!-- <header>
					<input id="text_box" type="text" size="100"
							placeholder="두정동 또는 건물이름을 입력하세요"> <input type="button"
							value="확인"> 
					</header> -->
						<p>${key}검색한페이지 입니다.</p>
					</div>
				</div>
			</div>
			<div id="gallery">
				<c:choose>
					<c:when test="${fn:length(house) > 0}">
						<c:forEach items="${house }" var="row">
							<div class="hover01 column">
								<div>
									<figure>
										<a href="houseView?houseNo=${row.houseNo}">
											<img src="<%=request.getContextPath()%>/upload/${row.memberId}/${row.houseNo}/main/${row.houseImg}" width="300" height="300"/>
										</a>
									</figure>
								<span><a href="houseView?houseNo=${row.houseNo }">${row.houseName }</a></span>
								</div>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
							조회된 결과가 없습니다.
					</c:otherwise>
				</c:choose>
			</div>
			<div id="map"></div>
			<%-- <div class ="boardcss_list_table">
				<table class="list_table">
				<colgroup>
					<col width="10%" />
					<col width="15%" />
					<col width="50%" />
					<col width="15%" />
					<col width="10%" />
				</colgroup>
				<thead>
				<tr>
					<th>번호</th>
					<th>하우스프로필</th>
					<th>하우스 이름</th>
					<th>주소</th>
				</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${fn:length(house) > 0}">
							<c:forEach items="${house }" var="row">
								<tr>
									<td>${row.houseNo }</td>
									<td> <a href="houseView?houseNo=${row.houseNo}"><img src="<%=request.getContextPath()%>/upload/${row.memberId}/${row.houseNo}/main/${row.houseImg}" width="40" height="40"/></a></td>
									<td> <a href="houseView?houseNo=${row.houseNo }">${row.houseName }</a></td>
									<td>${row.houseAddress }</td>									
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="4">조회된 결과가 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
					
				</tbody>
			</table>  
		</div>--%>

			<div>
				<c:if test="${page > 5}">
					<a href="searchbar?key=${key}&page=${page-5}"> <input
						type="button" value="이전">
					</a>
				</c:if>
				<a href="searchbar?key=${key}&page=${num}">${num}</a>
				<c:set var="down" value="-3" />
				<c:forEach var="num" begin="1" end="2">
					<c:set var="down" value="${down+1}" />
					<c:if test="${0 <page+ down}">
						<a href="searchbar?key=${key}&page=${page+down}">${page+down}</a>
					</c:if>
				</c:forEach>
				<span>${page}</span>
				<c:forEach var="num" begin="1" end="2">
					<c:if test="${page+num <= max}">
						<a href="searchbar?key=${key}&page=${page+num}">${page+num}</a>
					</c:if>
				</c:forEach>
				<c:if test="${page < max-5}">
					<a href="searchbar?key=${key}&page=${page+5}"> <input
						type="button" value="다음">
					</a>
				</c:if>
			</div>

			<h1>${result}</h1>
			<a href="insertHouse" class="button button-style1">하우스 등록</a>
		</div>
	</div>

	<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script src="http://code.jquery.com/jquery.js"></script>
<script>

//센터 한글명
var centerKN;
//센터 좌표
var centerLocation;
var locat = new Array();
 var houseList = new Array();
	<c:forEach var="j" begin="0" end="${fn:length(house)-1}">		 
		 houseList[${j}] = new Array();
		  houseList[${j}][0] = ${house[j].houseNo};
		  houseList[${j}][1] = "${house[j].houseAddress}";
		  houseList[${j}][2] = "${house[j].houseName}";
		  houseList[${j}][3] = ${house[j].housePrice};
	</c:forEach> 
	<c:url value="https://maps.googleapis.com/maps/api/geocode/json?" var="getmap"/>
 	 function getlocationMain(pos){	
	$.ajax({
				type : "get",
				url : "${getmap}",
				data : {
					address : pos
				},   
				async: false,
				success : function(data,staus) {
				//한글명
					centerKN = data.results[0].formatted_address;
				//좌표
				centerLocation = data.results[0].geometry.location;
				},
				error : function(xhr, status, error) {
					alert(error);
				}
			});
	};  
	 function getlocation(pos,i){	
		$.ajax({
					type : "get",
					url : "${getmap}",
					data : {
						address : pos
					},   
					async: false,
					success : function(data,staus) {
						//경도,위도 리턴
						locat[i] = data.results[0].geometry.location;
					},
					error : function(xhr, status, error) {
						alert(error);
					}
				});
		}; 
 	 var map;
			function initMap() { 
				getlocationMain("${key}");
				  map = new google.maps.Map(document.getElementById('map'), {
				   	 center: centerLocation,
				   	 zoom: 15,
				     mapTypeId: google.maps.MapTypeId.ROADMAP
				  });
				  var infowindow = new google.maps.InfoWindow();
				  
				  var marker, k;
				for (k = 0; k < ${fn:length(house)}; k++) {
						 getlocation(houseList[k][1],k);
				     	 marker = new google.maps.Marker({
				        position: new google.maps.LatLng(locat[k].lat, locat[k].lng),
				        map: map
				     	});
		
				 		 var infowindow = new google.maps.InfoWindow();
				  
				  		 google.maps.event.addListener(marker, 'click', (function(marker, i) {
				  			
				        return function() {				        	
				        	   var centerMaker = 			        		  
				        		  '<div  style="width:400px; heigth:150px;" id="content">'+
							      '<div id="siteNotice">'+
							      '</div>'+
							      '<div id="left-box">'+
							      '<h1 id="firstHeading" class="firstHeading">'+houseList[i][0]+'</h1>'+
							      '<div id="bodyContent">'+
							      '<span style="font-size:25px">'+houseList[i][2]+'</span>'+
							      '<p><b>주소:&nbsp</b>'+houseList[i][1]+'</p>'+
							      '<p><b>가격:&nbsp</b>'+houseList[i][3]+'원</p>'+
							     	'</div>'+
							      '</div>'+
							      '</div>'+
							      '<div id="right-box"><img src=css/images/aaa.jpg width="200px" height="280px"></div>';
							      
				        		  infowindow.setContent(centerMaker );
				         		 infowindow.open(map, marker);
				       		 }
				    	  })(marker, k));
				    }
			}; 

</script>
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBRgGbfPF9xbceQJLP0o1qKFlJpK7UdjQ8&callback=initMap">
    </script>
</html>
