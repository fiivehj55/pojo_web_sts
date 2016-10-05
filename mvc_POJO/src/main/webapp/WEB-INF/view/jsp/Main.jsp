<!-- 검색된 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/jsp/Header.jsp"></jsp:include>
	
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
	
	<jsp:include page="/jsp/Footer.jsp"></jsp:include>
</body>
<script></script>
</html>