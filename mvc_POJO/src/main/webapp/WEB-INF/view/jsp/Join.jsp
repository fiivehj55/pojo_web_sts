<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>Linear by TEMPLATED</title>
</head>
<body class="homepage">
<jsp:include page="./Header.jsp"></jsp:include>
	<!-- Main -->
	<div id="main">
		<div id="content" class="auto_center">
		<h1>회원가입</h1>
		<sform:form method="post" action="join" modelAttribute="new_user" enctype="multipart/form-data">
			<sform:label path="memId">아이디:</sform:label> 
			<sform:input type="text" path="memId" placeholder="영문+숫자 조합 8 이상"/>
			<input type="button" value="중복확인">
			<p><br/>
			
			<sform:label path="memPassword">비밀번호:</sform:label> 
			<sform:input type="password" path="memPassword"  placeholder="영문+숫자 조합 8 이상"/>
			<p>		
			<label for="passok">비밀번호 확인:</label> 
			<input type="password" name="passok" placeholder="영문+숫자 조합 8 이상"/>
			<p>
			
			<sform:label path="memName">이름:</sform:label> 
			<sform:input type="text" path="memName" />
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
			<sform:input type="text" path="memPhone" placeholder="-빼고 숫자만 입력"/>
			<p>

			<sform:label path="memEmail">이메일:</sform:label> 
			<sform:input type="email" path="memEmail" placeholder="pojo@google.com"/>
			<p>
		
			<label for="memImg">프로필 사진:</label> 
			<input type="file" name="memImg">
			<p>
			<label for="memIntro">자기소개:</label>

			<textarea cols="45" rows="10" name="memIntro"></textarea>
			<p>
		<sform:button>가입</sform:button>
		</sform:form>
		</div>
	</div>
<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script>
</script>
</html>