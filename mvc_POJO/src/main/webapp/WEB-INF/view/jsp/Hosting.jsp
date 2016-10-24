<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#container2 {
  display: flex;
}
#left-box2 {
  flex: 1;
  background: red;
}
#center-box2 {
  flex: 2;
  background: yellow;
}
#right-box2 {
  flex: 1;
  background: blue;
}
#right-box {
	float: right;
}
</style>


</head>
<body>
	<jsp:include page="./Header.jsp"></jsp:include>
<div id='container2'>
    <div id='left-box2'>왼쪽</div>
    <div id='center-box2'>가운데</div>
    <div id='right-box2'>오른쪽</div>
</div>
	<jsp:include page="./Footer.jsp"></jsp:include>
</body>
</html>