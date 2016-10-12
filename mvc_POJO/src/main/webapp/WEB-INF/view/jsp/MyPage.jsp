<!-- 회원의 마이페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
label {
	width: 100px;
	display: inline-block;
}

#container{
	
	text-align:left;
	width: 1024px;
	margin:0px 40% 0px 40%;
}

</style>
<title>Insert title here</title>
</head>
<body class="">
<jsp:include page="./Header.jsp"></jsp:include>
	<div id="main">
	<div id="container">
		<div id="content" class="">
		<h1>마이페이지</h1>
	<h2>저희 사랑방 손님을 이용해 주셔서 감사합니다.</h2>
	<p>
	
	<sform:form method="post" action="mypage" modelAttribute="userinfo" enctype="multipart/form-data" id="myForm">
		<p>
			<sform:label path="memId">아이디:</sform:label> 
			<sform:input type="text"  path = "memId"  placeholder="영문+숫자 조합 8 이상" disabled="true"/> 
		<p/>

		<p>
			<label for="memPassword">비밀번호:</label> 
			<input type="password" name="memPassword" id="memPassword" placeholder="영문+숫자 조합 8 이상"/>
		<p>
		<span id="passSet"></span>
		<p/>
		<p>
			<label for="passok">비밀번호 확인</label> 
			<input type="password" name="passok"id="passok"	placeholder="영문+숫자 조합 8 이상">
		<p/>
		<p>
		<span id="result"></span>
		<p/>
		<p>	
			<sform:label path="memName">이름:</sform:label> 
			<sform:input type="text" path="memName" />
		</p>
		<p>
			<sform:label path="memGender">성별:</sform:label> 
			<sform:radiobutton path="memGender" value="male" label="남" disabled="true"/> 
			<sform:radiobutton path="memGender" value="female" label="여" disabled="true"/>
		<p>
			<sform:label path="memNa">전화번호:</sform:label>
			<sform:select path="memNa">
				<sform:option value="SKT" label="SKT"/>
				<sform:option value="KT" label="KT"/>
				<sform:option value="U+" label="U+"/> 
			</sform:select> 
			<sform:input type="tel" path="memPhone" placeholder="-빼고 숫자만 입력"/>
		</p>
		<p>
			<sform:label path="memEmail">이메일:</sform:label> 
			<sform:input type="email" path="memEmail" placeholder="pojo@google.com"/>
		</p>
		<p>
			<label for="memImg">프로필 사진:</label> 
			<sform:hidden path="memImg"/>
			<input type="file" name="setImg">
			<div>
			<img src="<%=request.getContextPath()%>/upload/${userinfo.getMemId()}/intro/${userinfo.getMemImg()}">
			</div>
		<p>
			<sform:label path="memIntro">자기소개:</sform:label></br>
			<sform:textarea  path="memIntro" cols="45" rows="10"></sform:textarea>
		<p>
			<a href="deletePass"><input type="button" value="탈퇴하기"></a>
		<p>
			<input type="submit" value="수정하기" id="set"> 
			<a href="<%=request.getContextPath()%>/index2.jsp">
			<input type="button" value="나가기"></a>
		</sform:form>
		</div>
		</div>
	</div>
<jsp:include page="./Footer.jsp"></jsp:include>
<script	src="<%=request.getContextPath()%>/js/validate/dist/jquery.validate.min.js"></script>
<script>
$.validator.addMethod("regex", function(value, element, regexpr) {          
    return regexpr.test(value);
}, "Invalid value");
$("#myForm").validate({
	rules:{
		memName:"required",
		memPhone:{
			required:true,
			regex: /^[0-9]{10,11}$/
			},
		memEmail:"required"
	},
	messages:{
			memName:"Please specify your name",
			memPhone:{required:"Please specify your Phone"},
			memEmail:{required:"Please specify your Email"}
	}
});
$("#memPassword").bind({
	'focus':function(){
			$("#set").prop("disabled",true);
	},
	'focusout':function(){
		$("#passok").focus();
	}
});
$("#memPassword").on("keyup",function(){
	var reg = /^[A-Za-z0-9]{5,10}$/;
	if(reg.test($(this).val())){
		$("#set").prop("disabled",false);
		$("#passSet").html("dd");
	}
	else{

		$("#set").prop("disabled",true);
		$("#passSet").html("Invalid value");
	}
});
$("#passok").on("keyup",function(){
	if($("#memPassword").val() == $(this).val()){
			$("#set").prop("disabled",false);
			$("#result").html("비밀번호가 일치합니다.");
	}
	else{
			$("#set").prop("disabled",true);
			$("#result").html("비밀번호를 확인해주세요.");
	}
		
});
</script>
</html>