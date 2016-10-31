<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
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
</head>
<style>
/* 라디오버튼 체크박스 css 시작 */
/* body {
  text-align: center;
  background: #ebf4fb;
  min-height: 95vh;
  margin: 0;
  padding: 0;
  border-bottom: 5vh solid #3694d7;
  font-family: "malgun gothic";
  font-size: 14px;
  letter-spacing:-1px
} */
.dropdown-el {
	margin-top: 0vh;
	min-width: 12em;
	position: relative;
	display: inline-block;
	margin-right: 1em;
	min-height: 2em;
	max-height: 2em;
	overflow: hidden;
	top: .5em;
	cursor: pointer;
	text-align: left;
	white-space: nowrap;
	color: #444;
	outline: none;
	border: .06em solid transparent;
	border-radius: 1em;
	background-color: rgba(128, 186, 142, 0.3);
	transition: 0.3s all ease-in-out;
}

.dropdown-el input {
	display: none;
}

.dropdown-el label {
	border-top: .06em solid #d9d9d9;
	display: block;
	height: 2em;
	line-height: 2em;
	padding-left: 1em;
	padding-right: 3em;
	cursor: pointer;
	position: relative;
	transition: 0.3s color ease-in-out;
}

.dropdown-el label:nth-child(2) {
	margin-top: 2em;
	border-top: .06em solid #d9d9d9;
}

.dropdown-el input:checked+label {
	display: block;
	border-top: none;
	position: absolute;
	top: 0;
}

.dropdown-el input:checked+label:nth-child(2) {
	margin-top: 0;
	position: relative;
}

.dropdown-el::after {
	content: "";
	position: absolute;
	right: 0.8em;
	top: 0.9em;
	border: 0.3em solid #80BA8E;
	border-color: #80BA8E transparent transparent transparent;
	transition: .4s all ease-in-out;
}

.dropdown-el.expanded {
	border: 0.06em solid #80BA8E;
	background: #fff;
	border-radius: .25em;
	padding: 0;
	box-shadow: rgba(0, 0, 0, 0.1) 3px 3px 5px 0px;
	max-height: 15em;
}

.dropdown-el.expanded label {
	border-top: .06em solid #d9d9d9;
}

.dropdown-el.expanded label:hover {
	color: #3694d7;
}

.dropdown-el.expanded input:checked+label {
	color: #3694d7;
}

.dropdown-el.expanded::after {
	transform: rotate(-180deg);
	top: .55em;
}

.textclass {
	width: 500px;
	/* 	vertical-align: middle; */
	height: 150px;
	/* 	line-height:180%; */
}


</style>
<body class="homepage">
	<jsp:include page="./Header.jsp"></jsp:include>
	<!-- Main -->
	<div id="main">
		<div id="content" class="auto_center">
		<h1>하우스 정보</h1>
		<sform:form method="post" action="updateHouse" modelAttribute="house" enctype="multipart/form-data">
			<fieldset>
				<sform:hidden path="houseNo"/>
				<legend>하우스 정보 1단계</legend>
				<sform:label path="houseRoom">방의 개수 : </sform:label>
				<sform:radiobuttons path="houseRoom" items="${rooms}" />
				<br/>
				
				<sform:label path="houseBath">욕실 개수 : </sform:label>
				<sform:radiobuttons path="houseBath" items="${baths}"/>
				<br/>
				 
				<sform:label path="houseHosting">숙박 인원 : </sform:label>
				<sform:radiobuttons path="houseHosting" items="${hosting}"/>
				<br/>
				
				<label for="market">편의 시설 : </label>
				<sform:checkbox path="houseTv" label="TV" value="tv"/>
				<sform:checkbox path="houseAircon" label="에어컨" value="aircon"/>
				<sform:checkbox path="houseWifi" label="Wi-Fi" value="wifi"/> <br/>
				<sform:checkbox path="houseElebe" label="엘리베이터" value="elebe"/>
				<sform:checkbox path="houseWashing" label="세탁기" value="washing"/>
			</fieldset>
			<br/>
			
			<fieldset>
				<legend>하우스 정보 2단계</legend>
				<sform:label path="houseName" class="inputlabel">숙소이름</sform:label><br/>
				<sform:input type="text" path="houseName"/> <br/> 
				<a href="#" class="button button-style-1" id="postcodify_search_button">주소검색</a><br />
				<sform:label path="houseAddress"  size="50" >주소</sform:label><br/>
				<sform:input type="text" path="houseAddress" id="xx"/> <br/>
				<sform:label path="houseAddressDetail"  size="50" >상세 주소</sform:label><br/>
				<sform:input type="text" path="houseAddressDetail" id="yy"/> <br/>
				<label for="mainPhoto">메인 사진</label> 
				<input type="file" name="mainPhoto"/> 
				<br />
				<label for="photo">사진</label> 
				<input type="file" name="photo" multiple="multiple"/> 
				<br />
				<sform:label path="houseInfo">숙소 안내말</sform:label> <br/>
				<sform:textarea rows="5" cols="20" path="houseInfo"></sform:textarea> <br/>
			</fieldset>
			<br/>
			<fieldset>
				<legend>하우스 정보 3단계</legend>
				
				<img src="/img/mage_tp.jpg"/>
				
				<sform:label path="houseDay"></sform:label>
				<sform:radiobuttons path="houseDay" items="${day }"/> <br/>
				
				<sform:label path="housePrice">가격 : </sform:label>
				<sform:input type="number" path="housePrice"/> <br/> 
			</fieldset>
			<input type="submit" id="complete" name="complete" value="수정완료"/> <br/>
			<a href="search?page=1"><input type="button" value="나가기"/></a>
			<!-- <a href="search"><input type="button" value="다음 단계"/></a> -->
		</sform:form>
		</div>
	</div>
	<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script>
function goPopup(){
	var pop = window.open("<%=request.getContextPath()%>/jusoPopup", "pop", "width=570,height=420, scrollbars=yes"); //경로는시스템에맞게수정하여사용
	}
	function jusoCallBack(roadAddrPart1, addrDetail) {
		$("#xx").val(roadAddrPart1);
		$("#yy").val(addrDetail);
	}
</script>
</html>