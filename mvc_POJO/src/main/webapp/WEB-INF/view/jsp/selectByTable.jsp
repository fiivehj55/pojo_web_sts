<!-- 게시판 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
label {
	width: 100px;
	display: inline-block;
}

.auto_center {
	width: 400px;
	height: 400px;
	padding: 20px;
	margin: 200px auto;
}
</style>

</head>
<body class="">
	<jsp:include page="./Header.jsp"></jsp:include>
	<div id="main">
		<div id="content" class="auto_center">
			<h1>게시판 등록</h1>
			<sform:form method="get" action="bbsSelectByNo" modelAttribute="question">
				<sform:label path="questTitle">제목</sform:label>
				<sform:input type="text" path="questTitle" size="50"/>
				
				<sform:label path="questContent">내용</sform:label>
				<sform:textarea rows="10" cols="50" path="questContent"></sform:textarea>
				
				<input type="submit" value="글 등록"/>
			</sform:form>
		</div>
	</div>
	<jsp:include page="./Footer.jsp"></jsp:include>
</head>
<body>

</body>
<script></script>
</html>