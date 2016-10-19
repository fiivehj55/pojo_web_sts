<!-- 회원의 마이페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
		<h2>MY PAGE</h2>
	</div>
	<hr class="layout"></hr>
	<div class="smallArea">
		<h3>기본정보</h3>
	</div>
	<p class="required">
		<img alt="필수" src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/ico_required.gif"></img>필수입력사항</p>
	<hr><p>
	<sform:form method="post" action="mypage" modelAttribute="userinfo" enctype="multipart/form-data">
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
					<sform:label path="memId"></sform:label> 
         			<sform:input type="text"  path = "memId"  placeholder="영문+숫자 조합 8 이상" disabled="true"/> 
         			<sform:input type="hidden"  path = "memId"  placeholder="영문+숫자 조합 8 이상"/>
					<!-- <input name="member_id" class="inputTypeText" id="member_id" type="text"/> -->
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
					<!-- <input name="password" id="password" type="password" maxlength="16"></input>
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
					<label for="passok"></label> 
         			<input type="password" name="password" placeholder="영문+숫자 조합 8 이상">
					<!-- <input name="user_password_confirm" id="password" type="password" maxlength="16"></input> -->
				</td>
				</tr>
				
				<tr>
					<th id="nameTitle" scope="row">이름
					<img alt="필수"
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
					<td>
						<sform:label path="memName"></sform:label> 
         				<sform:input type="text" path="memName" disabled="true"/>
         				<sform:input type="hidden" path="memName"/>
						<!-- <span id="nameContents">
							<input name="name" id="name" type="text" maxlength="20"></input>
						</span> -->
					</td>
				
				</tr>
				
				
				<%-- <tr>
					<th id="userGender" scope="row">성별
					<img alt="필수"
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
					<td>
						<sform:label path="memGender"></sform:label>
						<sform:input type="radio" path="memGender" value="male" /> 남
						<sform:input type="radio" path="memGender" value="female"/>여 	
						<input type="radio" name="memGender" value="male" class="radio" /> 남
						<input type="radio" name="memGender" value="female" class="radio" />여
					</td>
					
				</tr> --%>
				
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
				</tr> -->
				
				<tr>
					<th scope="row">휴대전화
					<img alt="필수"
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
					<td>
						<sform:label path="memNa"></sform:label>
						<sform:select path="memNa">
         					<sform:option value="SKT" label="SKT"/>
            				<sform:option value="KT" label="KT"/>
            				<sform:option value="U+" label="U+"/>
         				</sform:select>   
         				<sform:input type="tel" path="memPhone" placeholder="-빼고 숫자만 입력"/>
						<!-- <select name="mobile[]" id="mobile1">
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
						<input name="mobile[]" id="mobile3" type="text" maxlength="4"></input> -->
					</td>
				</tr>
				
				<tr>
					<th scope="row">이메일
					<img alt="필수"
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
					<td>
						<sform:label path="memEmail"></sform:label> 
         				<sform:input type="email" path="memEmail" placeholder="pojo@google.com"/>
						<!-- <input name="email" id="email" type="text"></input>
						@
						<input name="email2" id="email2" type="text"></input>
						<select id="email3">
						<option selected="selected" value=""> --이메일 선택--</option>
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
					<label for="memImg">프로필 사진:</label> 
         			<sform:hidden path="memImg"/>
         			<input type="file" name="setImg">
         			<div>
         				<img src="<%=request.getContextPath()%>/upload/${userinfo.getMemId()}/intro/${userinfo.getMemImg()}" width="150" height="150">
         			</div>
					<!-- <label for="memImg" class="inputlabel"></label> 
					<input type="file" name="memImg" />	 -->
				</td>
			</tr>
			
			<tr>
				<th scope="row">자기 소개</th>
				<td>
					<sform:label path="memIntro"></sform:label>
         			<sform:textarea  path="memIntro" cols="40" rows="10"></sform:textarea>
				</td>
			</tr>					
			</tbody>
		</table>
	</div>
	<hr>
	
	<input type="submit" value="수정하기">
	<a href="deletePass"><input type="button" value="탈퇴하기"></a>
	<a href="index"><input type="button" value="나가기"></a>
	
	<!-- <div class="btn">
		<div class="btnArea">
			<a class="black">뒤로가기</a>
		</div>
		
		<div class="btnArea">
			<a class="gray">수정완료</a>
		</div>
	</div> -->
	</sform:form>
<%-- <title>Insert title here</title>
</head>
<body class="">
<jsp:include page="./Header.jsp"></jsp:include>
   <div id="main">
   <div id="container2">
     <div id="stylized" class="myform2">
      <h1>마이페이지</h1>
   <h2>저희 사랑방 손님을 이용해 주셔서 감사합니다.</h2>
   <p>
   <sform:form method="post" action="mypage" modelAttribute="userinfo" enctype="multipart/form-data">
      <p>
         <sform:label path="memId">아이디:</sform:label> 
         <sform:input type="text"  path = "memId"  placeholder="영문+숫자 조합 8 이상" disabled="true"/> 
         <sform:input type="hidden"  path = "memId"  placeholder="영문+숫자 조합 8 이상"/>
      <p>

      <p>
         <label for="memPassword">비밀번호:</label> 
         <input type="password" name="memPassword" placeholder="영문+숫자 조합 8 이상"/>
      <p>
         <label for="passok">비밀번호 확인</label> 
         <input type="password" name="password" placeholder="영문+숫자 조합 8 이상">
      <p>
         <sform:label path="memName">이름:</sform:label> 
         <sform:input type="text" path="memName" disabled="true"/>
         <sform:input type="hidden" path="memName"/>
      </p>
		<!-- <label for="memGender" class="radio">성별:</label>
			<div id="radiobox">
				<input type="radio" name="memGender" value="male" class="radio" /> 남
				<input type="radio" name="memGender" value="female" class="radio" />여 	
			</div> -->
         <sform:label path="memNa">전화번호:</sform:label>
-        <sform:select path="memNa">
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
         <sform:label path="memIntro">자기소개:</sform:label><br/>
         <sform:textarea  path="memIntro" cols="40" rows="10"></sform:textarea>
      <p>
         <a href="deletePass"><input type="button" value="탈퇴하기"></a>
      <p>
         <input type="submit" value="수정하기"> 
         <a href="index"><input type="button" value="나가기"></a>
      </sform:form>
      </p>
      
      </div>
      </div>
      
   </div> --%>
		<jsp:include page="./Footer.jsp"></jsp:include>
<script></script>

	</html>