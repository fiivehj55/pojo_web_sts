<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Linear by TEMPLATED</title>
<style>
 .inputlabel{
 	display:inline-block;
 	width:100px;
 	}	
 
#main {


 

text-align:center;

margin:0 auto;

}
 
#container {

text-align:left;

margin:0px 40% 0px 40%;
/* 상좌하우 */
}
 </style>
</head>
<body class="homepage">
	<jsp:include page="./Header.jsp"></jsp:include>
	<!-- Main -->
	<div id="main">
	
	<div id="container">
		<h1>회원가입</h1>
				<label for="memId" class="inputlabel">아이디:</label> <input type="text" name="memId"
					id="memId" placeholder="영문+숫자 조합 8 이상" /> <input type="button"
					value="중복확인" id="check">
				<p>
					<br /> <label for="memPassword" class="inputlabel">비밀번호:</label> <input
						type="password" name="memPassword" id="memPassword"
						placeholder="영문+숫자 조합 8 이상" />
				<p>
					<label for="passok" class="inputlabel">비밀번호 확인:</label> <input type="password"
						name="passok" id="passok" placeholder="영문+숫자 조합 8 이상" />
				<p>
					<span id="result"></span>
				<p>
					<label for="memName" class="inputlabel">이름:</label> <input type="text" name="memName" />
				<p>

					<label for="memGender" class="inputlabel">성별:</label> <input type="radio"
						name="memGender" value="male" /> 남 <input type="radio"
						name="memGender" value="female" />여
				<p>

					<label for="memNa" class="inputlabel">전화번호:</label> <select name="memNa">
						<option value="SKT">SKT</option>
						<option value="KT">KT</option>
						<option value="U+">U+</option>
					</select> <input type="text" name="memPhone" placeholder="-빼고 숫자만 입력" />
				<p>

					<label for="memEmail" class="inputlabel">이메일:</label> <input type="email"
						name="memEmail" placeholder="ex) pojo@google.com" />
				<p>

					<label for="memImg" class="inputlabel">프로필 사진:</label> <input type="file"
						name="memImg">
				<p>
					<label for="memIntro" >자기소개:</label>
				<p>
					<textarea cols="45" rows="10" name="memIntro"></textarea>
				<p>
					<input type="submit" value="가입" id="set"> <a href="index"><input
						type="button" value="취소"></a>
			</form>
		</div>
	</div>
	<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script
	src="<%=request.getContextPath()%>/js/validate/dist/jquery.validate.min.js"></script>
<script>
$(document).ready(function() {
	$("#myForm").validate({
		rules:{
			memId:"required",
			memPassword:"required",
			memName:"required",
			memPhone:"required",
			memEmail:"required",
			memGender:"required"
		},
		messages:{
			memId:"Please specify your Id",
				memPassword:"Please specify your Password",
				memName:"Please specify your name",
				memPhone:"Please specify your Phone",
				memEmail:"Please specify your Email",
				memGender:"Please specify your Gender"
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
	<c:url value="/userSerch" var="userSerch" />
	    $("#check").on("click", function(){
	        $.ajax({
	           type:"post",
	           url:"${userSerch}",
	           data:{
	              name:$("#memId").val()
	           },
	           success:function(res){
	        	   if(res=="false"){
	        	   		$("#memId").prop("disabled",true);
	        	   }
	        	   else
	        		   alert("존재하는 아이디입니다.");
	           },
	           error: function(xhr, status, error){
	              alert(error);
	           }
	        });
	     });





});

</script>
</html>