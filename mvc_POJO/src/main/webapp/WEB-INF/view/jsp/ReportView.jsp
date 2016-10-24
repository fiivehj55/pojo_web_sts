<!-- 게시판 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
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
	border-top: 1px solid;
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
		<h2>신고게시판 VIEW</h2>
	</div>
	<hr class="layout"></hr>
	<div class="boardView">
		<table border="1" summary="">
			<tr>
				<th scope="row">제목</th>
				<td class="title">이 사람 신고합니다.</td>
			</tr>
			<hr>

			<tr>
				<th scope="row">구분</th>
				<td class="category">피해사례</td>
			</tr>

			<tr>
				<th scope="row">글번호</th>
				<td>100 <span class="date">작성일 : 2016-10-23</span> 
				<span class="hit">조회수 : 1000</span>
				</td>
			</tr>
			
			<tr class="view">
				<td colspan="2">
					<div class="detail">양희준을 신고합니다. 사기꾼입니다. 양희준을 신고합니다. 사기꾼입니다.
						양희준을 신고합니다. 사기꾼입니다. 양희준을 신고합니다. 사기꾼입니다. 양희준을 신고합니다. 사기꾼입니다. 양희준을
						신고합니다. 사기꾼입니다. 양희준을 신고합니다. 사기꾼입니다. 양희준을 신고합니다. 사기꾼입니다. 양희준을 신고합니다.
						사기꾼입니다. 양희준을 신고합니다. 사기꾼입니다. 양희준을 신고합니다. 사기꾼입니다. 양희준을 신고합니다.
						사기꾼입니다. 양희준을 신고합니다. 사기꾼입니다. 양희준을 신고합니다. 사기꾼입니다. 양희준을 신고합니다.
						사기꾼입니다. 양희준을 신고합니다. 사기꾼입니다. 양희준을 신고합니다. 사기꾼입니다. 양희준을 신고합니다.
						사기꾼입니다.</div>
				</td>
			</tr>
		</table>
	</div>
	
	<div class="button">
		<div class="btnArea M b_left">
			<a class="black_s" href="board/free/list.html?board_act=list&board_no=1">목록보기</a>
		</div>
	</div>
	<p>
	
	<div class=prevnext>
	<ul>
		<li class="prev">
		<strong>이전글</strong>
		<a href="/board/free/read.html?no=122433&board_no=1&page=">홍석진 사기꾼입니다.</a>
		</li>
	
		<li class="next">
		<strong>다음글</strong>
		<a href="/board/free/read.html?no=122433&board_no=1&page=">황민정 사기꾼입니다.</a>
		</li>
	</ul>
	</div>
	
</head>
<body>

</body>

<%-- </head>
<body class="">
	<jsp:include page="./Header.jsp"></jsp:include>
	<div id="main">
		<div id="content" class="">
			<h1>게시판 VIEW</h1>
			<sform:form method="get" action="bbsUpdate" modelAttribute="Report">
				<sform:label path="reportNo">글 번호</sform:label>
				<sform:input type="number" path="reportNo" size="50" disabled="true"/>
				<sform:input type="hidden" path="reportNo"/> <br/>
				
				<sform:label path="reportCategory">구분</sform:label>
				<sform:input type="text" path="reportCategory" size="50" disabled="true"/> <br/>
				
				<sform:label path="reportSubject">제목</sform:label>
				<sform:input type="text" path="reportSubject" size="50" disabled="true"/> <br/>
				
				
				<sform:label path="reportContent">내용</sform:label>
				<sform:textarea rows="10" cols="50" path="reportContent" disabled="true"></sform:textarea> <br/>
			
				<!-- <input type="submit" value="수정"/> -->
				<a href="ReportDelete?reportNo=${reportNo}"><input type="button" value="삭제"/></a>
				<a href="report?page=1"><input type="button" value="목록"/></a>
			</sform:form>
			
		</div>
	</div>
	<jsp:include page="./ReportToReply.jsp"></jsp:include>
	<jsp:include page="./Footer.jsp"></jsp:include>
</head>
--%>

<body>
</body>
<script></script>
</html>