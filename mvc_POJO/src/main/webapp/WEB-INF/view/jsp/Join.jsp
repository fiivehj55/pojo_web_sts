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
		<form method="post">
			<label for="id">아이디:</label> 
			<input type="text" name="id" id="id" placeholder="영문+숫자 조합 8 이상">
			<input type="button" value="중복확인">
			<p><br/>
			
			<label for="pass">비밀번호:</label> 
			<input type="password" name="password" id="pass" placeholder="영문+숫자 조합 8 이상">
			<p>		
			<label for="passok">비밀번호 확인:</label> 
			<input type="password" name="password" placeholder="영문+숫자 조합 8 이상">
			<p>
			
			<label for="name">이름:</label> <input type="text" name="name" id="name">
			<p>
			
			<label for="gender">성별:</label> 
			<input type="radio" name="gender" value="men" id="men">남 
			<input type="radio" name="gender" value="women" id="women">여
			<p>
			
			<label for="phone">전화번호:</label>
			<select name="phone" id="phone">
				<option value=SKT>SKT</option>
				<option value=KT>KT</option>
				<option value=U+>U+</option>
			</select> <input type="tel" name="number" placeholder="-빼고 숫자만 입력">
			<p>
			
			<label for="email">이메일:</label> 
			<input type="email" name="email" placeholder="pojo@google.com">
			<p>
		
			<label for="pic">프로필 사진:</label> 
			<input type="text" name="pic" id="pic">
			<button>첨부하기</button>
			<p>
			<label for="intro">자기소개:<textarea cols="45" rows="10"></textarea></label>
			
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