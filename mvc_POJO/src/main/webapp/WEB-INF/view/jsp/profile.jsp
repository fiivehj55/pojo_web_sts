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
    <img src="css/images/pic1.png" height="150" width="150"><!-- 사용자사진 -->
    <img src="css/images/pic1.png" height="150" width="150">
  </div>
  <div id="font">MINJEONG94</div> <!-- 사용자아이디 -->
  <div id="font2">황민정</div><!-- 사용자이름 -->
  <p>010-1234-5678</p><!-- 사용자번호 -->
  <p>jjeong94@gmail.com</p><!-- 사용자이메일 -->
  <p>
	순천역 뒤쪽으로 덕암동 주택가 사이에 2층집에 살고 있어요. 순천에 조용한 주택가 마을을 같이 나누고, 쉼이 되는 순천을 소개하고 싶어요.

	저희 부부와 같이 고양이 두마리와 강아지 3마리가 지내고 있어요.. 
	편안함과 따뜻한 서로가 위로가 되는 만남이 되길 바랍니다. 

	순천시 덕암삼거리길 63

	인스타그램 flowerroad_63</p>
	<div id="center-box3">
<p><a href="chatstart?guest=${memberName}" class="button2">메세지보내기</a>
<span id="center-box3"></span>
<a href="javascript:window.open('','_parent','');window.close();" class="button2" >나가기</a>
  </div>  
</div>
</body>
<script>
function closeMe(){

	var win=window.open(“”,”_self”);

	win.close();

	}


</script>
</html>