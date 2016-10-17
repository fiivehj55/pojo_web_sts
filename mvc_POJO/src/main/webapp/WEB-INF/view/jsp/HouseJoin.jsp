<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Linear by TEMPLATED</title>
<style>
/* 안내문 css */
body {
	background: #FFF3CD;
	font: 18px/22px Arial, Helvetica, sans-serif;
	margin: 0;
}

.text-center {
	text-align: center;
}

.animated-text {
	font-size: 40px;
	line-height: 50px;
	margin: 10px 0;
}

.animated-text a {
	color: #666;
	text-decoration: none;
	text-shadow: 1px 1px 0px #fff, 3px 1px 0px rgba(0, 0, 0, 0.15);
	-webkit-text-shadow: 1px 1px 0px #fff, 3px 1px 0px rgba(0, 0, 0, 0.15);
}

.animated-text a:hover {
	color: #c5a47e;
}

.animated-text span {
	display: inline-block;
	text-transform: uppercase;
	vertical-align: middle;
}

.animated-text span:nth-of-type(1) {
	transition-delay: 0.1s;
	-webkit-transition-delay: 0.1s;
}

.animated-text span:nth-of-type(2) {
	transition-delay: 0.125s;
	-webkit-transition-delay: 0.125s;
}

.animated-text span:nth-of-type(3) {
	transition-delay: 0.15s;
	-webkit-transition-delay: 0.15s;
}

.animated-text span:nth-of-type(4) {
	transition-delay: 0.175s;
	-webkit-transition-delay: 0.175s;
}

.animated-text span:nth-of-type(5) {
	transition-delay: 0.2s;
	-webkit-transition-delay: 0.2s;
}

.animated-text span:nth-of-type(6) {
	transition-delay: 0.225s;
	-webkit-transition-delay: 0.225s;
}

.animated-text span:nth-of-type(7) {
	transition-delay: 0.25s;
	-webkit-transition-delay: 0.25s;
}

.animated-text span:nth-of-type(8) {
	transition-delay: 0.275s;
	-webkit-transition-delay: 0.275s;
	margin-right: 8px;
}

.animated-text span:nth-of-type(9) {
	transition-delay: 0.3s;
	-webkit-transition-delay: 0.3s;
}

.animated-text span:nth-of-type(10) {
	transition-delay: 0.325s;
	-webkit-transition-delay: 0.325s;
}

.animated-text span:nth-of-type(11) {
	transition-delay: 0.350s;
	-webkit-transition-delay: 0.350s;
}

.animated-text span:nth-of-type(12) {
	transition-delay: 0.375s;
	-webkit-transition-delay: 0.375s;
}

.guide-box {
	color: #fefefe;
	border-width: 1px 0;
	border-style: solid;
	border-color: #ddd;
}

.guide-box span {
	margin: 2px 0;
	background: #000;
	padding: 15px;
	display: block;
}
/* 안내문 css 종료 */
#container1 {
	text-align: left;
	margin: 0px 10% 0px 0px;
}

.postcodify_address {
	width: 280px;
}


/* #one {
	width:1024px;
}



.inputlabel{
 	display:inline-block;
 	width:100px;
 	}  */
#view {
	height: 500px;
}

label {
	width: 100px;
	display: inline-block;
}

 .auto_center {
	width: 400px;
	height: 400px;
	padding: 20px;
	margin: 200px auto;
} 

.checkbox {
	position: relative;
	top: -0.375rem;
	margin: 0 1rem 0 0;
	cursor: pointer;
}

/* 라디오버튼 체크박스 css 시작 */
label {
	display: inline-block;
	cursor: pointer;
	position: relative;
	padding-left: 25px;
	margin-right: 15px;
	font-size: 13px;
}

input[type=radio] {
	display: none;
}

label:before {
	content: "";
	display: inline-block;
	width: 20px;
	height: 20px;
	margin-right: 10px;
	position: absolute;
	left: 0;
	bottom: 1px;
	background-color: #FFD8D8;
	box-shadow: inset 0px 2px 3px 0px rgba(0, 0, 0, .3), 0px 1px 0px 0px
		rgba(255, 255, 255, .8);
}

.radio label:before {
	border-radius: 20px;
}

input[type=radio]:checked+label:before {
	content: "\2022";
	color: #FFFFFF;
	font-size: 43px;
	text-align: center;
	line-height: 22px;
}

input[type=checkbox] {
	display: none;
}

.checkbox label:before {
	border-radius: 3px;
}

input[type=checkbox]:checked+label:before {
	content: "\2713";
	text-shadow: 1px 1px 1px rgba(0, 0, 0, .2);
	font-size: 30px;
	color: #f3f3f3;
	text-align: center;
	line-height: 15px;
}
/* 라디오버튼 체크박스 css 종료 */
</style>

</head>
<body class="header">
	<jsp:include page="./Header.jsp"></jsp:include>
	<!-- Main -->
	<div id="view">
		<div id="main">
			<form method="post" action="insertHouse" name="form">
				<div class="animated-text text-center">
						<a href="#">
							<span>MINJEONG님</span> 
							<span>반</span> 
							<span>갑</span> 
							<span>습</span> 
							<span>니</span> 
							<span>다!</span>
						</a>
						<p>호스트가 될 준비를 시작해보세요.
					</div>
				<div id="container1">
					<div id="one" style="display: block;">
						<fieldset>
							<legend>호스팅 1단계 </legend>
							<div class="radio">
								<span>방의개수</span> 
								
								<input type="radio" id="rone" name="room" value="1개"/> 
								<label for="rone">1개</label> 
								
								<input type="radio" id="rtwo" name="room" value="2개"/> 
								<label for="rtwo">2개</label> 
								
								<input type="radio" id="rthree" name="room" value="3개"/> 
								<label for="rthree">3개</label>
								<p>
								<br /> 
								
								<span>욕실개수</span> 
								<input type="radio" id="bone" name="bath" value="1개"/> 
								<label for="bone">1개</label> 
								
								<input type="radio" id="btwo" name="bath" value="2개"/> 
								<label for="btwo">2개</label> 
								
								<input type="radio" id="bthree" name="bath" value="3개"/> 
								<label for="bthree">3개</label>
								<p>

								<span>숙박인원</span> 
								<input type="radio" id="hone" name="hosting" value="1명"/> 
								<label for="hone">1명</label> 
								
								<input type="radio" id="htwo" name="hosting" value="2명"/> 
								<label for="htwo">2명</label> 
								
								<input type="radio" id="hthree" name="hosting" value="3명"/> 
								<label for="hthree">3명</label>

								<input type="radio" id="hfour" name="hosting" value="4명"/>
								<label for="hfour">4명</label>
								<p>
								<br />
							</div>
							
							<div class="checkbox">
								<span>편의시설</span> 
								<input type="checkbox" id="tv" name="tv" value="tv"/> 
								<label for="tv">TV</label> 
								
								<input type="checkbox" id="aircon" name="aircon" value="aircon"/>
								<label for="aircon">에어컨</label> 
								
								<input type="checkbox" id="wifi" name="wifi" value="wifi"/> 
								<label for="wifi">Wi-Fi</label>
								
								<input type="checkbox" id="elebe" name="elebe" value="elebe"/>
								<label for="elebe">엘리베이터</label> 
								
								 <input type="checkbox" id="washing" name="washing" value="washing"/> 
								 <label for="washing">세탁기</label>
								<p>
							</div>
							<a href="#" class="button button-style-1" id="nextTwo">다음단계</a>
						</fieldset>
					</div>
				</div>
				<br />

				<div id="container">
					<div id="two" style="display: none;">
						<fieldset>
							<legend>호스팅 2단계</legend>
							<p>
								<span>숙소이름</span> 
								<input type="text" id="rname" name="rname" size="50" />
							</p>

							<!-- <span>주소</span>
							<input type="text" id="addr" name="addr" size="50"/> 
							<p>			
							<br/>	 -->
							<a href="#" class="button button-style-1" id="postcodify_search_button">주소검색</a>
							 
							<input type="text" id="xx" name="postcodify_address" value="" size="50" /><br />
							상세 주소<input type="text" id="yy" name="postcodify_details" value="" size="40" /><br />
							
							<span>사진</span> 
							<input type="file" name="photo" /> 
							<br />
							
							<span>숙소 안내말</span> <br />
							<textarea rows="10" cols="50" name="infor"></textarea>
							<br /> 
							<a href="#" class="button button-style-1" id="backOne">이전단계</a>
							<a href="#" class="button button-style-1" id="nextThree">다음단계</a>
						</fieldset>
					</div>
				</div>
				<br />

				<div id="container">
					<div id="three" style="display: none;">
						<fieldset>
							<legend>호스팅 3단계 </legend>

							<div class="radio">
								<input type="radio" id="dd" name="day" value="일" /> 
								<label for="dd">일</label> 
								
								<input type="radio" id="ww" name="day" value="주" /> 
								<label for="ww">주</label> 

								<input type="radio" id="mm" name="day" value="월" /> 
								<label for="mm">월</label> <br />

								<label for="price">가격 : </label> 
								<input type="number" id="price" name="price" />
							</div>

							<br />
						</fieldset>
						<a href="#" class="button button-style-1" id="backTwo">이전단계</a> 
						<input type="submit" class="button button-style-1" id="next" name="next" value="하우스등록" />
					</div>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script src="<%=request.getContextPath()%>/js/validate/dist/jquery.validate.min.js"></script>
<script>
function goPopup(){
	var pop = window.open("<%=request.getContextPath()%>/jusoPopup", "pop", "width=570,height=420, scrollbars=yes"); //경로는시스템에맞게수정하여사용
	}
	function jusoCallBack(roadAddrPart1, addrDetail) {
		$("#xx").val(roadAddrPart1);
		$("#yy").val(addrDetail);
	}
	$(document).ready(function() {

		$("#postcodify_search_button").on("click", function() {
			goPopup();
		});
		$("#nextTwo").on("click", function() {
			$("#one").css("display", "none");
			$("#two").css("display", "block");
		})
		$("#nextThree").on("click", function() {
			$("#two").css("display", "none");
			$("#three").css("display", "block");
		})
		$("#backTwo").on("click", function() {

			$("#two").css("display", "block");
			$("#three").css("display", "none");
		})
		$("#backOne").on("click", function() {
			$("#one").css("display", "block");
			$("#two").css("display", "none");
		})
		$("#myForm").validate({
			rules : {
				room : "required",
				bath : "required",
				hosting : "required",
				price : "required",
				photo : "required",
				day : "required"
			},
			messages : {
				room : "Please specify room count",
				bath : "Please specify bath count",
				hosting : "Please specify hosting count",
				price : {required : "Please specify your price"},
				day : "Please specify payment cycle",
				photo : "Must one more picture"
			}
		});
	});
</script>
</html>