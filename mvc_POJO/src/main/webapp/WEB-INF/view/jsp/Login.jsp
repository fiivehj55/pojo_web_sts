<%@page import="com.example.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.loginButton, .joinButton {
	color: #fff;
}

.id, .password {
	/* float: left; */
	width: 60px;
	height: 32px;
	line-height: 32px;
	padding-left: 10px;
	background: #fff;
	font-size: 12px;
	color: #999;
}

.login fieldset input {
	/* float: left;
	width: 226px;
	height: 28px;
	padding: 2px;
	border: 0none; */
	
}

#member_id, #member_passwd {
	/* float: left; */
	width: 226px;
	height: 28px;
	padding: 2px;
	border: 1px solid;
}

.login {
	width: 400px;
	margin: 0 auto;
	padding: 20px 0;
	border: 1px solid #e8e8e8;
}

.find a {
	color: #434343;
	
}

.btnArea {
	border: 1px solid;
	background: #80BA8E;
	color: #fff;
	padding: 10px 0;
	width: 100%;
	text-align: center;
}

legend {
	visibility: hidden;
	position: absolute;
}

#contents {
	width: 1100px;
	margin: 0auto;
}

.login fieldset {
	width: 300px;
	margin: 0 auto;
}

.find a, .link p {
	font-size: 12px;
	color: #999;
}



.link p {
	margin: 0;
	padding: 0;
}

input {
	font-size: 12px;
}

.security {
	margin: 15px 0 0px;
	vertical-align: middle;
	line-height: 1;
}

.login fieldset li {
	float: left;
	padding: 10px 10px 10px 0;
}

.a{
	margin: 6px;
}

.b{
	font-size:10px;
}

.idPass{
	margin:10px;
}
</style>
</head>
<body class="header">
	<jsp:include page="./Header.jsp"></jsp:include>
	<!-- Main -->

	<div class="titleArea">
		<h2>LOGIN</h2>
	</div>
	<hr class="layout"></hr>
	<p>
		<br>
	<div id="container">
		<div class="contents">
			<div class="login">
				<%
					Member user = (Member) session.getAttribute("user");
				%>
				<%
					if (user == null) {
				%>

				<form class="signUp" id="signupForm" action="loginSuccess"
					method="post">
					<fieldset style="border: 1px solid: #e8e8e8;">
						<legend>회원로그인</legend>
						<div class =idPass>
						<div class = "a" style="float: left;">
							<label class="id">ID</label> 
							<input type="text" name="id" id="member_id" />
						</div>
						<div style="float: left;">
							<label class="password">PW</label> 
							<input type="password" name="password" id="member_passwd" />
						</div>
						</div>
						<p><br><br><br>
						
						
							<%-- <a class="loginButton" href="<%=request.getContextPath()%>/index2">로그인</a> --%>
						<div class= "b">							
							<input type="submit" value="  로그인  " class="button button-style1">
						</div>
						<br>
						
						<div class="find">
								<a href="findId"> <input type="button"  value="아이디 찾기" /></a></li>
								<a href="findPass"> <input type="button"  value="비밀번호 찾기" /></a> </li>
						</div>
						
						
						<div class="link">
							<hr class="layout">
							<p>회원가입을 하시면 다양한 혜택을 받으실 수 있습니다.</p>
							<br>
								<%-- <a class="joinButton" href="<%=request.getContextPath()%>/join">회원가입</a> --%>
							<div class= "b">
								<a href="terms"><input type="button" class="button button-style1" value="회원가입"/></a>
							</div>	
						</div>
					</fieldset>
				</form>

				<%
					} else {
				%>
				<%=user.getMemName()%>
				<img
					src="<%=request.getContextPath()%>../css/userimage/<%=user.getMemImg()%>">
				<%
					}
				%>
			</div>
			<p>
				<br>
		</div>
	</div>



	<jsp:include page="./Footer.jsp"></jsp:include>
</body>

<script>
	
</script>
</html>
<%-- <!-- 로그인 페이지 -->
<%@page import="com.example.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title></title>

<!-- <style rel="stylesheet">
body {
   font: 13px/20px 'Helvetica Neue', Helvetica, Arial, sans-sherif;
   color: #333333;
   background: #596778;
}

.signUp {
   position: relative;
   margin: 50px auto;
   width: 280px;
   padding: 33px 25px 29px;
   background: #FFFFFF;
   border-bottom: 1px solid #C4C4C4;
   border-radius: 5px;
   -webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
   box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
}

.signUp:before,
.signUp:after {
   content: '';
   position: absolute;
   bottom: 1px;
   left: 0;
   right: 0;
   height: 10px;
   background: inherit;
   border-bottom: 1px solid #D2D2D2;
   border-radius: 4px;
}

.signUp:after {
   bottom: 3px;
   border-color: #DCDCDC;
}

.signUpTitle {
   margin: -25px -25px 25px;
   padding: 15px 25px;
   line-height: 35px;
   font-size: 26px;
   font-weight: 300;
   color: #777;
   text-align: center;
   text-shadow: 0 1px rgba(255, 255, 255, 0.75);
   background: #F7F7F7;
}

.signUpTitle:before {
   content: '';
   position: absolute;
   top: 0;
   left: 0;
   right: 0;
   height: 8px;
   background: #C4E17F;
   border-radius: 5px 5px 0 0;
   background-image: -webkit-linear-gradient(left, #C4E17F, #C4E17F 12.5%, #F7FDCA 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #db9CBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
   background-image: -moz-linear-gradient(left, #c4e17f, #C4E17F 12.5%, #F7FDCA 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #DB9CBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
   background-image: -o-linear-gradient(left, #C4E17F, #C4E17F 12.5%, #F7FDCC 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #DB9DBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
   background-image: linear-gradient(to right, #C4E17F, #C4E17F 12.5%, #F7FDCA 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #DB9CBE 62.5%, #c49cde 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62c2e4 87.5%, #62C2E4);
}

input {
   font-family: inherit;
   color: inherit;
   -webkit-box-sizing: border-box;
   -moz-box-sizing: border-box;
   box-sizing: border-box;
}

.signUpInput {
   width: 100%;
   height: 50px;
   margin-bottom: 25px;
   padding: 0 15px 2px;
   font-size: 17px;
   background: white;
   border: 2px solid #EBEBEB;
   border-radius: 4px;
   -webkit-box-shadow: inset 0 -2px #EBEBEB;
   box-shadow: inset 0 -2px #EBEBEB;
}

.signUpInput:focus {
   border-color: #62C2E4;
   outline: none;
   -webkit-box-shadow: inset 0 -2px #62C2E4;
   box-shadow: inset 0 -2px #62C2E4;
}

.lt-ie9 .signUpInput {
   line-height: 48px;
}

.signUpButton {
   position: relative;
   vertical-align: top;
   width: 100%;
   height: 54px;
   padding: 0;
   font-size: 22px;
   color: white;
   text-align: center;
   text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
   background: #F0776C;
   border: 0;
   border-bottom: 2px solid #D76B60;
   border-radius: 5px;
   cursor: pointer;
   -webkit-box-shadow: inset 0 -2px #D76B60;
   box-shadow: inset 0 -2px #D76B60;
}

.signUpButton2 {
   position: relative;
   vertical-align: top;
   width: 135px;
   height: 54px;
   padding: 0;
   font-size: 12px;
   color: white;
   text-align: center;
   text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
   background: #F0776C;
   border: 0;
   border-bottom: 2px solid #D76B60;
   border-radius: 5px;
   cursor: pointer;
   -webkit-box-shadow: inset 0 -2px #D76B60;
   box-shadow: inset 0 -2px #D76B60;
}



.signUpButton:active {
   top: 1px;
   outline: none;
   -webkit-box-shadow: none;
   box-shadow: none;
}

:-moz-placeholder {
   color: #AAAAAA;
   font-weight: 300;
}

::-moz-placeholder {
   color: #AAAAAA;
   opacity: 1;
   font-weight: 300;
}

::-webkit-input-placeholder {
   color: #AAAAAA;
   font-weight: 300;
}

:-ms-input-placeholder {
   color: #AAAAAA;
   font-weight: 300;
}

::-moz-focus-inner {
   border: 0;
   padding: 0;
} -->
</style>
</head>


<body>
		<%
			Member user = (Member) session.getAttribute("user");
		%>
		<%
			if (user == null) {
		%>

<form class="signUp" id="signupForm" action="loginSuccess" method="post">

	<h1 class="signUpTitle">아이디 비밀번호를 입력해주세요!</h1>
   
	<input type="text" id="id" name="id" class="signUpInput" placeholder="아이디를 입력하세요" autofocus required>
  
	<input type="password" id="password" name="password" class="signUpInput" placeholder="비밀번호를 입력하세요" required>
   
	<input type="submit" value="로그인" class="signUpButton2">
	<a href="terms"><input type="button" value="회원가입" class="signUpButton2"/></a>
	<a href="findId"> <input type="button" class="signUpButton2" value="아이디 찾기" /></a> 
	<a href="findPass"> <input type="button" class="signUpButton2" value="비밀번호 찾기" /></a> 
   
   
</form>

	<%
			} else {
		%>
		<%=user.getMemName()%>
				<img
			src="<%=request.getContextPath()%>../css/userimage/<%=user.getMemImg()%>"> 
		<%
			}
		%>

</body>
</html> --%>