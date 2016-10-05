<%@ page language="java" contentType="text/html; charset=UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 댓글</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/CSS/ALL.css">
</head>
<body>
	<h1>후기 댓글</h1>
	<fieldset>
	<form>
		<div>
		<div>
		<hr>
		id date <span>답글 </span>신고<br>
		내용
		<hr>
		</div>
		<div>
		<textarea rows ="3" cols = "100" id = "message"></textarea>
		<input type = "submit" id = "submit" value = "등록">
		</div>
		</div>
	</form>
	</fieldset>
</body>
<script>
</script>
</html>