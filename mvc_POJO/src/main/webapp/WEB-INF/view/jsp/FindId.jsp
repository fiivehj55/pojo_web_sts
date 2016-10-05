<!-- 회원 아이디 찾기 페이지 -->
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
<body class="auto_center">
<jsp:include page="/jsp/Header.jsp"></jsp:include>
	<form action="<%=request.getContextPath()%>/FindId" method="post">
		<h1>아이디 찾기</h1>
		<p>
			<label>이름: </label> 
			<input type="text" id="name" name="name">
		</p>
		<p>
			<label>이메일</label> 
			<input type="email" id="email" name="email">
			<input type="submit" value="확인">
	</form>
	<a href="<%=request.getContextPath()%>/jsp/Login.jsp"><button>뒤로가기</button></a>
<jsp:include page="/jsp/Footer.jsp"></jsp:include>
</body>
<script></script>
</html>