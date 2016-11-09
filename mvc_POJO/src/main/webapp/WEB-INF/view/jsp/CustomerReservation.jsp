<!-- 게시판 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@page import="java.util.Calendar"%>
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
 
#main {
	width: 100%;
}
.day {
	float: left;
	width: 14%;
	border: 1px solid;
	width: 14%;
}

.date {
	float: left;
	width: 14%;
	border: 1px solid;
}

.next {
	    text-align: center;
    margin-bottom: 5px;
    padding: 4px;
    background: #d3d3d3;
    color: #fff;
    width: 20px;
    border-radius: 50%;
    float: right;
}

#calendar {
    width: 100%;    
}
#calendar ul {
    list-style: none;
    padding: 0;
    margin: 0;
    width: 100%;
}

#box ul {
    list-style: none;
    padding: 0;
    margin: 0;
    width: 100%;
}

#calendar li {
    display: block;
    float: left;
    width:14.342%;
    padding: 5px;
    box-sizing:border-box;
    border: 1px solid #ccc;
    margin-right: -1px;
    margin-bottom: -1px;
}
#calendar ul.weekdays {
    height: 40px;
    background: #8e352e;
}

#calendar ul.weekdays li {
    text-align: center;
    text-transform: uppercase;
    line-height: 20px;
    border: none !important;
    padding: 10px 6px;
    color: #fff;
    font-size: 13px;
}

.pre {
    text-align: center;
    margin-bottom: 5px;
    padding: 4px;
    background: #d3d3d3;
    color: #fff;
    width: 20px;
    border-radius: 50%;
    float: right;
}

#bar {
	width: 100%;
	float: none;
	clear: both;
}

.left {
	float: left;
	width: 30%;
}

.right {
	float: right;
	width: 30%;
}

.center {
	width: 30%;
	display: inline-block;
	margin: 0 auto;
}

.center h1 {
	display: inline-block;
}
.other-month {/* 
    background: #f5f5f5; */
    color: #666;
}


#box .days li {
    height: 100px;
}

#box .days li:hover {
    background: #d3d3d3;
}

#box .date {
    text-align: center;
    margin-bottom: 5px;
    padding: 4px;
    background: #333;
    color: #fff;
    width: 20px;
    border-radius: 50%;
    float: right;
}

#box .event {
    clear: both;
    display: block;
    font-size: 13px;
    border-radius: 4px;
    padding: 5px;
    margin-top: 40px;
    margin-bottom: 5px;
    line-height: 14px;
    background: #e4f2f2;
    border: 1px solid #b5dbdc;
    color: #009aaf;
    text-decoration: none;
}

#box .event-desc {
    color: #666;
    margin: 3px 0 7px 0;
    text-decoration: none;  
}

#box .other-month {
    background: #f5f5f5;
    color: #666;
}
 
.houseinfo1{
	float:left;
	width: 600px;
	
}

#map {
	
	width: 500px;
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

.houseinfo1 th{
	text-align:left;
	width:200px;
}

.entry{
	margin: 20px;
}
.click{
	margin: 20px;
}
.date{
	margin: 20px;
}
</style>

</head>
<body class="header">
	<jsp:include page="./Header.jsp"></jsp:include>
	<form method="get" action="ReservationComplete">
	<!-- 맨위 -->
	<div class="houseinfo">
		<!-- 하우스이름 -->
		<h1 class ="h1">${house.memberId}의 ${house.houseName}</h1>
		<p> <br><br>
	</div>
	주소: ${house.houseAddress} ${house.houseAddressDetail }
		<p>
		<h3 class="h3">하우스시설정보</h3>
		<h5 class="h5">
			<img src="css/images/icon1.png" width="50" height="50"> "방의 개수:
			1개" <img src="css/images/icon2.JPG" width="50" height="60">
			"화장실 개수: 2개" <img src="css/images/icon3.JPG" width="80" height="50">
			"예약 가능 인원: 3개" <img src="css/images/icon4.JPG" width="50" height="50">
			"사용가능한 편의시설: 에어컨, WI-FI, 엘리베이터, 세탁기"
		</h5>
		<p>
<div class = "entry">
	<hr><p>
	<div class="houseinfo1">
		<table>
			<tr>
				<th>숙소</th>
				
				<th>숙박가능인원 : ${house.houseHosting}<br>
					방의 개수: ${house.houseRoom}<br>
					화장실 개수: ${house.houseBath}<br>
				</th>
				
				<th>
					체크인: 15:00 이후<br>
					체크아웃: 12:00<br>
					집 유형:아파트<br>
					숙소 유형:집전체
				</th>
			</tr>
			
			<tr>
				
				<th>시설</th>
				<th>${houseTv}<br>
					${houseAircon }<br>
					${houseWifi }<br>
					${houseElebe }<br>
					${houseWashing }<br/>
				</th>
			</tr>
			
			<tr>
				<th>가격</th>
				<th>${house.housePrice }원<br>
			</tr>
			
			<tr>
				<th>숙소 이용규칙</th>
				<th>흡연 금지<br>
					반려동물 동반 부적합<br>
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
	<div id="map"></div>
<p><p><hr>
</div>
	<p>
	<div class = "main">
		예약 날짜<br/>
		<input type="button" onclick="goPopup()" value="예약 달력보기">
		<input type="hidden" name="houseNo" value="${house.houseNo }"/>
		시작일 <input type="date" onchange="checkDate(this)" name="possCheckIn">
		 ~ 종료일 	<input type="date" onchange="lastDate(this)" name="possCheckOut"> 
		 <!-- <input type="button" onclick="nextDate(this)" value="+"> -->
		 
		 <div id ="calenderBox">
		 <%
		Calendar today = Calendar.getInstance();
		int toMonth = today.get(Calendar.MONTH);
		today.set(Calendar.MONTH, toMonth - 1);
		int pre = today.getActualMaximum(Calendar.DATE);
		today.set(Calendar.MONTH, toMonth);
		int hr = today.get(Calendar.DATE);
		today.set(Calendar.DATE, 1);
		int start = today.get(Calendar.DAY_OF_WEEK);
		int end = today.getActualMaximum(Calendar.DATE);
	%>
		<div id="bar">
			<div class="left">
				<input type="button" value="◀" onclick="before()">
			</div>
			<div class="center" id="dateBar">
				<h1><%=today.get(Calendar.YEAR)%>년
					<%=today.get(Calendar.MONTH) + 1%>월
				</h1>
			</div>
			<div class="right">
				<input type="button" value="▶" onclick="after()">
			</div>
		</div>
		   <div id="calendar">
                <ul class="weekdays">
                    <li>Sunday</li>
                    <li>Monday</li>
                    <li>Tuesday</li>
                    <li>Wednesday</li>
                    <li>Thursday</li>
                    <li>Friday</li>
                    <li>Saturday</li>
                </ul>
            </div>
		<div id="box">
		
		<% 
		for(int i = 0; i <= 5;i++){
			%>
			<ul class="days">
					<%
				for (int j = 1; j <= 7; j++) {
					int val = i*7+j;		
			%>
			<%
				if (val >= start) {
						if (val - start + 1 <= end) {
			%>
			   <li class="day">
                        <div class="date"><%=val - start + 1%></div>                       
                    </li>
			<%
				} else {
			%>
			<!-- next--> 
			        <li class="day other-month">
                        <div class="next"><%=val - end - start + 1%></div>                      
                    </li>
			<%
				}
					} else {
			%>
			  <li class="day other-month">
                        <div class="pre"><%=pre - start + val + 1%></div>                      
                    </li>
			<%
				}
			%>
			<%
				}
			%>
			
			</ul>
			<% 
		}
		
		%>
		</div>
			<c:set value="Impossible?houseNo=${houseNo }" var="getlist"/>
		 </div>
	</div>
	</p>
	
	<div class = "click">
	<input type="submit" class="button button-style-1" value="예약 완료"/>
	<a href="<%=request.getContextPath()%>/index"><input type="button" class="button button-style-1" value="취소"/></a>
	<%-- <a href="<%=request.getContextPath()%>/ReservationComplete1"><input type="button" class="button button-style-1" value="테스트 예약목록"/></a>
	<a href="<%=request.getContextPath()%>/RegisterReservation"><input type="button" class="button button-style-1" value="테스트 예약목록2"/></a> --%>
	</div>
	</form>
<p><p><p>
<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script src="http://code.jquery.com/jquery.js"></script>
<script>
function goPopup(){
    var pop = 
       window.open("<%=request.getContextPath()%>/dateView?houseNo=${house.houseNo}","pop", "width=770,height=800, scrollbars=yes");
}

// 날짜 스크립트
function checkDate(dateTag){
	var dateVal =  new Date(dateTag.value);
	var date = new Date();
	if(dateVal < date){
		alert("설정 불가능한 날짜입니다.");
		dateTag.value = "";
	}
}
function lastDate(dateTag){
	var dateVal = new Date(dateTag.value);
	var firstDate = $(dateTag).prev();
	var date = new Date($(firstDate).val());
	if($(firstDate).val() == ""){
		alert("시작일을 먼저 설정해주세요");
		$(dateTag).val("");
	}
	if(dateVal < date){
		alert("설정 불가능한 날짜입니다.");
		dateTag.value = "";
	}
}


//센터 한글명
var centerKN;
//센터 좌표
var centerLocation;
<c:url value="https://maps.googleapis.com/maps/api/geocode/json?" var="getmap"></c:url>
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

var startDay = "${house.possCheckIn}";
var endDay = "${house.possCheckOut}";
var dayArray = new Array();

var start = new Date(startDay);
var end = new Date(endDay);
$(document).ready(function(){


	console.log("start:"+ startDay);
	console.log("end:"+ endDay);
	
	 setpossible();
	 setImpossible();
	 setcolor();
});
function setDate(date){

	date.setYear(thisYear);
	date.setMonth(thisMonth);
	date.setHours(9);
	 date.setMinutes(0);
	 date.setSeconds(0);
	 date.setMilliseconds(0);
}

function setcolor(){

	$(".date").each(function(index){
		//index +1 은 날짜
		  var day  = index+1;

			 var currentDate = new Date();
			 setDate(currentDate);		 
			 currentDate.setDate(day);
		 for(i=0;i <ImpossibleDate.length;i++ ){
				var inDate = new Date(ImpossibleDate[i].checkIn);
				var outDate = new Date(ImpossibleDate[i].checkOut);
				 if(inDate <= currentDate && outDate >= currentDate ){
				
					 $(this).parent().css("background","red");
			 		dayArray.push(this);
			 	 }
		 }
		});
		$(".next").each(function(index){
			//index +1 은 날짜
			  var day  = index+1;

				 var currentDate = new Date();
				 setDate(currentDate);	
				if(thisMonth!= 11){
					 currentDate.setMonth(thisMonth+1);
				}else{
					currentDate.setYear(currentDate.getYear()+1);
					 currentDate.setMonth(0);
				}
			 currentDate.setDate(day);
			 for(i=0;i <ImpossibleDate.length;i++ ){
					var inDate = new Date(ImpossibleDate[i].checkIn);
					var outDate = new Date(ImpossibleDate[i].checkOut);
					
					 if(inDate < currentDate && outDate >= currentDate ){
						 $(this).parent().css("background","red");
				 		dayArray.push(this);
				 	 }
			 }
			});
		$(".pre").each(function(index){
			//index +1 은 날짜
			
	 var currentDate = new Date();
	 setDate(currentDate);	
			 if(thisMonth!= 0){
				 currentDate.setMonth(thisMonth-1);
				}else{
					thisYear--;
					thisMonth = 11;
					currentDate.setYear(currentDate.getYear()-1);
					 currentDate.setMonth(11);
				}
			 currentDate.setDate($(this).html());
			 for(i=0;i <ImpossibleDate.length;i++ ){
					var inDate = new Date(ImpossibleDate[i].checkIn);
					var outDate = new Date(ImpossibleDate[i].checkOut);
					
					 if(inDate < currentDate && outDate >= currentDate ){
						 $(this).parent().css("background","red");
				 		dayArray.push(this);
				 	 }
			 }
			});
}
function setpossible(){
	$(".date").each(function(index){
		//index +1 은 날짜
		  var day  = index+1;
		 var currentDate = new Date();
		 setDate(currentDate);	
		 currentDate.setDate(day);
		 	 if(start < currentDate && end >= currentDate ){
		 		 $(this).parent().css("background","#B2CCFF");
		 		dayArray.push(this);
		 	 }
		});
		$(".next").each(function(index){
			//index +1 은 날짜
			  var day  = index+1;
			 var currentDate = new Date();
			 setDate(currentDate);	
				if(thisMonth!= 11){
					 currentDate.setMonth(thisMonth+1);
				}else{
					currentDate.setYear(currentDate.getYear()+1);
					 currentDate.setMonth(0);
				}
			 currentDate.setDate(day);
			 	 if(start < currentDate && end >= currentDate ){
			 		 $(this).parent().css("background","#B2CCFF");
			 	 }
			});
		$(".pre").each(function(index){
			//index +1 은 날짜
			 var currentDate = new Date();
			 setDate(currentDate);	
			 if(thisMonth!= 0){
				 currentDate.setMonth(thisMonth-1);
				}else{
					thisYear--;
					thisMonth = 11;
					currentDate.setYear(currentDate.getYear()-1);
					 currentDate.setMonth(11);
				}
			 currentDate.setDate($(this).html());
			 	 if(start < currentDate && end >= currentDate ){
			 		 $(this).parent().css("background","#B2CCFF");
			 	 }
			});
}
var ImpossibleDate;
function setImpossible(){
	$.ajax({
		type : "get",
		url : "${getlist}",
		data : {
			houseNo : ${houseNo}
		},   
		async: false,
		success : function(data,staus) {
			ImpossibleDate = data;
			console.log(ImpossibleDate);
		},
		error : function(xhr, status, error) {
			alert(error);
		}
	});
}

	var thisMonth = <%=today.get(Calendar.MONTH)%>;
	var thisYear = <%=today.get(Calendar.YEAR)%>;
	function before(){
		if(thisMonth!= 0){
			thisMonth--;
		}else{
			thisYear--;
			thisMonth = 11;
		}
	 var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
		document.getElementById("dateBar").innerHTML = "<h1>"+thisYear+"년 "+(thisMonth+1)+"월</h1>";		
	      document.getElementById("box").innerHTML = this.responseText;
	      console.log((thisMonth+1)+"월");
	      console.log(this.responseText);

	 	 setpossible();
	 	 setcolor();
	    }
	  };
	  xhttp.open("POST", "dateView?month="+thisMonth+"&year="+thisYear, true);
	  xhttp.send();
	  
	}
	function after(){
		if(thisMonth!= 11){
			thisMonth++;
		}else{
			thisYear++;
			thisMonth = 0;
		}
	 var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
		document.getElementById("dateBar").innerHTML = "<h1>"+thisYear+"년 "+(thisMonth+1)+"월</h1>";
	      document.getElementById("box").innerHTML = this.responseText;
	      console.log((thisMonth+1)+"월");
	      console.log(this.responseText);

	 	 setpossible();
	 	 setcolor();
	    }
	  };
	  xhttp.open("POST", "dateView?month="+thisMonth+"&year="+thisYear, true);
	  xhttp.send();
	}

</script>
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBRgGbfPF9xbceQJLP0o1qKFlJpK7UdjQ8&callback=initMap">
    </script>
</html>
