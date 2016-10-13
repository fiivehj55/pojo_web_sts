<!--마이페이지에서 회원정보 수정하기 전 사용자 비밀번호 입력 페이지  -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style >
	label{
		width: 100px;
		display: inline-block;
	}
	
	.auto_center{
	width:400px;
	height:400px;
	padding:20px;
	margin:200px auto;
	
	}
</style>



</head>
<body class="auto_center">
<h1>비밀번호를 입력해 주세요.</h1>
<form action="deletePass" method="post">
	<p>
	<input type="password" id = "pass" name= "pass">
	<input type="submit" value="OK"/>
	</p>
	</form>
</body>
<script></script>
</html>