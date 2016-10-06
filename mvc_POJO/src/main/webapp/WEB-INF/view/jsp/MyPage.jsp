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
</style>
<title>Insert title here</title>
</head>
<body class="homepage">
<jsp:include page="./Header.jsp"></jsp:include>
	<div id="main">
		<div id="content" class="">
		<h1>마이페이지</h1>
	<h2>저희 사랑방 손님을 이용해 주셔서 감사합니다.</h2>
	<sform:form method="post" action="mypage" modelAttribute="userinfo" enctype="multipart/form-data">
		<p>
			<sform:label path="memId">아이디:</sform:label> 
			<sform:input type="text"  path = "memId"  placeholder="영문+숫자 조합 8 이상"/> 
			<input type="button" value="중복확인">
		</p>

		<p>
			<sform:label path="memPassword">비밀번호:</sform:label> 
			<sform:input path="memPassword"  placeholder="영문+숫자 조합 8 이상"/>
		<p>
			<label for="passok">비밀번호 확인</label> 
			<input type="password" name="password"	placeholder="영문+숫자 조합 8 이상">
		<p>
			<sform:label path="memName">이름:</sform:label> 
			<sform:input type="text" path="memName"/>
		</p>
		<p>
			<sform:label path="memGender">성별:</sform:label> 
			<sform:radiobutton path="memGender" value="men" label="남"/> 
			<sform:radiobutton path="memGender" value="women" label="여"/>
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
			<input type="file" name="memImg">
		<p>
			<sform:label path="memIntro">자기소개:</sform:label>
			<sform:textarea  path="memIntro" cols="45" rows="10"></sform:textarea>
		<p>
			<a href="deletePass"><input type="button" value="탈퇴하기"></a>
		<p>
			<input type="submit" value="수정하기"> 
			<a href="<%=request.getContextPath()%>/index2.jsp">
			<input type="button" value="나가기"></a>
		</sform:form>
		</div>
	</div>
<jsp:include page="./Footer.jsp"></jsp:include>
<script></script>
</html>