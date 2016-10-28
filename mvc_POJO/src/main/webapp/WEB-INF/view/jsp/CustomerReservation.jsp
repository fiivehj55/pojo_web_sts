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

<style>
/* label {
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
 */

.h1{
	font-size:28pt;
	font-weight:bold;
}

.h3{
	color: #4C4C4C;
	font-weight: bold;
	font-size: 18pt;
}
</style>

</head>
<body class="header">
	<jsp:include page="./Header.jsp"></jsp:include>
	<!-- 맨위 -->
<div class="houseinfo">
<!-- 하우스이름 -->
<h1 class ="h1">hong의 공주빌라</h1>
<p> <br><br>

<!-- 주소 -->
주소: 경기도 성남시 분당구(양팀장이 db에서 따와줘~) 

<p>
<!-- 하우스시설정보 -->
<h3 class = "h3">상세설명</h3>
<h5 class ="h5">
	<img src="css/images/icon1.png" width="50" height="50">
	"방의 개수: 1개"
	
	<img src="css/images/icon2.JPG" width="50" height="60">
	"화장실 개수: 2개"
	
	<img src="css/images/icon3.JPG" width="80" height="50">
	"예약 가능 인원: 3개"
	
	<img src="css/images/icon4.JPG" width="50" height="50">
	"사용가능한 편의시설: 에어컨, WI-FI, 엘리베이터, 세탁기"
</h5>
</div>

<div class="houseBook">
	<label class="book
</div>
<%-- <body class="">
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

</body> --%>
<jsp:include page="./Footer.jsp"></jsp:include>
</html>
