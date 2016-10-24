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

<%-- <meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script>
<script src="js/init.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/skel-noscript.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style-desktop.css" /> --%>

<style>
label {
	width: 100px;
	display: inline-block;
}

.auto_center {
	width: 1200px;
	height: 400px;
	padding: 20px;
	margin: 200px auto;
}

#map {
	width: 50%;
	height: 100%;
}
</style>

</head>
<body class="">
	<div class="titleArea">
		<h2>고객 화면에서 예약 확인하기</h2>
	</div>
	<hr class="layout"></hr>
	<div class="smallArea">
		<h3>고객 XXX님의 하우스 예약 현황</h3>
	</div>

	<hr class="layout"></hr>

	<div id="main">
		<div class="boardcss_list_table">
			<table class="list_table">
				<colgroup>
					<col width="5%" />
					<col width="15%" />
					<col width="20%" />
					<col width="50%" />
					<col width="10%" />

				</colgroup>
				<thead>
					<tr>
						<th>번호</th>
						<th>하우스</br> 프로필
						</th>
						<th>하우스 이름</th>
						<th>주소</th>
						<th>가격(월 기준)</br> 체크인아웃
						</th>
					</tr>
				</thead>

				<tbody>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</head>
<body>

</body>




</html>
