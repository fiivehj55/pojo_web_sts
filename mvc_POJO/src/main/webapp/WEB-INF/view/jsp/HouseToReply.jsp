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

<style>
.inputReply {
	width: 750px;
	height: 100px;
}

.replyContent {
	height: 100px;
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
	
	
					<h3 class="h3">후기 댓글</h3>
	<c:choose>
		<c:when test="${fn:length(reply)>0}">
			<c:forEach items="${reply}" var="row">
				<div id="boardcss_list_table">
					<p>
					<div class="listReply">
						<div class="replyContent">
							<span class="replyId">${row.memberId}</span> 
							<span class="replyDate"><fmt:formatDate pattern="yyyy/MM/dd" value="${row.replyDate }" /></span> <br /> 
							<span class="replyTxt"> ${row.replyContent } </span>
						</div>
					</div>
					<textarea name="comment" tabindex="1" class="inputReply" placeholder="여러분의 소중한 댓글을 입력해주세요.">여러분의 소중한 댓글을 입력해주세요.</textarea>
						<button class="addButton">등록</button>
				</div>
				<%-- <tr>
				<td>${row.memberId }</td>
				<td>${row.replyContent }</td>
				<td><fmt:formatDate pattern="yyyy/MM/dd" value="${row.replyDate }" /></td> --%>
				<c:choose>
					<c:when test="${user.memId == row.memberId }">
						<a href="deletehtr?replyNo=${row.replyNo }"><input type="button" value="삭제" /></a>
					</c:when>
					<c:otherwise>
						<td></td>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<tr>
				<td colspan="3">조회된 결과가 없습니다.</td>
			</tr>
		</c:otherwise>
	</c:choose>
</body>
<script></script>
</html>



<%-- 			<!-- 테이블 시작 -->
			<div class="boardcss_list_table">
				<table class="list_table">
					<caption>POJO의 하우스 게시판 댓글</caption>
					<colgroup>
						<col width="33%" />
						<col width="33%" />
						<col width="33%" />
					</colgroup>
					<thead>
						<tr>
							<th>ID</th>
							<th>댓글 내용</th>
							<th>작성일자</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${fn:length(reply)>0}">
								<c:forEach items="${reply}" var="row">
									<tr>
										<td>${row.memberId }</td>
										<td>${row.replyContent }</td>
										<td><fmt:formatDate pattern="yyyy/MM/dd" value="${row.replyDate }" /></td>
										<c:choose>
											<c:when test="${user.memId == row.memberId }">
												<td>
													<a href="deletehtr?replyNo=${row.replyNo }"><input type="button" value="삭제" /></a>
												</td>					
											</c:when>
											<c:otherwise>
												<td></td>
											</c:otherwise>
										</c:choose>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="3">조회된 결과가 없습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
				<form method="post" action="inserthtr">
					<input type="hidden" name="houseNo" value="${houseNo }"/>
					<input type="text" id="replyContent" name="replyContent"/>
					<input type="submit" value="댓글 등록"/>
				</form>
			</div>
			
			<div id="boardcss_list_search" style="display: block;">
				<ul>
					<li>제목</li>
					<li><input id="search" type="text" name="search_subject"
						value="" style="IME-MODE: active;" /></li>
					<li class="search_button">검색</li>
					<li class="detail_button"
						onclick="document.getElementById('boardcss_list_search').style.display = 'none'; document.getElementById('detailSearch').style.display = 'block';">상세검색▼</li>
				</ul>
			</div>

			<!-- 상세검색 테이블 시작 -->
			<div id="detailSearch" class="detailSearch" style="display: none;">
				<table class="detailSearch_table" summary="" border="0">
					<colgroup>
						<col width="15%" />
						<col width="30%" />
						<col width="15%" />
						<col width="40%" />
					</colgroup>
					<tbody>
						<tr>
							<th>제목</th>
							<td><input id="search" type="text" name=""></td>
							<th>이름</th>
							<td><input id="search" type="text" name=""></td>
						</tr>
						<tr>
							<th>등록일자</th>
							<td colspan="2"><input id="search2" type="text" name="">~<input
								id="search2" type="text" name=""></td>
							<td class="detailSearch_td">
								<div class="detail_td">
									<span class="detailSearch_button">검색</span>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="closeButton_table">
					<a class="closeButton"
						onclick="document.getElementById('boardcss_list_search').style.display = 'block'; document.getElementById('detailSearch').style.display = 'none';">닫기▲</a>
				</div>
			</div>
			<!-- 상세검색 테이블 종료 -->
		</div>
	</div>
</head> --%>
