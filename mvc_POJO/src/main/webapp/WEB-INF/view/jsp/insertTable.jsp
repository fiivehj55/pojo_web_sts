<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.font{
	font-size:20px;
	font-weight:bold;
}
p, h1, form, button{border:0; margin:0; padding:0;}
.spacer{clear:both; height:1px;}

.myform{
	margin:10px;
	width:1000;
	padding:14px;
}

#stylized{
	border:solid 2px #80ba8e;
	background:rgba(255,255,255,0.6);
}
#stylized h1 {
	font-size:16px;
	font-weight:bold;
	margin-bottom:8px;
	font-family:nanumgothic,dotum;

}
#stylized p{
	font-size:11px;
	color:#666666;
	margin-bottom:20px;
	border-bottom:solid 1px #b7ddf2;
	padding-bottom:10px;
	font-family:dotum;
}
#stylized label{
	display:block;
	font-weight:bold;
	/* text-align:right; */
	/* width:10px; */
	float:left;
	font-family:tahoma;
}
#stylized .small{
	color:#666666;
	display:block;
	font-size:11px;
	font-weight:normal;
	text-align:right;
	width:140px;
	font-family:dotum;
	letter-spacing:-1px;
}
#stylized input{
float:left;
font-size:12px;
padding:4px 2px;
border:solid 1px #bbb;
/* width:200px; */
margin:2px 0 20px 10px;
}
#stylized button{
clear:both;
margin-left:5px;
width:125px;
 height:31px; 
text-align:center;
background-color:#80ba8e;
color:#FFFFFF;
font-size:13px;
font-weight:bold;
font-family:tahoma;
}

.center{
	width:100%;
	height:400;
	padding: 0px;
	margin: 10px auto;

}
.center2{
	margin-left: 11%;
}
</style>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/NaverEditor/js/HuskyEZCreator.js"
	charset="utf-8"></script>
</head>
<body>
<jsp:include page="./Header.jsp"></jsp:include>
<form method="post" action="bbsInsert" >
	<div id="tableHeader">
<img src='css/images/t1.jpg' width="100%" height="5%"/> </div>
	<div class="center">
		<div id="stylized" class="myform">
			<div class="center2">
				<label for="title">제목:</label>
					<input type="text" id="title" name="title" size="100"/>
					<button type="button" class="button button-style1" onclick="submitContents(this)">글등록</button>
					<a href="bbs?page=${page }"><button type="button" class="button button-style1">목록</button></a>
				<textarea name="content" id="ir1" rows="10" cols="100" style="width:70%; height: 412px; display: none;" 
							placeholder="에디터에 기본으로 삽입할 글(수정 모드)이 없다면 이 value 값을 지정하지 않으시면 됩니다.">
				</textarea>
			</div>
		</div>
	</div>
</form>
<jsp:include page="./Footer.jsp"></jsp:include>
	
</body>
<script type="text/javascript">
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
		oAppRef : oEditors,
		elPlaceHolder : "ir1",
		sSkinURI : "<%=request.getContextPath()%>/NaverEditor/SmartEditor2Skin.html",
		fCreator : "createSEditor2"
	});
	
 	function submitContents(elClickedObj) {
		// 에디터의 내용이 textarea에 적용된다.
		oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
		// 에디터의 내용에 대한 값 검증은 이곳에서
		// document.getElementById("ir1").value를 이용해서 처리한다.
		try {
		elClickedObj.form.submit();
		} catch(e) {}	 }
	
	
</script>




</html>