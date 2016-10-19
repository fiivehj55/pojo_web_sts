<!-- 게시판 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
label {
	width: 100px;
	display: inline-block;
}

.auto_center {
	width: 1200px;
	height: 400px;
	padding:20px;
	margin: 200px auto; 
}
#map{
		width:50%;
        height: 100%;
}
</style>

</head>
<body class="">
	<jsp:include page="./Header.jsp"></jsp:include>

	<div id="main">
		<div id="content" class="auto_center">
 			<div id="featured">
				 <div class="container">  
					<header>
<!-- 						<input id="text_box" type="text" size="100"
							placeholder="두정동 또는 건물이름을 입력하세요"> <input type="button"
							value="확인"> -->
					</header>
					<p>
						${key} 검색한 페이지 입니다.
				</div>
			</div>
			<div id = "map">
			</div>
			<div class ="boardcss_list_table">
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
									<td> <a href="houseView?houseNo=${row.houseNo}"><img src="<%=request.getContextPath()%>/upload/${row.memberId}/${row.houseNo}/${row.houseImg}" width="40" height="40"/></a></td>
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
		</div>
		<div>
				<c:if test="${page > 5}">
				<a href="searchbar?key=${key}&page=${page-5}">
					<input type="button" value="이전">
				</a>
				</c:if>
				<a href="searchbar?key=${key}&page=${num}">${num}</a>
				<c:set var="down" value="-3"/>
				<c:forEach var="num" begin="1" end="2">
					<c:set var="down" value="${down+1}"/>
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
					<a href="searchbar?key=${key}&page=${page+5}">
						<input type="button" value="다음">
					</a>
				</c:if>
			</div>
			
			<h1>${result}</h1>
			<a href="insertHouse" class="button button-style1" >하우스 등록</a> 
		</div>
	</div>
	<jsp:include page="./Footer.jsp"></jsp:include>
</head>
<body>

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
				        	   var centerMaker = '<div id="content">'+
							      '<div id="siteNotice">'+
							      '</div>'+
							      '<h1 id="firstHeading" class="firstHeading">'+houseList[i][0]+'</h1>'+
							      '<div id="bodyContent">'+
							      '<p>'+houseList[i][2]+'</p>'+
							      '<p>'+houseList[i][1]+'</p>'+
							      '<p>'+houseList[i][3]+'</p>'+
							      '</div>'+
							      '</div>';
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
