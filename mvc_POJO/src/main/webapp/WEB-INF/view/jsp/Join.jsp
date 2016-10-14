<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Linear by TEMPLATED</title>
<style>
p, h1, form, button{border:0; margin:0; padding:0;}
.spacer{clear:both; height:1px;}

.myform{
	margin:50px;
	width:400px;
	padding:14px;
}

#stylized{
	border:solid 2px #b7ddf2;
	background:#ebf4fb;
}
#stylized h1 {
	font-size:16px;
	font-weight:bold;
	margin-bottom:8px;
	font-family:nanumgothic,dotum;

}
#stylized p{
	font-size:11px;
	color:#666666;
	margin-bottom:20px;
	border-bottom:solid 1px #b7ddf2;
	padding-bottom:10px;
	font-family:dotum;
}
#stylized label{
	display:block;
	font-weight:bold;
	text-align:right;
	width:140px;
	float:left;
	font-family:tahoma;
}
#stylized .small{
	color:#666666;
	display:block;
	font-size:11px;
	font-weight:normal;
	text-align:right;
	width:140px;
	font-family:dotum;
	letter-spacing:-1px;
}
#stylized input{
float:left;
font-size:12px;
padding:4px 2px;
border:solid 1px #aacfe4;
width:200px;
margin:2px 0 20px 10px;
}
#stylized button{
clear:both;
margin-left:150px;
width:125px;
height:31px;
text-align:center;
line-height:31px;
background-color:#000;
color:#FFFFFF;
font-size:11px;
font-weight:bold;
font-family:tahoma;
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

#container {
text-align:left;
margin:0px 40% 0px 40%; 
/* 상좌하우 */
}
.need{
	color: red;
}
 </style>
</head>
<body class="header">
	<jsp:include page="./Header.jsp"></jsp:include>
	<!-- Main -->
	<div id="main">
	
	<div id="container">
	<div id="stylized" class="myform">
	<h1>회원가입</h1>
<label for="memId" class="inputlabel">ID
<span class="small" >ID 입력</span>
</label>
<input type="text" name="name" id="name" /><button id="check">중복확인</button>

<label>Password
<span class="small">패스워드 6자 이상</span>
</label>
<input type="text" name="password" id="password" />

<label for="memPassword" class="inputlabel">Password
<span class="small">패스워드 6자 이상</span>
</label>
<input type="text" name="password" id="password" />

<label for="memName" class="inputlabel">이름
<span class="small" >이름 입력:</span>
</label>
<input type="text" name="memName" />

<label for="memNa" class="inputlabel">전화번호
<span class="small" >전화번호:</span>
</label>
<input type="text" name="memPhone"/>

<label for="memEmail" class="inputlabel">Email
<span class="small">이메일주소</span>
</label>
<input type="email" name="memEmail" />

<label for="memImg" class="inputlabel">프로필 사진:</label> <input type="file" name="memImg">
<p>

<label for="memIntro">자기소개
<span class="small" ></span>
</label>
<input type="text" name="name" id="name" />



<!-- <label>성별
<span class="small" >ID 입력</span>
</label>
<input type="radio" name="memGender" value="male" /> 남 <input type="radio" name="memGender" value="female" />여 -->




<button type="submit">Sign-up</button>
<div class="spacer"></div>
</div>
			
		</div>
	</div>
	<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script
	src="<%=request.getContextPath()%>/js/validate/dist/jquery.validate.min.js"></script>
<script>
$(document).ready(function() {
	$.validator.addMethod("regex", function(value, element, regexpr) {          
	    return regexpr.test(value);
	}, "Invalid value");
	$("#myForm").validate({
		rules:{
			memId:{
				required: true,
				regex:/^[A-Za-z0-9]{5,10}$/
			}
				,
			memPassword:{
				required:true,
				regex: /^[A-Za-z0-9]{8,10}$/
				},
			memName:"required",
			memPhone:{
				required:true,
				regex: /^[0-9]{10,11}$/
				},
			memEmail:"required",
			memGender:"required"
		},
		messages:{
			memId:{required:"Please specify your Id"},
				memPassword:{required:"Please specify your Password"},
				memName:"Please specify your name",
				memPhone:{required:"Please specify your Phone"},
				memEmail:{required:"Please specify your Email"},
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