<!-- 게시판 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script>
<script src="js/init.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/skel-noscript.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style-desktop.css" />

<style>
.inputReply {
	width: 700px;
	height: 100px;
}

.replyContent {
	height: 100px;
	margin-left: 20px;
}

.replyContent1 {
	height: 100px;
	margin-left: 0px;
}

.listReply {
	background: #EAEAEA;
	width: 820px;
}

#boardcss_list_table {
	text-align: left;
	width: 1024px;
	margin: 0px 40% 0px 4%;
}
</style>

</head>
<body class="">
	<div id="main">
		<div id="content" class="">
		<!-- 등록버튼 종료 -->
		<h3 class="h3">QUESTION 댓글</h3>
		<p>
			<!-- 테이블 시작 -->
			<c:choose>
				<c:when test="${fn:length(questionToReply)>0}">
					<c:forEach items="${questionToReply}" var="row">
						<div id="boardcss_list_table">
							<div class="listReply">
								<div class="replyContent">
									<span class="replyId">${row.memberId}</span>
									<span class="replyDate" style="margin-left: 10px;">
										<fmt:formatDate pattern="yyyy/MM/dd" value="${row.questReplyDate }" /></span> <br />
									<span class="replyTxt"> ${row.questReplyContent } </span>
									<c:choose>
										<c:when test="${user.memId == row.memberId }">
											<a href="deleteqtr?questReplyNo=${row.questReplyNo }" style="float: right; margin-right: 20px;">삭제</a>
										</c:when>
										<c:otherwise>
											로그인 후 이용이 가능 합니다.
										</c:otherwise>
									</c:choose>
								</div>	
							</div>
						</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
					조회된 결과가 없습니다.
				</c:otherwise>
			</c:choose>
			<div id="boardcss_list_table">
				<div class="listReply">
					<div class="replyContent1">
						<form method="post" action="insertqtr">
							<input type="hidden" name="questNo" value="${questNo }" />
							<textarea name="questReplyContent" tabindex="1"
								class="inputReply" placeholder="여러분의 소중한 댓글을 입력해주세요."></textarea>
							<!-- <input type="text" id="questReplyContent" name="questReplyContent"/> -->
							<input type="submit" value="댓글 등록" style="height:100px; width:110px;"/>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 상세검색 테이블 종료 -->
</body>
</head>
<body>

</body>
<script></script>
</html>