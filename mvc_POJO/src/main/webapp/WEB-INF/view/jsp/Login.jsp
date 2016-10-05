<!-- 로그인 페이지 -->
<%@page import="com.example.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<title></title>

<style>
label {
	width: 100px;
	display: inline-block;
}

input, input[placeholder] {
	font-weight: bold;
	text-align: center;
}
.auto_center{
	background-color: white;
}
</style>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900'
	rel='stylesheet' type='/text/css'>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script>
<script src="js/init.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style-desktop.css" />

</head>

<body class="auto_center">
	<jsp:include page="./Header.jsp"></jsp:include>
	<div class="auto_center">

		<%
			Member user = (Member) session.getAttribute("user");
		%>
		<%
			if (user == null) {
		%>
		<sform:form action="loginSuccess" method="post">
			<p>
				<label>ID: </label> <input type="text" id="id" name="id">
			</p>
			<p>
				<label>PASS: </label> <input type="password" id="password"
					name="password">
			</p>
			<p>
				<a href="findId"> <input type="button" value="아이디 찾기"/></a>
				<a href="findPass"> <input type="button" value="비밀번호 찾기"/></a>
			</p>
			<p>
				<input type="submit" value="로그인"> 
				<a href="join"> <input type="button" value="회원가입"/></a>
			</p>

			<jsp:include page="./Footer.jsp"></jsp:include>
		</sform:form>
		<%
			} else {
		%>
		<%=user.getMemName()%>
		<%-- 		<img
			src="<%=request.getContextPath()%>../css/userimage/<%=user.getMemImg()%>">  --%>
		<%
			}
		%>

	</div>


</body>
</html>