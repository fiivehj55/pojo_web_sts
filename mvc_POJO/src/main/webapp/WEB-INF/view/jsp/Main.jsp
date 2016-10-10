<!-- 검색된 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
</style>

</head>
<body class="">
	<jsp:include page="./Header.jsp"></jsp:include>

	<div id="main">
		<div id="content" class="auto_center">
			<div id="featured">
				<div class="container">
					<header>
						<input id="text_box" type="text" size="100"
							placeholder="두정동 또는 건물이름을 입력하세요"> <input type="button"
							value="확인">
					</header>
					<p>
						지금 <a href="http://templated.co"> 인기있는 </a>숙소를 만나보세요!
				</div>
			</div>
			<table border=1>
				<colgroup>
					<col width="15%" />
					<col width="45%" />
					<col width="15%" />
					<col width="15%" />
					<col width="10%" />
				</colgroup>
				<tr>
					<th>하우스프로필</th>
					<th>하우스 이름</th>
					<th>주소</th>
					<th>체크인&아웃</th>
					<th>예약고객 프로필</th>
				</tr>
				<tbody>
					<c:choose>
						<c:when test="${fn:length(house) > 0}">
							<c:forEach items="${house }" var="row">
								<tr>
									<td><img src="${row.houseImg }" width="40" height="40"/></td>
									<td><a href="#">${row.houseName }</a></td>
									<td><a>${row.houseAddress }</a></td>
									<td><a>${row.houseDay }</a></td>
									<td><a>${row.memberId }</a></td>									
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="4">조회된 결과가 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
			<h1>${result}</h1>
			<a href="insertHouse"> <input type="button" value="하우스 등록" /></a> <a
				href="insertHouse1"> <input type="button" value="하우스 등록 TEST" /></a>
		</div>
	</div>
	<jsp:include page="./Footer.jsp"></jsp:include>
</head>

<script></script>
</html>
