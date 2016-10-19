<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<!-- Main -->
	<div class="titleArea">
		<h2>JOIN</h2>
	</div>
	<hr class="layout"></hr>
	<div class="smallArea">
	<h3>기본정보</h3>
	</div>
	<p class="required">
	<img alt="필수" 
	src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
	/ico_required.gif"></img>
	필수입력사항</p>
	<hr><p>
	<form method="post" action="join" enctype="multipart/form-data" id="myform">
	<div class="boardWrite">
		<table border="1" summary="">
			<tbody>
				<tr>
					<th scope="row">ID
					<img alt="필수" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
				<td>
					<input name="memId" class="inputTypeText" id="memId" type="text"/>
					<input type="button" id="check" value="ID 중복확인"/>
					(영문소문자/숫자, 4~16자)
				</td>
				</tr>
				
				<tr>
					<th scope="row">PASSWORD
					<img alt="필수" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
				<td>
					<label for="memPassword"></label> 
					<input type="password" name="memPassword" placeholder="영문+숫자 조합 8 이상"/>
					<!-- <input name="memPassword" id="memPassword" type="password" maxlength="16"></input>
					(영문 + 숫자 조합 8자 이상) -->	
				</td>
				</tr>
				
				<tr>
					<th scope="row">PASSWORD 확인
					<img alt="필수" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
				<td>
					<label for="passok" class="inputlabel"></label>
					<input type="password" name="password" placeholder="영문+숫자 조합 8 이상"/>
				</td>
				</tr>
				
				<tr>
					<th id ="nameTitle" scope="row">이름
					<img alt="필수" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
					<td>
						<label for="memName" class="inputlabel"></label> 
						<input type="text" name="memName" />
						<!-- <span id="nameContents">
							<input name="name" id="name" type="text" maxlength="20"></input>
						</span> -->
					</td>
				
				</tr>
				
				
				<tr>
					<th id ="userGender" scope="row">성별
					<img alt="필수" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
					<td>
						<input type="radio" name="memGender" value="male" class="radio" /> 남
						<input type="radio" name="memGender" value="female" class="radio" />여
					</td>
					
				</tr>
				
				<!-- <tr>
					<th scope="row">일반전화</th>
					<td>
						<select name="phone[]" id="phone1">
						<option value="02">02</option>
						<option value="031">031</option>
						<option value="032">032</option>
						<option value="033">033</option>
						<option value="041">041</option>
						<option value="042">042</option>
						<option value="043">043</option>
						<option value="044">044</option>
						<option value="051">051</option>
						<option value="052">052</option>
						<option value="053">053</option>
						<option value="054">054</option>
						<option value="055">055</option>
						<option value="061">061</option>
						<option value="062">062</option>
						<option value="063">063</option>
						<option value="064">064</option>
						<option value="0502">0502</option>
						<option value="0505">0505</option>
						<option value="0506">0506</option>
						<option value="0507">0507</option>
						<option value="070">070</option>
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
						</select>
						
						-
						<input name="phone[]" id="phone2" type="text" maxlength="4"></input>
						-
						<input name="phone[]" id="phone3" type="text" maxlength="4"></input>
					</td>
				</tr>
				
				<tr>
					<th scope="row">휴대전화
					<img alt="필수" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
					<td>
						<select name="mobile[]" id="mobile1">
						<option value="02">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
						</select>
						
						-
						<input name="mobile[]" id="mobile2" type="text" maxlength="4"></input>
						-
						<input name="mobile[]" id="mobile3" type="text" maxlength="4"></input>
					</td>
				</tr>  -->
				
				<tr>
					<th scope="row">휴대전화
					<img alt="필수" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
					<td>
						<label for="memNa" class="inputlabel"></label>
						<select name="memNa">
							<option value="SKT" label="SKT"/> 
							<option value="KT" label="KT"/>
							<option value="U+" label="U+"/>
						</select> 
						<input type="text" name="memPhone" />
						<!-- <input name="mobile[]" id="mobile3" type="text" maxlength="4"></input> -->
					</td>
				</tr>
				
				<tr>
					<th scope="row">이메일
					<img alt="필수" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
					<td>
						<label for="memEmail" class="inputlabel"></label>
						<input type="email" name="memEmail" />
						<!-- <input name="email" id="email" type="text"></input>
						@
						<input name="email2" id="email2" type="text"></input>
						<select id="email3">
						<option selected ="selected" value=""> --이메일 선택--</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="nate.com">nate.com</option>
						<option value="hotmail.com">hotmail.com</option>
						<option value="yahoo.com">yahoo.com</option>
						<option value="empas.com">empas.com</option>
						<option value="korea.com">korea.com</option>
						<option value="dreamwiz.com">dreamwiz.com</option>
						<option value="gamil.com">gamil.com</option>
						<option value="etc">직접입력</option>
						</select> -->
					</td>
				</tr>
			
			<tr>
				<th scope="row">프로필 사진</th>
				<td>
					<label for="memImg" class="inputlabel"></label> 
					<input type="file" name="memImg" />
				</td>
			</tr>
			
			<tr>
				<th scope="row">자기소개</th>
				<td>
					<label for="memIntro"></label> 
					<textarea cols="40" rows="10" name="memIntro"></textarea>
					<!-- <input type="text" name="memIntro" id="memIntro" /> -->
				</td>
			</tr>					
			</tbody>
		</table>
	</div>
	<hr>
	<div class="smallArea">
	<h3>이용약관 동의</h3>
	</div>
	<p><p><hr>
	
	<div class = "agreeArea">
		<div class="agree">이미지</div>
	</div>
	<p class = "check">
	<span>이용약관에 동의하십니까?</span>
	<input name="agree_service_check[]"
	id="agree_service_check0" type="checkbox"></input>
	<label for ="agree_service_check0">동의함</label>
	</p>
	
	<hr>
	<div class="smallArea">
	<h3>개인정보 수집 및 이용동의</h3>
	</div>
	<p><p><hr>
	<div class = "agreeArea">
		<div class="agree">이미지</div>
	</div>
	<p class = "check">
	<span>이용약관에 동의하십니까?</span>
	<input name="agree_privacy_check[]"
	id="agree_privacy_check0" type="checkbox"></input>
	<label for ="agree_privacy_check0">동의함</label>
	</p>
	
	<input type="submit" value="가입" id="set"> 
	<a href="index"><input type="button" value="취소"></a>	
	<!-- <div class="btn">
		<div class="btnArea">
			<a class="black">회원가입</a>
		</div>
		
		<div class="btnArea">
			<a class="gray">회원가입취소</a>
		</div>
	</div> -->
	</form>
	<!-- <div id="main">
		<div id="container2">
			<div id="stylized" class="myform2">
			
				<h1>회원가입</h1>
				<form method="post" action="join" enctype="multipart/form-data" id="myform">
					<label for="memId" class="inputlabel">ID 
					<span class="small">ID 입력</span></label>
					<input type="text" name="memId" id="memId" />
					<br/>
					<input type="button" id="check" value="중복확인"/>
					<br/>
					
					<label for="memPassword">Password <span class="small">영문+숫자 조합 8 이상</span></label> 
					<input type="password" name="memPassword" placeholder="영문+숫자 조합 8 이상"/>
				
					<label for="passok" class="inputlabel">Password <span class="small">영문+숫자 조합 8 이상</span></label>
					<input type="password" name="password" placeholder="영문+숫자 조합 8 이상"/>
				 
					<label for="memName" class="inputlabel">이름 <span class="small">이름 입력:</span></label> 
					<input type="text" name="memName" />

					<label for="memGender" class="radio">성별:</label>
			 		<div id="radiobox">
						<input type="radio" name="memGender" value="male" class="radio" /> 남
						<input type="radio" name="memGender" value="female" class="radio" />여
					 </div>
					
					<label for="memNa" class="inputlabel">전화번호<span class="small">전화번호:</span></label>
					<select name="memNa">
						<option value="SKT" label="SKT"/> 
						<option value="KT" label="KT"/>
						<option value="U+" label="U+"/>
					</select> 
					<input type="text" name="memPhone" />
				 
					<label for="memEmail" class="inputlabel">Email <span class="small">이메일주소</span></label>
					<input type="email" name="memEmail" />
				 
					<label for="memImg" class="inputlabel">프로필 사진:</label> 
					<input type="file" name="memImg" />
					<p>

					<label for="memIntro">자기소개: <span class="small"></span></label> 
					<textarea cols="40" rows="10" name="memIntro"></textarea>
					<input type="text" name="memIntro" id="memIntro" />

					<input type="submit" value="가입" id="set"> <a href="index">
					<input type="button" value="취소"></a>
					<div class="spacer"></div>
				</form>
			</div>
			</div>
		</div> -->
	
	<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script src="<%=request.getContextPath()%>/js/validate/dist/jquery.validate.min.js"></script>
<script>
	$(document).ready(function() {
		$.validator.addMethod("regex", function(value, element, regexpr) {
			return regexpr.test(value);
		}, "Invalid value");
		$("#myForm").validate({
			rules : {
				memId : {
					required : true,
					regex : /^[A-Za-z0-9]{5,10}$/
				},
				memPassword : {
					required : true,
					regex : /^[A-Za-z0-9]{8,10}$/
				},
				memName : "required",
				memPhone : {
					required : true,
					regex : /^[0-9]{10,11}$/
				},
				memEmail : "required",
				memGender : "required"
			},
			messages : {
				memId : {
					required : "Please specify your Id"
				},
				memPassword : {
					required : "Please specify your Password"
				},
				memName : "Please specify your name",
				memPhone : {
					required : "Please specify your Phone"
				},
				memEmail : {
					required : "Please specify your Email"
				},
				memGender : "Please specify your Gender"
			}
		});
		$("#memPassword").bind({
			'focus' : function() {
				$("#set").prop("disabled", true);
			},
			'focusout' : function() {
				$("#passok").focus();
			}
		});
		$("#passok").on("keyup", function() {
			if ($("#memPassword").val() == $(this).val()) {
				$("#set").prop("disabled", false);
				$("#result").html("비밀번호가 일치합니다.");
			} else {
				$("#set").prop("disabled", true);
				$("#result").html("비밀번호를 확인해주세요.");
			}

		});
		<c:url value="/userSerch" var="userSerch" />
		$("#check").on("click", function() {
			$.ajax({
				type : "post",
				url : "${userSerch}",
				data : {
					name : $("#memId").val()
				},
				success : function(res) {
					if (res == "false") {
						/* $("#memId").prop("disabled", true); */
						alert("사용가능합니다.");
					} else
						alert("존재하는 아이디입니다.");
				},
				error : function(xhr, status, error) {
					alert(error);
				}
			});
		});
	});

</script>
</html>