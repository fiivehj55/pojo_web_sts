<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/ProfileAction/css/reset.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/ProfileAction/css/style.css">
<style>
#font{
	font-size:20px;
	font-weight: bold;
	flex: 2;
	text-align: center;
}
#font2{
	color:#80BA8E;
	flex: 2;
	text-align: center;

}
 #center-box3 {
	text-align:center;
	
} 

.button2 {
	width:120px;
	position: relative; 
	display: inline-block;
	background: #80BA8E;
	padding: 0.6em 1em;
	text-decoration: none !important;
	font-size: 1.2em;
	font-weight: 300;
	color: #FFF !important;
	-moz-transition: color 0.35s ease-in-out, background-color 0.35s
		ease-in-out;
	-webkit-transition: color 0.35s ease-in-out, background-color 0.35s
		ease-in-out;
	-o-transition: color 0.35s ease-in-out, background-color 0.35s
		ease-in-out;
	-ms-transition: color 0.35s ease-in-out, background-color 0.35s
		ease-in-out;
	transition: color 0.35s ease-in-out, background-color 0.35s ease-in-out;
	text-align: center;
	border-radius: 0.25em;
}

.button2:hover {
	background: #70AA7E;
	color: #FFF !important;
}

</style>
</head>
<body>
    <div class="container3">
  <div class="avatar-flip">
    <img src="<%=request.getContextPath()%>/upload/${memberName}/intro/${memImg}" height="150" width="150"><!-- 사용자사진 -->
    <img src="<%=request.getContextPath()%>/upload/${memberName}/intro/${memImg}" height="150" width="150">
  </div>
  <div id="font">${memberName}</div> <!-- 사용자아이디 -->
  <div id="font2">${userInfo.memName}</div><!-- 사용자이름 -->
  <p>${userInfo.memPhone}</p><!-- 사용자번호 -->
  <p>${userInfo.memEmail}</p><!-- 사용자이메일 -->
  <p>
	${userInfo.memIntro}
	</p>
	<div id="center-box3">
<p><a href="chatstart?guest=${memberName}" class="button2">메세지보내기</a>
<span id="center-box3"></span>
<a href="javascript:window.open('','_parent','');window.close();" class="button2" >나가기</a>
  </div>  
</div>
</body>
<script>

</script>
</html>