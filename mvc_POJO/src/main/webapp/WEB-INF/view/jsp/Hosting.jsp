<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#container {
  display: flex;
}
#left-box {
  flex: 1;
  background: red;
}
#center-box {
  flex: 2;
  background: yellow;
  text-align: center;
}
#right-box {
  flex: 1;
  background: blue;
  text-align: right;
}
</style>


</head>
<body>
	<jsp:include page="./Header.jsp"></jsp:include>
<div id='container'>
    <div id='left-box'>왼쪽</div>
    <div id='center-box'>가운데</div>
    <div id='right-box'>오른쪽</div>
</div>
	<jsp:include page="./Footer.jsp"></jsp:include>
</body>
</html>