<!-- 게시판 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
			<h1>신고게시판 등록</h1>
			<form method="post" action="ReportInsert">
				<label for="category">카테고리</label>
				<select id="category" name="category">
					<option value="피해사례">피해사례</option>
					<option value="블랙리스트 요청">블랙리스트 요청</option>
				</select>
				<br>
				<label for="title">제목</label>
				<input type="text" id="title" name="title" size="50"/>
				
				<label for="content">내용</label>
				<textarea rows="10" cols="50" id="content" name="content"></textarea>
				<input type="submit" value="글 등록"/>
				<a href="report?page=${page}"><input type="button" value="목록"/></a>
			</form>
		</div>
	</div>
	<jsp:include page="./Footer.jsp"></jsp:include>
</head>
<body>

</body>
<script></script>
</html>