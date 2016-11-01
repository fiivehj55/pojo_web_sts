<!-- 게시판 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900'
	rel='stylesheet' type='text/css'>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script>
<script src="js/init.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/skel-noscript.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style-desktop.css" />

<style>
.inputReply {
	width: 700px;
	height: 100px;
}

.replyContent {
	height: 100px;
	margin-left: 20px;
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
<body>
	<!-- <div id="boardcss_list_table">
		<h3 class="h3">후기 댓글</h3
		>
		<p>
		<div class="listReply">
			<div class="replyContent">
				<span class="replyId"></span>ID <span class="replyDate"></span>2016.10.14<br />
				<span class="replyTxt"> 방이 너무 좋았습니다. 깔끔히 정리 정돈 잘되있네요. </span>
			</div>
			<hr>

			<div class="replyContent">
				<span class="replyId"></span>ID <span class="replyDate"></span>2016.10.14<br />
				<span class="replyTxt"> 살짝 아쉬웠어요. 수압이 별로 좋지 않네요. </span>
			</div>
			<hr>

			<div class="replyContent">
				<span class="replyId"></span>ID <span class="replyDate"></span>2016.10.14<br />
				<span class="replyTxt"> 좋은 지적 감사합니다. 다음에는 그러지 않도록 할게요. </span>
			</div>
			<hr>

			<div class="replyContent">
				<span class="replyId"></span>ID <span class="replyDate"></span>2016.10.14<br />
				<span class="replyTxt"> 방이 너무 좋았습니다. 깔끔히 정리 정돈 잘되있네요. </span>
			</div>
			<hr>
		</div>
		<textarea name="comment" tabindex="1" class="inputReply" placeholder="여러분의 소중한 댓글을 입력해주세요.">여러분의 소중한 댓글을 입력해주세요.</textarea>
		<button class="addButton">등록</button>
		<br />
	</div> -->

<div id="main">
<div id="content" class="">
	<h3 class="h3">후기 댓글</h3>
	<c:choose>
		<c:when test="${fn:length(reply)>0}">
			<c:forEach items="${reply}" var="row">
				<div id="boardcss_list_table">
					<div class="listReply">
						<div class="replyContent">
							<span class="replyId">${row.memberId}</span> 
							<span class="replyDate"> 
								<fmt:formatDate pattern="yyyy/MM/dd" value="${row.replyDate }" /></span> <br /> 
							<span class="replyTxt">${row.replyContent } </span>
							<c:choose>
								<c:when test="${user.memId == row.memberId }">
									<a href="deletehtr?replyNo=${row.replyNo }" style="float: right; margin-right: 20px;">삭제</a>
								</c:when>
								<c:otherwise>
									로그인 후 이용이 가능합니다.
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
						<form method="post" action="inserthtr">
							<input type="hidden" name="houseNo" value="${houseNo }" />
							<textarea name="replyContent" tabindex="1"
								class="inputReply" placeholder="여러분의 소중한 댓글을 입력해주세요."></textarea>
							<!-- <input type="text" id="questReplyContent" name="questReplyContent"/> -->
							<input type="submit" value="댓글 등록" style="height:100px; width:110px;"/>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script></script>
</html>