<!-- 게시판 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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

</head>
<body class="">
	<jsp:include page="./Header.jsp"></jsp:include>
	<div id="main">
		<div id="content" class="auto_center">
			<!-- 등록버튼 시작 -->
			<div id="boardcss_list_add_button_table">
				<div class="boardcss_list_add_button">
					<p class="add_button">등록</p>
					<ul></ul>
				</div>
			</div>
			<!-- 등록버튼 종료 -->
			
			<h1>게시판</h1>
			<!-- 테이블 시작 -->
			<div class="boardcss_list_table">
				<table class="list_table">
					<caption>POJO의 1vs1 게시판</caption>
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
						<tr>
							<td><h1>5</h1></td>
							<td><a>제목</a></td>
							<td><a>이름</a></td>
							<td><a>등록일자</a></td>
						</tr>
					</tbody>
				</table>
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
	${Question}
	<jsp:include page="./Footer.jsp"></jsp:include>
</head>
<body>

</body>
<script></script>
</html>