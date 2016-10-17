<!-- 회원의 마이페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
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
	background: #ebf4fb;
}

#stylized h1 {
	font-size: 16px;
	font-weight: bold;
	margin-bottom: 8px;
	font-family: nanumgothic, dotum;
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
	color: #FFFFFF;
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
   
   <sform:form method="post" action="mypage" modelAttribute="userinfo" enctype="multipart/form-data">
      <p>
         <sform:label path="memId">아이디:</sform:label> 
         <sform:input type="text"  path = "memId"  placeholder="영문+숫자 조합 8 이상" disabled="true"/> 
         <sform:input type="hidden"  path = "memId"  placeholder="영문+숫자 조합 8 이상"/>
      <p>

      <p>
         <label for="memPassword">비밀번호:</label> 
         <input type="password" name="memPassword"  placeholder="영문+숫자 조합 8 이상"/>
      <p>
         <label for="passok">비밀번호 확인</label> 
         <input type="password" name="password"   placeholder="영문+숫자 조합 8 이상">
      <p>
         <sform:label path="memName">이름:</sform:label> 
         <sform:input type="text" path="memName" disabled="true"/>
         <sform:input type="hidden" path="memName"/>
      </p>
      <p>
         <sform:label path="memGender">성별:</sform:label> 
         <sform:radiobutton path="memGender" value="male" label="남"/> 
         <sform:radiobutton path="memGender" value="female" label="여"/>
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
         <sform:label path="memIntro">자기소개:</sform:label><br/>
         <sform:textarea  path="memIntro" cols="45" rows="10"></sform:textarea>
      <p>
         <a href="deletePass"><input type="button" value="탈퇴하기"></a>
      <p>
         <input type="submit" value="수정하기"> 
         <a href="index"><input type="button" value="나가기"></a>
      </sform:form>
      </div>
      </div>
   </div>
<jsp:include page="./Footer.jsp"></jsp:include>
<script></script>
</html>