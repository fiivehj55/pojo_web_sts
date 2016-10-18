<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<title>Socket</title>

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
	<h1>SOCKET TEST</h1>
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

				url = 'ws://' + window.location.host + '/chat';
			} else {
				url = 'wss://' + window.location.host + '/chat';
			}
			console.log(url);
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