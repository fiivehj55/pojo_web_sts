<!-- FAQ-자주하는 질문 -->
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
<body class="">
	<jsp:include page="./Header.jsp"></jsp:include>
	<div id="main">
		<div id="content" class="auto_center">
<p><h3><a onclick="divcall('a1');">1.예약은 어떻게 하나요?</a></h3>
	<div class="divs" id="a1">1답변</div>
<p><h3><a onclick="divcall('a2');">2.호스팅은 어떻게 하나요?</a></h3>
	<div class="divs" id="a2">2답변</div>
<p><h3><a onclick="divcall('a3');">3.예약 취소는 어떻게 하나요?</a></h3>
	<div class="divs" id="a3">3답변</div>
<p><h3><a onclick="divcall('a4');">4.호스팅 취소는 어떻게 하나요?</a></h3>
	<div class="divs" id="a4">4답변</div>
<p><h3><a onclick="divcall('a5');">5.호스팅 취소는 어떻게 하나요?</a></h3>
	<div class="divs" id="a5">5답변</div>
<p><h3><a onclick="divcall('a6');">6.계정과 프로필</a></h3>
	<div class="divs" id="a6">6답변</div>
<p>-프로필 수정(탈퇴),프로필 사진 수정은 어떻게 하나요?

		<p>	<a href="#" class="button button-style1" >뒤로가기</a>
		</div>
	</div>

	<jsp:include page="./Footer.jsp"></jsp:include>
</head>
<body>


</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<style>
    .divs {display:none;}
</style>
 
<script>
    function divcall(text1){
        var text2 = "#"+text1;
        $('.divs').css('display', 'none');
        $(text2).css('display', 'block');
    }
</script>

</html>