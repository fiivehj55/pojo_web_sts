<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<style type="text/css">
input#chat {
	width: 410px
}

#console-container {
	width: 400px;
}

#console {
	border: 1px solid #CCCCCC;
	border-right-color: #999999;
	border-bottom-color: #999999;
	height: 170px;
	overflow-y: scroll;
	padding: 5px;
	width: 100%;
}

#console p {
	padding: 0;
	margin: 0;
}
</style>

</head>
<body>
	<h1>${user.memId}의 채팅방</h1>
	<hr/>
	<div>
		<p>
			<input type="text" placeholder="메시지를 입력하고 엔터를 누르세요." id="chat" />
		</p>
		<div id="console-container">
			<ul id="msglist"></ul>
		</div>
	</div>
</body>
<script src="http://code.jquery.com/jquery.min.js"></script>
<script>
	$(function(){
		var ws;
		function initialize(){
			var url; 
			console.log(window.location.pathname.substr(0,window.location.pathname.indexOf("/", 1)));
			if (window.location.protocol == 'http:') {

				url = 'ws://localhost:9090/mvc_POJO/chattesting';
			} else {
				url = 'wss://localhost:9090/mvc_POJO//chattesting';
			}
			ws = new WebSocket(url);
			
			$(ws).on("open", function(e){
				$("#msglist").append($("<li>채팅 서버에 연결되었습니다.</li>"));
				ws.send("새로운 클라이언트 입장");
			}).on("message", function(e){
				$("#msglist").append($("<li>"+e.originalEvent.data+"</li>"));
			}).on("error", function(){e}).on("close", function(e){
				console.log("소켓을 닫습니다.");
			});
		}
		
		$("#chat").on("keydown", function(event) {
			if (event.keyCode == 13) {
				var message = $(this).val();
				if (message != '') {
					ws.send(message);
					$(this).val("");
				}
			}
		});
		
		initialize();
	});
</script>
</html>