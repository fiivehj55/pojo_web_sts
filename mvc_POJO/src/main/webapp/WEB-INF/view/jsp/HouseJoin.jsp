<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>Linear by TEMPLATED</title>
<style>
#container {
	text-align:left;
	margin:0px 30% 0px 40%;
}

#one {
	width:1024px;
}

.inputlabel{
 	display:inline-block;
 	width:100px;
 	}	

</style>


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
<body class="header">
<jsp:include page="./Header.jsp"></jsp:include>
	<!-- Main -->
	<div id="main">
		<form method="post" action="insertHouse">
		<div id="container">
		<h1>하우스 등록</h1>
		
			<div id="one" style="display: block;">
			
			<fieldset>
				
				<legend>호스팅 1단계</legend>
				<label for="room">방의 개수 : </label>
				<input type="radio" id="rone" name="room" value="1개">
				<label for="rone">1개</label>
				
				<input type="radio" id="rtwo" name="room" value="2개">
				<label for="rtwo">2개</label>
				
				<input type="radio" id="rthree" name="room" value="3개">
				<label for="rthree">3개</label>
				<br/>
				
				<label for="bath">욕실 개수 : </label>
				<input type="radio" id="bone" name="bath" value="1개">
				<label for="bone">1개</label>
				
				<input type="radio" id="btwo" name="bath" value="2개">
				<label for="btwo">2개</label>
				
				<input type="radio" id="bthree" name="bath" value="3개">
				<label for="bthree">3개</label>
				<br/>
				
				<label for="hosting">숙박 인원 : </label>
				<input type="radio" id="hone" name="hosting" value="1개">
				<label for="hone">1명</label>
				
				<input type="radio" id="htwo" name="hosting" value="2개">
				<label for="htwo">2명</label>
				
				<input type="radio" id="hthree" name="hosting" value="3개">
				<label for="hthree">3명</label>
				
				<input type="radio" id="hfour" name="hosting" value="4개">
				<label for="hfour">4명</label>
				<br/>
				
				<label for="market">편의 시설 : </label>
				<input type="checkbox" id="tv" name="tv" value="tv">
				<label for="tv">TV</label>
				<input type="checkbox" id="aircon" name="aircon" value="aircon">
				<label for="aircon">에어컨</label> 
				<input type="checkbox" id="wifi" name="wifi" value="wifi">
				<label for="wifi" >Wi-Fi</label>
				<input type="checkbox" id="elebe" name="elebe" value="elebe">
				<label for="elebe" >엘리베이터</label>
				<input type="checkbox" id="washing" name="washing" value="washing">
				<label for="washing">세탁기</label>
				<p>
				<input type="button" id="nextTwo" value="다음단계">
			</fieldset>
			</div>
			</div>
			<br/>
			<div id="container">
			<div id ="two" style="display: none;">
			<fieldset>
				<legend>호스팅 2단계</legend>
				
				<p>
				<label for="rname" class="inputlabel">숙소 이름 : </label>
				<input type="text" id="rname" name="rname"/>
				</p>
				
				<label for="addr" class="inputlabel">주소 : </label>
				<input type="text" id="addr" name="addr"/> 
				<p>
				
				<p>
				<label for="photo">사진</label> 
				<input type="file" name="photo"/> <br/>
				</p>
				<label for="infor">숙소 안내말</label> <br/>
				<textarea rows="5" cols="35" name="infor"></textarea> <br/>
			</fieldset>	
				<input type="button" id="nextThree" value="다음단계">
			</div>
			</div>
			<br/>
			<div id="container">
			<div id="three" style="display: none;">
			<fieldset>
				<legend>호스팅 3단계</legend>
				
				<img src="/img/mage_tp.jpg"/>
				
				<label for="day"></label>
				<input type="radio" id="rone" name="day" value="일">
				<label for="dd">일</label>
				
				<input type="radio" id="rtwo" name="day" value="주">
				<label for="ww">주</label>
				
				<input type="radio" id="rthree" name="day" value="월">
				<label for="mm">월</label> <br/>
				
				<label for="price">가격 : </label>
				<input type="number" id="price" name="price"/>
				<br/>
			</fieldset>
			<input type="submit" id="next" name="next" value="다음 단계"/> <br/>
			</div>
			</div>
		</form>
		
		</div>
	
<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script>
$(document).ready(function() {
	$("#nextTwo").on("click",function(){
		$("#one").css("display","none");
		$("#two").css("display","block");
	})
	$("#nextThree").on("click",function(){
		$("#two").css("display","none");
		$("#three").css("display","block");
	})
});
</script>
</html>