<!-- 게시판 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/jsp/Header.jsp"></jsp:include>
<h1>게시판</h1>
<table border="1">
	<tr>
		<th>글번호</th>
		<th>제목</th>
		<th>등록 날짜</th>
		<th>작성자</th>
	</tr>
	
	<tr>
		<td>1</td>
		<td>문의합니다</td>
		<td>16.09.15</td>
		<td>황민정</td>
	</tr>


</table>


	<jsp:include page="/jsp/Footer.jsp"></jsp:include>
</body>
<script></script>
</html>