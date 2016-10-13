<!-- 아이디찾기/비밀번호찾기 선택 -->
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
			<a href="findId"><input type="button" value="아이디찾기"></a> 
			<a href="findPass"><input type="button" value="비밀번호찾기" /></a>
		</div>
	</div>


	<jsp:include page="./Footer.jsp"></jsp:include>
</body>
</html>