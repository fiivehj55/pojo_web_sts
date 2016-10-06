<!-- 검색된 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="./Header.jsp"></jsp:include>
	
	<h1>사랑방손님</h1>
	<input id="text_box" type="text" placeholder="두정동 또는 건물이름을 검색하세요">

<h3>지금 인기있는 숙소를 만나보세요!</h3>
<table border="1">
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
	<a href="insertHouse"> <input type="button" value="하우스 등록"/></a>
	<a href="insertHouse1"> <input type="button" value="하우스 등록 TEST"/></a>
	<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script></script>
</html>
