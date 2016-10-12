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
			<h1>게시판 VIEW</h1>
			<sform:form method="get" action="bbsUpdate" modelAttribute="Report">
				<sform:label path="reportNo">글 번호</sform:label>
				<sform:input type="number" path="reportNo" disabled="true"/>
				<sform:input type="hidden" path="reportNo"/>
				<sform:label path="reportCategory">카테고리</sform:label>
				<sform:input type="text" path="reportCategory" size="50" disabled="true"/>
				
				<sform:label path="reportSubject">제목</sform:label>
				<sform:input type="text" path="reportSubject" size="50" disabled="true"/>
				
				
				<sform:label path="reportContent">내용</sform:label>
				<sform:textarea rows="10" cols="50" path="reportContent" disabled="true"></sform:textarea>
			
				<input type="submit" value="수정"/>
				<a href="ReportDelete?reportNo=${reportNo}"><input type="button" value="삭제"/></a>
				<a href="bbs"><input type="button" value="목록"/></a>
			</sform:form>
		</div>
	</div>
	<jsp:include page="./Footer.jsp"></jsp:include>
</head>
<body>

</body>
<script></script>
</html>