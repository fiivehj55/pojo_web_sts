<!-- 검색된 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
label {
	width: 100px;
	display: inline-block;
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
				<input id="text_box" type="text" size="100"
					placeholder="두정동 또는 건물이름을 입력하세요"> <input type="button"
					value="확인">
			</header>
			<p>
				지금 <a href="http://templated.co"> 인기있는 </a>숙소를 만나보세요!
		</div>
	</div>
			<table border=1>
		<tr>
			<td><img src=""/></td>
			<td>Guest house sejong</td>
			<td>개인실 숙박 인원 2명</td>
			<td>후기</td>
			<td>예약고객 프로필</td>
		</tr>
		
		<tr>
			<td><img src=""/></td>
			<td>#천안 터미널 3분  </td>
			<td>집 전체 . 숙박 인원 2명</td>
			<td>후기</td>
			<td>예약고객 프로필</td>
		</tr>
		
		<tr>
			<td><img src=""/></td>
			<td>1 min downtown</td>
			<td>집전체 숙박 인원 3명</td>
			<td>후기</td>
			<td>예약고객 프로필</td>
		</tr>
		
		<tr>
			<td><img src=""/></td>
			<td>달과 별과...그리고...힐링</td>
			<td>개인실 숙박 인원 4명</td>
			<td>후기</td>
			<td>예약고객 프로필</td>
		</tr>
			</table>
			<h1>${result}</h1>
			<a href="insertHouse"> <input type="button" value="하우스 등록" /></a> <a
				href="insertHouse1"> <input type="button" value="하우스 등록 TEST" /></a>

		</div>
	</div>

	<jsp:include page="./Footer.jsp"></jsp:include>
</head>

<script></script>
</html>
