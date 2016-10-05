<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
		<form method="post" action="join"  enctype="multipart/form-data">
			<label for="memId">아이디:</label> 
			<input type="text" name="memId" placeholder="영문+숫자 조합 8 이상"/>
			<input type="button" value="중복확인">
			<p><br/>
			
			<label for="memPassword">비밀번호:</label> 
			<input type="password" name="memPassword"  placeholder="영문+숫자 조합 8 이상"/>
			<p>		
			<label for="passok">비밀번호 확인:</label> 
			<input type="password" name="passok" placeholder="영문+숫자 조합 8 이상"/>
			<p>
			
			<label for="memName">이름:</label> 
			<input type="text" name="memName" />
			<p>
			
			<label for="memGender">성별:</label> 
			<input type="radio" name="memGender" value="male"/> 남
			<input type="radio" name="memGender" value="female"/>여
			<p>
			
			<label for="memNa">전화번호:</label>
			<select name="memNa">
				<option value="SKT">SKT</option>
				<option value="KT">KT</option>
				<option value="U+">U+</option>
			</select> 
			<input type="text" name="memPhone" placeholder="-빼고 숫자만 입력"/>
			<p>

			<label for="memEmail">이메일:</label> 
			<input type="email" name="memEmail" placeholder="pojo@google.com"/>
			<p>
		
			<label for="memImg">프로필 사진:</label> 
			<input type="file" name="memImg">
			<p>
			<label for="memIntro">자기소개:</label>

			<textarea cols="45" rows="10" name="memIntro"></textarea>
			<p>
		<input type="submit" value="가입"> 
		</form>
		</div>
	</div>
<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script>
</script>
</html>