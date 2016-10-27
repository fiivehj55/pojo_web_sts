<!-- 게시판 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

.detail{
	position: relative;
	z-index: 2;
	border-top: 10px solid;
	border-bottom: 1px solid;
	line-height: 1.7;
}

.button a{
	color: #faf9fa;
}

.prev a{
	color: #161616;
}
.next a{
	color: #161616;
}
.prevnext{
background-image:url
				("http://img.echosting.cafe24.com/skin/base_ko_KR/board/ico_move_prev.qif");

}
</style>

</head>
<body class="">
	<jsp:include page="./Header.jsp"></jsp:include>
	<div class="title">
		<h2>문의게시판 VIEW</h2>
	</div>
	<hr class="layout"></hr>
	<div class="boardView">
		<table border="1" summary="">
			<tr>
				<th scope="row">제 목</th>
				<td class="title">${ QuestTitle}</td>
			</tr>
			
			<tr>
				<th scope="row">글 번호</th>
				<td class="number">${questNo }</td>
			</tr>

			<tr>
				<th scope="row">작성자</th>
				<td>${MemberId }
								
				<span class="date">작성일 :<fmt:formatDate pattern="yyyy/MM/dd" value="${QuestDate}" /></span> 
				<span class="hit">조회수 : 1000</span>
				</td>
			</tr>
			
			<tr class="view">
				<td colspan="1">
					<div class="detail">${QuestContent }
					</div>
				</td>
			</tr>
		</table>
	</div>
	
	<form method="post" action="insertrtr">
					<input type="hidden" name="reportNo" value="${reportNo }"/>
					<input type="text" id="reportReplyContent" name="reportReplyContent"/>
					<input type="submit" value="댓글 등록"/>
	</form>
	
	<div class="button">
		<div class="btnArea M b_left">
			<a class="black_s" href="report?page=${page}">목록보기</a>
		</div>
	</div>
	<p>
	<div class=prevnext>
	<ul>
	
	<c:if test="${questionPrevious != null}">
		<li class="prev">
		<strong>이전글</strong>
		<a href="bbsSelectByNo?questNo=${questionPrevious.questNo }">${questionPrevious.questTitle }</a>
		</li>
	</c:if>
	
	<c:if test="${questionNext != null}">
		<li class="next">
		<strong>다음글</strong>
		<a href="bbsSelectByNo?questNo=${questionNext.questNo }">${ questionNext.questTitle}</a>
		</li>
		</c:if>
	</ul>
	</div>
	
</head>

<%-- </head>
<body class="">
	<jsp:include page="./Header.jsp"></jsp:include>
	<div id="main">
		<div id="content" class="auto_center">
			<h1>게시판 VIEW</h1>
			<sform:form method="get" action="bbsUpdateBefore" modelAttribute="question">
				<sform:label path="questNo">글 번호</sform:label>
				<sform:input type="number" path="questNo" disabled="true"/>
				<sform:input type="hidden" path="questNo"/>
				
				<sform:label path="questTitle">제목</sform:label>
				<sform:input type="text" path="questTitle" size="50" disabled="true"/>
				<sform:input type="hidden" path="questTitle" size="50"/>
				
				
				<sform:label path="questContent">내용</sform:label>
				<sform:textarea rows="10" cols="50" path="questContent" disabled="true"></sform:textarea>
				<sform:textarea rows="10" cols="50" path="questContent" style="display:none;"></sform:textarea>
				<input type="submit" value="수정"/>
				<a href="bbsUpdate?questNo=${questNo}"><input type="submit" value="수정"/></a>				
				<a href="bbs?page=${page}"><input type="button" value="목록"/></a>
			</sform:form>
		</div>
	</div>
	<jsp:include page="./Footer.jsp"></jsp:include>
</head> --%>
<body>

</body>
<script></script>
</html>