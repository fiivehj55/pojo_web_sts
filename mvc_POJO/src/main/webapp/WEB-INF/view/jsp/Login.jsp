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

.auto_center {
	width: 400px;
	height: 400px;
	padding: 20px;
	margin: 200px auto;
}

.inputlabel{
 	display:inline-block;
 	width:100px;
 	}	
</style>	
</head>
<body class="header">
<jsp:include page="./Header.jsp"></jsp:include>

	<div id="main">
		<div id="content" class="auto_center">
		<%
			Member user = (Member) session.getAttribute("user");
		%>
		<%
			if (user == null) {
		%>
		<sform:form  action="loginSuccess" method="post" >
			<p>
				<label for="memberId" class="inputlabel">ID: </label> <input type="text" id="id" name="id">
			</p>
			<p>
				<label for="memberPassWord" class="inputlabel">PASS: </label> <input type="password" id="password"
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
			<%-- <jsp:include page="./Footer.jsp"></jsp:include> --%>
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
	</div>
<jsp:include page="./Footer.jsp"></jsp:include>
</body>

</html>