<!-- 회원 아이디 찾기 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
p, h1, form, button {
	border: 0;
	margin: 0;
	padding: 0;
}

.spacer {
	clear: both;
	height: 1px;
}

.myform {
	margin: 50px;
	width:500px;
	padding: 14px;

}

.myform2 {
	width: 500px;
	padding: 14px;
	margin: 200px auto;

}

#stylized {
	border: solid 2px #b7ddf2;
	background: #FFFFFF;
	
}

#stylized h1 {
	font-size: 16px;
	font-weight: bold;
	margin-bottom: 8px;
	font-family: nanumgoic, dotum;
}

#stylized p {
	font-size: 11px;
	color: #666666;
	margin-bottom: 20px;
	border-bottom: solid 1px #b7ddf2;
	padding-bottom: 10px;
	font-family: dotum;
}

#stylized label {
	display: block;
	font-weight: bold;
	text-align: right;
	width: 140px;
	float: left;
	font-family: tahoma;
}

#stylized .small {
	color: #666666;
	display: block;
	font-size: 11px;
	font-weight: normal;
	text-align: right;
	width: 140px;
	font-family: dotum;
	letter-spacing: -1px;
}

#stylized input {
	float: left;
	font-size: 12px;
	padding: 4px 2px;
	border: solid 1px #aacfe4;
	width: 200px;
	margin: 2px 0 20px 10px;
}
#radiobox input{
	float:none;
	border: solid 1px #aacfe4;
	width: 50px;
	margin: 2px 0 20px 10px;
	font-family: tahoma;
} 
#radiobox {
	float: left;
	text-align:left;
	border: none;
	width: 200px;
	margin: 2px 0 20px 10px;
	font-family: tahoma;
} 
#stylized button {
	clear: both;
	/* margin-left: 150px; */
	width: 100px;
	height: 31px;
	text-align: center;
	line-height: 31px;
	background-color: #000;
	color: #FFFFFF; /* 흰색 */
	font-size: 11px;
	font-weight: bold;
	font-family: tahoma;
}

/* label {
	width: 100px;
	display: inline-block;
}

.auto_center {
	width:1000px;
	height: 400px; 
	 padding: 20px;
	margin: 200px auto;
} */
#container2 {
	text-align: left;
	margin: 0px 40% 0px 40%;
	/* 상좌하우 */
}

.need {
	color: red;
}

.required{
	text-align:right;
}

.boardWrite input{
	vertical-align: middle;
	height:22px;
	line-height:180%;
}

.boardWrite th{
	width:150px;
	text-align:left;
}


</style>

</head>
<body class="header">
	<jsp:include page="./Header.jsp"></jsp:include>
	<div class="titleArea">
		<h2>아이디찾기</h2></div>
	<hr class="layout"></hr>
	<div class="smallArea">
		<div style="margin-left: 35%;">회원가입시 입력한 이메일로 회원님의 아이디 정보가 전송됩니다.</div>
	</div>
	<p class="required">
		<img alt="필수"
			src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
	/ico_required.gif"></img>
	필수입력사항</p>
	<hr><p>
		<div class="boardWrite">
		<form action="<%=request.getContextPath()%>/findId" method="post" style="margin-left: 35%;height:600px;">
		<table border="1" summary="">
			<tbody>
				<tr>
					<th scope="row">이름
					<img alt="필수"
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
				<td>
					<input type="text" id="name" name="name"></input><br/>
				</td>
				</tr>
				
				<tr>
					<th scope="row">이메일
					<img alt="필수"
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
				<td>
					<input type="email" id="email" name="email" maxlength="50" style="width:300px;"></input>
						<br/><input type="submit" class="button button-style-1" style="width:200px;height:50px;"value="확인">			
			<br/><a href="login" class="black">뒤로가기</a>
			<a href="findPass" class="black">비밀번호찾기</a>		
				</td>				
	</tr>
	</tbody>
	</table>
	</form>
	</div>


	<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script></script>
</html>