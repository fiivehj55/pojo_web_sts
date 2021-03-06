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
	width: 100px auto;
	display: inline-block;
}

.auto_center {
	width: 100% auto;
	height: 100% auto;
	padding: 20px;
	margin: 100px auto;
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
<body class="">
	<div id="main">
		<div id="content" class="">	
			<h1>신고게시판</h1>
			<!-- 테이블 시작 -->
			<div class="boardcss_list_table">
				<table class="list_table">
					<colgroup>
						<col width="15%" />
						<col width="10%" />
						<col width="35%" />
						<col width="20%" />
						<col width="20%" />
					</colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th>구분</th>
							<th>제목</th>
							<th>이름</th>
							<th>등록일자</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${fn:length(Report) > 0}">
								<c:forEach items="${Report}" var="row">
									<tr>
										<td>${row.reportNo }</td>
										<td>${row.reportCategory }</td>
										<td><a href="reportView?reportNo=${row.reportNo }">${row.reportSubject }</a></td>
										<td><a>${row.memberId }</a></td>
										<td><fmt:formatDate pattern="yyyy/MM/dd" value="${row.regitDate }" /></td>				
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="5"> 조회된 결과가 없습니다. </td>
								</tr>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>

<!-- 			<div id="boardcss_list_search" style="display: block;">
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
			<a href="report?page=${page-5}">
							<input type="button" value="이전"></a>
				</c:if>
						<a href="report?page=${num}">${num}</a>
				<c:set var="down" value="-3"/>
				<c:forEach var="num" begin="1" end="2">
					<c:set var="down" value="${down+1}"/>
						<c:if test="${0 <page+ down}">
						<a href="report?page=${page+down}">${page+down}</a>
						</c:if>
				</c:forEach>
				<span>${page}</span>
				<c:forEach var="num" begin="1" end="2">
						<c:if test="${page+num <= max}">
						<a href="report?page=${page+num}">${page+num}</a>
						</c:if>
				</c:forEach>
				<c:if test="${page < max-5}">
				
			<a href="report?page=${page+5}">
				<input type="button" value="다음">
				</a>
				</c:if>
			</div>

		</div>
	</div>
</body>
<script></script>
</html>