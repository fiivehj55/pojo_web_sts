<!-- 게시판 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
			<h1>게시판 UPDATE</h1>
			<sform:form method="get" action="bbsUpdate" modelAttribute="question">
				<sform:label path="questNo">글 번호</sform:label>
				<sform:input type="number" path="questNo" disabled="true"/>
				<sform:input type="hidden" path="questNo"/>
				
				<sform:label path="questTitle">제목</sform:label>
				<sform:input type="text" path="questTitle" size="50"/>
				
				
				<sform:label path="questContent">내용</sform:label>
				<sform:textarea rows="10" cols="50" path="questContent"></sform:textarea>
				<input type="submit" value="수정"/>
				<a href="bbsDelete?questNo=${questNo}"><input type="button" value="삭제"/></a>
				<a href="bbs?page=1"><input type="button" value="목록"/></a>
			</sform:form>
		</div>
	</div>
	<jsp:include page="./Footer.jsp"></jsp:include>
</head>
<body>

</body>
<script
	src="<%=request.getContextPath()%>/js/validate/dist/jquery.validate.min.js"></script>

<script></script>
</html>