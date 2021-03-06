<!-- 게시판 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% %>
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
	width: 100% auto;
	height: 100% auto;
	padding: 20px;
	margin: 200px auto;
}
</style>

</head>
<body class="">
	<div id="main">
		<div id="content" class="">
			
			<h1>문의 게시판</h1>
			<!-- 테이블 시작 -->
			<div class="boardcss_list_table">
				<table class="list_table">
					<colgroup>
						<col width="15%" />
						<col width="45%" />
						<col width="20%" />
						<col width="20%" />
					</colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>이름</th>
							<th>등록일자</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${fn:length(Question) > 0}">
								<c:forEach items="${Question }" var="row">
									<tr>
										<td>${row.questNo }</td>
										<td><a href="bbsSelectByNo?questNo=${row.questNo }">${row.questTitle }</a></td>
										<td><a>${row.memberId }</a></td>
										<td><fmt:formatDate pattern="yyyy/MM/dd" value="${row.questDate }" /></td>
										
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="4"> 조회된 결과가 없습니다. </td>
								</tr>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>

			<!-- <div id="boardcss_list_search" style="display: block;">
				<ul>
					<li>제목</li>
					<li><input id="search" type="text" name="search_subject"
						value="" style="IME-MODE: active;" /></li>
					<li class="search_button">검색</li>
					<li class="detail_button"
						onclick="document.getElementById('boardcss_list_search').style.display = 'none'; document.getElementById('detailSearch').style.display = 'block';">상세검색▼</li>
				</ul>
			</div> -->
			<div>
				<c:if test="${page > 5}">
				<a href="bbs?page=${page-5}">
					<input type="button" value="이전">
				</a>
				</c:if>
						<a href="bbs?page=${num}">${num}</a>
				<c:set var="down" value="-3"/>
				<c:forEach var="num" begin="1" end="2">
					<c:set var="down" value="${down+1}"/>
						<c:if test="${0 <page+ down}">
							<a href="bbs?page=${page+down}">${page+down}</a>
						</c:if>
				</c:forEach>
				<span>${page}</span>
				<c:forEach var="num" begin="1" end="2">
						<c:if test="${page+num <= max}">
							<a href="bbs?page=${page+num}">${page+num}</a>
						</c:if>
				</c:forEach>
				<c:if test="${page < max-5}">
					<a href="bbs?page=${page+5}">
						<input type="button" value="다음">
					</a>
				</c:if>
			</div>
		</div>
	</div>
<script></script>
</html>