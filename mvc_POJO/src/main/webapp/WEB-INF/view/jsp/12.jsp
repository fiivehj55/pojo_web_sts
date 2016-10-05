<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<h1>사랑방 손님의 호스트가 되어 보세요!</h1>
1단계
<form action="">
<fieldset>
	<legend>기본정보</legend>
	<label for="room">방의 개수</label>
	<input type="radio" name="room" value="1">1개
	<input type="radio" name="room" value="2">2개
	<input type="radio" name="room" value="3">3개
	<br>
	
	<label for="bathroom">욕실 개수</label>
	<input type="radio" name="bathroom" value="1">1개
	<input type="radio" name="bathroom" value="2">2개
	<input type="radio" name="bathroom" value="3">3개
	<br>
	
	<label for="person">숙박 가능 인원</label>
	<input type="radio" name="person" value="1">1명
	<input type="radio" name="person" value="2">2명
	<input type="radio" name="person" value="3">3명
	<input type="radio" name="person" value="4">4명 이상
	<br>
	<label for="conveniences">편의 시설</label>
	<input type="checkbox" name="conveniences" value="TV">TV
	<input type="checkbox" name="conveniences" value="에어컨">에어컨
	<input type="checkbox" name="conveniences" value="무선인터넷">무선인터넷
	<input type="checkbox" name="conveniences" value="책상">책상
	<input type="checkbox" name="conveniences" value="식기">식기
	<input type="checkbox" name="conveniences" value="엘리베이터">엘리베이터
	<input type="checkbox" name="conveniences" value="세탁기">세탁기
	<br>
	<input type="submit" value="다음 단계">
</fieldset>
</form>
</body>
<script></script>
</html>