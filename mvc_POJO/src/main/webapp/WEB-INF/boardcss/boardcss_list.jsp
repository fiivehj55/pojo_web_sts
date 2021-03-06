<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>4번 게시판</title>
</head>


<style type="text/css">
/* boardcss_list 에서 사용되는 글 등록 버튼 테이블 크기 */
#boardcss_list_add_button_table { width: 100%; margin: 0 auto 15px; /*position: relative; background: #bddcff; font-weight: bold;*/ }

/* 화면에 보여지는 글 등록 버튼 */
#boardcss_list_add_button_table .add_button { cursor: pointer; border: 1px solid #bebebe; position: absolute; right: 10px; top: 10px; width: 85px; padding: 6px 0 6px; text-align: center; font-weight: bold; }
#boardcss_list_add_button_table .add_button a { color: #ffffff; }

/* 글 등록 버튼과 글 목록이 겹치지 않게 만들어준 아무것도 아닌것 */
#boardcss_list_add_button_table .boardcss_list_add_button ul { width: 100%; overflow: hidden; height: 10px;}

/* boardcss_list 에서 사용하는 글 목록 테이블 크기*/
.boardcss_list_table { width: 100%; }

/* 화면에 보여지는 글 목록 테이블 */
.list_table { width: 100%; }

/* 화면에 보여지는 caption */
.list_table caption { display: none; }

/* list_table 에서 사용되는 thead */
.list_table thead th { text-align: center; border-top: 1px solid #e5e5e5; border-bottom: 1px solid #e5e5e5; padding: 8px 0; background: #faf9fa; }

/* list_table 에서 사용되는 tbody */
.list_table tbody td { text-align: center;  border-bottom: 1px solid #e5e5e5; padding: 5px 0; }

/* boardcss_list 에서 사용되는 글 검색 테이블 크기 */
#boardcss_list_search { width: 100%; }

#boardcss_list_search ul{ float: right; width: 550px; display: inline; margin-right:-130px; }

#boardcss_list_search ul li { display: inline; font-weight: bold; }

/* input 상자 모양 */
#search { width:200px; height:30px; text-align:center;  border: 1px solid #cfcfcf; vertical-align:middle; line-height:29px; }
#search2 { width:100px; height:30px; text-align:center;  border: 1px solid #cfcfcf; vertical-align:middle; line-height:29px; }

/* 검색 버튼 */
#boardcss_list_search ul li.search_button { cursor: pointer; width: 60px; text-align: center; border: 1px solid #bebebe; padding: 6px 0 6px; vertical-align:middle; font-weight: bold; margin-right:10px; /* background: #77b32f; */ }
#boardcss_list_search ul li.search_button a { color: #ffffff; }

/* 상세 검색버튼 */
#boardcss_list_search ul li.detail_button { cursor: pointer; width: 100px; text-align: center;  border: 1px solid #bebebe; padding: 6px 0 6px; vertical-align:middle; font-weight: bold; /* background: #77b32f; */ }
#boardcss_list_search ul li.detail_button a { color: #ffffff; }

/* 상세검색 테이블 */
.detailSearch { width: 100%; border-top: 1px solid #e5e5e5; }
.detailSearch .detailSearch_table { width: 100%; border-top: 0; border-bottom: 1px solid #e5e5e5; }

.detailSearch .detailSearch_table tbody td { padding: 5px 0; }
.detailSearch .detailSearch_table tbody td.detailSearch_td { vertical-align: middle; height: 30px; }

.detail_td { width: 100%; position: relative; height: 30px; }
.detail_td .detailSearch_button { cursor: pointer; width: 54px; position: absolute; border: 1px solid #bebebe;  padding: 6px 0 6px; text-align: center; font-weight: bold; right: 44px; display: block; /* background: #77b32f; */ }
.detail_td .detailSearch_button a { color: #ffffff; }

/* 상세검색 닫기 */
.closeButton_table { width: 100%; text-align: right; }
.closeButton { width: 85px; text-align: center; display: inline-block; border: 1px solid #bebebe; padding: 6px 0 6px; cursor: pointer; font-weight: bold; }

</style>

<body>

<!-- 등록버튼 시작 -->
<div id="boardcss_list_add_button_table">
	<div class="boardcss_list_add_button">
		<p class="add_button">등록</p>
		<ul></ul>
	</div>
</div>
<!-- 등록버튼 종료 -->

<!-- 테이블 시작 -->
<div class="boardcss_list_table">
	<table class="list_table">
		<caption>판다의 이상한 게시판</caption>
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
				<td>5</td>
				<td>판다의 이상한 게시판 with CSS, DIV</td>
				<td>판다(panda)</td>
				<td>2012-10-19</td>
			</tr>
			<tr>
				<td>4</td>
				<td>판다의 이상한 게시판 with CSS, DIV</td>
				<td>판다(panda)</td>
				<td>2012-10-19</td>
			</tr>
			<tr>
				<td>3</td>
				<td>판다의 이상한 게시판 with CSS, DIV</td>
				<td>판다(panda)</td>
				<td>2012-10-19</td>
			</tr>
			<tr>
				<td>2</td>
				<td>판다의 이상한 게시판 with CSS, DIV</td>
				<td>판다(panda)</td>
				<td>2012-10-19</td>
			</tr>
			<tr>
				<td>1</td>
				<td>판다의 이상한 게시판 with CSS, DIV</td>
				<td>판다(panda)</td>
				<td>2012-10-19</td>
			</tr>
		</tbody>
	</table>
</div>
<!-- 테이블 종료 -->

<!-- 검색 테이블 시작 -->
<div id="boardcss_list_search" style="display:block;">
	<ul>
		<li>제목</li>
		<li><input id="search" type="text" name="search_subject" value="" style="IME-MODE:active;" /></li>
		<li class="search_button">검색</li>
		<li class="detail_button" onclick="document.getElementById('boardcss_list_search').style.display = 'none'; document.getElementById('detailSearch').style.display = 'block';">상세검색▼</li>
	</ul>
</div>
<!-- 검색 테이블 종료 -->

<!-- 상세검색 테이블 시작 -->
<div id="detailSearch" class="detailSearch" style="display:none;">
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
				<td colspan="2"><input id="search2" type="text" name="">~<input id="search2" type="text" name=""></td>
				<td class="detailSearch_td">
					<div class="detail_td">
						<span class="detailSearch_button">검색</span>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	<div class="closeButton_table">
		<a class="closeButton" onclick="document.getElementById('boardcss_list_search').style.display = 'block'; document.getElementById('detailSearch').style.display = 'none';">닫기▲</a>
	</div>
</div>
<!-- 상세검색 테이블 종료 -->

</body>
</html>