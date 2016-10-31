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

<style>
/* label {
	width: 100px;
	display: inline-block;
}

.auto_center {
	width: 1200px;
	height: 400px;
	padding: 20px;
	margin: 200px auto;
}

#map {
	width: 50%;
	height: 100%;
}
 */
#map {
	/* float: right; */
	width: 400px;
	height: 400px;
	
}

.h1 {
	font-size: 28pt;
	font-weight: bold;
}

.h3 {
	color: #4C4C4C;
	font-weight: bold;
	font-size: 18pt;
}
</style>

</head>
<body class="header">
	<jsp:include page="./Header.jsp"></jsp:include>
	<!-- 맨위 -->
	<div class="houseinfo">
		<!-- 하우스이름 -->
		<h1 class="h1">hong의 공주빌라</h1>
		<p>
			<br>
			<br>

			<!-- 주소 -->
			주소: 경기도 성남시 분당구(양팀장이 db에서 따와줘~)
		<p>
			<!-- 하우스시설정보 -->
		<h3 class="h3">상세설명</h3>
		<h5 class="h5">
			<img src="css/images/icon1.png" width="50" height="50"> "방의 개수:
			1개" <img src="css/images/icon2.JPG" width="50" height="60">
			"화장실 개수: 2개" <img src="css/images/icon3.JPG" width="80" height="50">
			"예약 가능 인원: 3개" <img src="css/images/icon4.JPG" width="50" height="50">
			"사용가능한 편의시설: 에어컨, WI-FI, 엘리베이터, 세탁기"
		</h5>
	<div id="map"></div>
	</div>
	<div class="houseinfo1">
		<table>
			<tr>
				<th>숙소</th>
				<th>숙박가능인원:3<br>
					욕실:1<br>
					침실:1<br>
					침대:2<br>
				</th>
				
				
				<th>체크인: 15:00 이후<br>
					체크아웃: 12:00<br>
					집 유형:아파트<br>
					숙소 유형:집전체
				</th>
			</tr>
			
			<tr>
				<th>시설</th>
				<th>TV<br>
					인터넷<br>
					세탁기<br>
					에어컨<br>
					헤어 드라이기
				</th>
			</tr>
			<hr>
			
			<tr>
				<th>가격</th>
				<th>추가 인원 요금 : $10000 / 박 (2명 초과 시)<br>
					보증금<br>
					청소비:$ 3000
					</th>
			</tr>
			
			<tr>
				<th>숙소 이용규칙</th>
				<th>흡연 금지<br>
					반려동물 동반에 적합하지 않음<br>
					체크인은 15:00 이후입니다.
				</th>
			</tr>
			
			<tr>
				<th>예약 가능 여부</th>
				<th>최소 숙박일 1일.</th>
			</tr>
			
			<tr>
				<th></th>
				<th></th>
			</tr>

		</table>
	</div>
	

	<div class="houseBook">
		<label class="book"></label>
	</div>
	<%-- <body class="">
	<div class="titleArea">
		<h2>고객 화면에서 예약 확인하기</h2>
	</div>
	<hr class="layout"></hr>
	<div class="smallArea">
		<h3>고객 XXX님의 하우스 예약 현황</h3>
	
	</div>

	<hr class="layout"></hr>

	<div id="main">
		<div class="boardcss_list_table">
			<table class="list_table">
				<colgroup>
					<col width="5%" />
					<col width="15%" />
					<col width="20%" />
					<col width="50%" />
					<col width="10%" />

				</colgroup>
				<thead>
					<tr>
						<th>번호</th>
						<th>하우스</br> 프로필
						</th>
						<th>하우스 이름</th>
						<th>주소</th>
						<th>가격(월 기준)</br> 체크인아웃
						</th>
					</tr>
				</thead>

				<tbody>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</head>

<body>

</body> --%>

	<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script src="http://code.jquery.com/jquery.js"></script>
<script>

//센터 한글명
var centerKN;
//센터 좌표
var centerLocation;
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
function initMap() { 
	getlocationMain("${address}");

	 var map;
	  map = new google.maps.Map(document.getElementById('map'), {
	   	 center: centerLocation,
	   	 zoom: 15,
	     mapTypeId: google.maps.MapTypeId.ROADMAP
	  });
	  var infowindow = new google.maps.InfoWindow();
	  
	  var marker, k;
	     	 marker = new google.maps.Marker({
	        position: new google.maps.LatLng(centerLocation.lat, centerLocation.lng),
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
				      '<h1 id="firstHeading" class="firstHeading">'+${house.houseNo}+'</h1>'+
				      '<div id="bodyContent">'+
				      '<span style="font-size:25px">'+${house.houseName}+'</span>'+
				      '<p><b>주소:&nbsp</b>${house.houseAddress}</p>'+
				      '<p><b>가격:&nbsp</b>${house.housePrice}원</p>'+
				     	'</div>'+
				      '</div>'+
				      '</div>'+
				      '<div id="right-box">'+
				      '<img src="<%=request.getContextPath()%>/upload/${house.memberId}/${house.houseNo}/main/${house.houseImg}" width="200px" height="280px"></div>';
				      
	        		  infowindow.setContent(centerMaker );
	         		 infowindow.open(map, marker);
	       		 }
	        
	    	  })(marker, k)); 
	    
}; 
</script>
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBRgGbfPF9xbceQJLP0o1qKFlJpK7UdjQ8&callback=initMap">
    </script>
</html>
