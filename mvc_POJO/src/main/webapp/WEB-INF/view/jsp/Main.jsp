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

.auto_center {
	width: 400px;
	height: 400px;
	padding: 20px;
	margin: 200px auto;
}
</style>

</head>
<body class="">
	<jsp:include page="./Header.jsp"></jsp:include>
	<div id="main">
		<div id="content" class="auto_center">
			<h1>사랑방손님</h1>
			<input id="text_box" type="text" placeholder="두정동 또는 건물이름을 검색하세요">

			<h3>지금 인기있는 숙소를 만나보세요!</h3>
			<table border=1>
				<tr>
					<td width=250>사진</td>
					<td width=250>사진</td>
				</tr>
				<tr>
					<td>사진</td>
					<td>사진</td>
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
