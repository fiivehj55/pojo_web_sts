<!-- 게시판 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
.button3 {
	position: relative;
	display: inline-block;
	background: #80BA8E;
	padding: 0.6em 1em;
	text-decoration: none !important;
	font-size: 1.2em;
	font-weight: 300;
	color: #FFF !important;
	-moz-transition: color 0.35s ease-in-out, background-color 0.35s ease-in-out;
	-webkit-transition: color 0.35s ease-in-out, background-color 0.35s ease-in-out;
	-o-transition: color 0.35s ease-in-out, background-color 0.35s ease-in-out;
	-ms-transition: color 0.35s ease-in-out, background-color 0.35s ease-in-out;
	transition: color 0.35s ease-in-out, background-color 0.35s ease-in-out;
	text-align: center;
	border-radius: 0.25em;
}

.button3:hover {
	background: #70AA7E;
	color: #FFF !important;
}

label {
	width: 100px;
	display: inline-block;
}

.auto_center {
	width: 400px;
	height: 400px;
	padding: 10px;
	margin: 200px auto;
}

#right-box {
	float: right;
	padding-top: 1px;
}

#view {
	height: 100%;
}

.button2 {
	position: relative;
	display: inline-block;
	background: #80BA8E;
	padding: 0.6em 1em;
	text-decoration: none !important;
	font-size: 1.2em;
	font-weight: 300;
	color: #FFF !important;
	border-radius: 5px;
}
</style>

</head>
<body>
	<jsp:include page="./Header.jsp"></jsp:include>
	<div class="view">
		<table>
			<tr>
				<td>
					<table width="100%" cellpadding="0" cellspacing="0" border="0">
						<tr	style="background: url('img/table_mid.gif') repeat-x; text-align: center;">
							<td width="5"></td>
							<td>글쓰기</td>
							<td width="5"></td>
						</tr>
					</table>
					<form method="post" action="bbsInsert">
						<table>
							<tr>
								<td>&nbsp;</td>
								<td align="center">제목</td>
								<td><input type="text" id="title" name="title" size="50" maxlength="100"></td>
								<td>&nbsp;</td>
							</tr>
							<tr height="1" bgcolor="#dddddd">
								<td colspan="4"></td>
							</tr>
							<!-- <tr>
								<td>&nbsp;</td>
								<td align="center">이름</td>
								<td><input name="name" size="30" maxlength="50"></td>
								<td>&nbsp;</td>
							</tr> -->
							<tr height="1" bgcolor="#dddddd">
								<td colspan="4"></td>
							</tr>

							<tr height="1" bgcolor="#dddddd">
								<td colspan="4"></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td align="center">내용</td>
								<td>
									<textarea class="textclass" id="content" name="content"	cols="50" rows="13" style="margin: 0px; width: 1214px; height: 441px;"></textarea></td>
								<td>&nbsp;</td>
							</tr>
							<tr height="1">
								<td colspan="4"></td>
							</tr>
							<tr height="1">
								<td colspan="4"></td>
							</tr>
						</table>
						<div id="right-box">
							<input type="submit" class="button2" value="글등록" style="padding:10px;"> 
							<a href="bbs?page=${page }" class="button2">목록</a>
						</div>
					</form>
				</td>
			</tr>
		</table>
	</div>
	<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script></script>
</html>