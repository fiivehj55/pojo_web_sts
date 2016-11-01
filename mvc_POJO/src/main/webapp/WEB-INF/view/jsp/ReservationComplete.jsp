<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

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



</style>

</head>
<body>

<jsp:include page="./Header.jsp"></jsp:include>
	<div class="boardcss_list_table">
	<table class="list_table">
		<caption>판다의 이상한 게시판</caption>
		<colgroup>
			<col width="15%" />
			<col width="15%" />
			<col width="45%" />
			<col width="20%" />
			<col width="20%" />
		</colgroup>
		<thead>
			<tr>
				<th>번호</th>
				<th>사진</th>
				<th>제목</th>
				<th>이름</th>
				<th>등록일자</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>5</td>
				<td>사진</td>
				<td>판다의 이상한 게시판 with CSS, DIV</td>
				<td>판다(panda)</td>
				<td>2012-10-19</td>
			</tr>
			<tr>
				<td>4</td>
				<td>사진</td>
				<td>판다의 이상한 게시판 with CSS, DIV</td>
				<td>판다(panda)</td>
				<td>2012-10-19</td>
			</tr>
			<tr>
				<td>3</td>
				<td>사진</td>
				<td>판다의 이상한 게시판 with CSS, DIV</td>
				<td>판다(panda)</td>
				<td>2012-10-19</td>
			</tr>
			<tr>
				<td>2</td>
				<td>사진</td>
				<td>판다의 이상한 게시판 with CSS, DIV</td>
				<td>판다(panda)</td>
				<td>2012-10-19</td>
			</tr>
			<tr>
				<td>1</td>
				<td>사진</td>
				<td>판다의 이상한 게시판 with CSS, DIV</td>
				<td>판다(panda)</td>
				<td>2012-10-19</td>
			</tr>
		</tbody>
	</table>
	</div>

	
	<jsp:include page="./Footer.jsp"></jsp:include>
</body>
</html>