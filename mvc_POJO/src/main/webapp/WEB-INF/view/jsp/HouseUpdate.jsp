<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
				<sform:radiobuttons path="houseHosting" items="${hosting }"/>
				<br/>
				
				<label for="market">편의 시설 : </label>
				<sform:checkbox path="houseTv"  label="TV" value="tv"/>
				<sform:checkbox path="houseAircon"  label="에어컨" value="aircon"/>
				<sform:checkbox path="houseWifi"  label="WiFi" value="wifi"/> <br/>
				<sform:checkbox path="houseElebe"  label="엘리베이터" value="elebe"/>
				<sform:checkbox path="houseWashing"  label="세탁기" value="washing"/>
			</fieldset>
			<br/>
			
			<fieldset>
				<legend>하우스 정보 2단계</legend>
				<sform:label path="houseName" class="inputlabel">숙소이름</sform:label><br/>
				<sform:input type="text" path="houseName"/> <br/> 
					
				<sform:label path="houseAddress">주소</sform:label><br/>
				<sform:input type="text" path="houseAddress"/> <br/>
				
				<sform:label path="houseImg">사진</sform:label> <br/>
				<sform:input type="file" path="houseImg"/> <br/>
				
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
			<a href="index"><input type="button" value="나가기"/></a>
			<!-- <a href="search"><input type="button" value="다음 단계"/></a> -->
		</sform:form>
		</div>
	</div>
<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script>
</script>
</html>