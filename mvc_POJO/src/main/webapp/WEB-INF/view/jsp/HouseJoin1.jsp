<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Linear by TEMPLATED</title>
</head>
<body class="homepage">
<jsp:include page="./Header.jsp"></jsp:include>
	<!-- Main -->
	<div id="main">
		<div id="content" class="auto_center">
		<h1>하우스 등록 TEST</h1>
		<h1>정보를 제공해주세요.</h1>
		<form method="post" action="insertHouse1" enctype="multipart/form-data">
			<fieldset>
				<legend>호스팅 2단계</legend>
				<label for="houseNo">하우스 번호 : </label>
				<input type="number" name="houseNo" placeholder="하우스 번호"/> <br/> 
				
				<label for="houseName">하우스 이름 : </label>
				<input type="text" name="houseName" placeholder="하우스 이름"/> <br/>
				
				<label for="houseAddress">하우스 주소 : </label>
				<input type="text" name="houseAddress" placeholder="하우스 주소"/> <br/>
				
				<label for="housePrice">하우스 가격 : </label>
				<input type="number" name="housePrice" placeholder="하우스 가격"/> <br/>
				
				<label for="houseScore">하우스 점수 : </label>
				<input type="number" name="houseScore" placeholder="하우스 점수"/> <br/>
				
				<label for="houseInfo">하우스 소개 : </label>
				<input type="text" name="houseInfo" placeholder="하우스 소개"/> <br/>
			</fieldset>
			<input type="submit" value="다음 단계"/> <br/>
			<!-- <a href="insertHouse2"><input type="button" value="다음 단계"/></a> -->
		</form>
		</div>
	</div>
<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script>
</script>
</html>