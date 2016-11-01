<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.loginButton, .joinButton {
	color:#fff;
}
.id span, .password span{
	float: left;
	width: 60px;
	height: 32px;
	line-height: 32px;
	padding-left: 10px;
	background: #fff;
	font-size: 12px;
	color: #999;
}

.login fieldset input{
	/* float: left;
	width: 226px;
	height: 28px;
	padding: 2px;
	border: 0none; */
}

.login{
	width: 400px;
	margin: 0 auto;
	padding: 20px 0;
	border: 1px solid #e8e8e8;
}

.find a {
	color: #434343;
}

.btnArea{
	border: 1px solid;
	background: #80BA8E;
	color: #fff;
	padding: 10px 0;
	width: 100%;
	text-align: center;
	
}

legend{
	visibility: hidden;
	position: absolute;
}

#contents{
	width: 1100px;
	margin: 0auto;
}

.login fieldset{
	width: 300px;
	margin: 0 auto;
}

.find a, .link p{
	font-size: 12px;
	color: #999;
}

input{
	font-size: 12px;
}
</style>
</head>
<body class="header">
	<jsp:include page="./Header.jsp"></jsp:include>
	<!-- Main -->

	<div class="titleArea">
		<h2>LOGIN</h2>
	</div>
	<hr class="layout"></hr><p><br>
	<div id="container">
		<div class="contents">
		<div class="login">
			<h3>회원 로그인</h3>
			<fieldset style="border: 1px solid: #e8e8e8;">
				<legend>회원로그인</legend>
				<label class="id"> 
				<span>아이디</span> 
				<input name="member_id" class="inputTypeText" id="member_id" type="text" fw-msg=""
				fw-label="아이디" fw-filter="isFill" value=""></input>
				</label> <br> 
				<label class="password"> 
				<span>비밀번호</span> 
				<input name="member_passwd" class="member_passwd" id="member_passwd"></input>
				</label>

				<!-- <div class="security">
					<input name="check_save_id" id="member_check_save_id0"
						type="checkbox" fw-label="아이디저장"></input> <label
						for="member_check_save_id0">아이디 저장</label> <img alt="보안접속"
						src="http://img.echosting.cafe24.com/design/skin/default/member/ico_acccess.gif"></img>
					
				</div> -->
				
				<div class="btnArea Login center">
					<a class="loginButton" href="<%=request.getContextPath()%>/index2">로그인</a>
				</div>

				<div class="find">
					<ul>
						<li><a href="<%=request.getContextPath()%>/findId">-
								아이디찾기</a></li>
						<li><a href="<%=request.getContextPath()%>/findPass">-
								비밀번호찾기</a></li>
					</ul>
				</div>
				<hr class="layout">
				
				<div class="link">
					<p>회원가입을 하시면 다양한 혜택을 받으실 수 있습니다.</p>
					<div class="btnArea Login center" style="margin-top: 10px;">
						<a class="joinButton" href="<%=request.getContextPath()%>/join">회원가입</a>
					</div>
				</div>
			</fieldset>
			
			</div>
			<p><br>
		</div>
	</div>



	<jsp:include page="./Footer.jsp"></jsp:include>
</body>

<script>
	
</script>
</html>