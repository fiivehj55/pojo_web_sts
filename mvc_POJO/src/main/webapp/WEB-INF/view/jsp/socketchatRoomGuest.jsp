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

/* chatting Box Add */
.chat-box {
	display: inline-block;
	color: #34495e;
	margin: 0 0 30px 0;
}
 
.chat-box li {
    display: table;
    padding: 13px;
    margin: 7px 10px;
    font-size: 18px;
    line-height: 25px;
 
    -webkit-border-top-left-radius: 6px;
    -webkit-border-top-right-radius: 6px;
    -webkit-border-bottom-right-radius: 6px;
    -webkit-border-bottom-left-radius: 6px;
    -moz-border-radius-topleft: 6px;
    -moz-border-radius-topright: 6px;
    -moz-border-radius-bottomright: 6px;
    -moz-border-radius-bottomleft: 6px;
    border-top-left-radius: 6px;
    border-top-right-radius: 6px;
    border-bottom-right-radius: 6px;
    border-bottom-left-radius: 6px;
}
 
.chat-box .odd {
    background-color: #ecf0f1;
    max-width: 60%;
    clear: both;
    float: left;
}
 
.chat-box .odd:after {
    content: ' ';
    position: relative;
    top: auto;
    bottom: auto;
    border: 12px solid;
    border-color: transparent transparent #ecf0f1 transparent;
    margin: 0 0 0 -24px;
    float: left;
}
 
 
.chat-box .even {
    background-color: #C1E4EC;
    max-width: 60%;
    height: auto;
    clear: both;
    float: right;
}
 
.chat-box .even:after {
    content: ' ';
    position: relative;
    bottom: auto;
    border: 12px solid;
    border-color: transparent transparent #C1E4EC transparent;
    margin: 0 -24px 0 0;
    float: right;
}
 
.chat-box li span {
    padding: 0 0 5px;
    color: #7f8c8d;
    display: block;
}

/* 홀수 row의 색 */
.chat-box .odd {
    background-color: #ecf0f1;
}
 
/* 짝수 row의 색 */
.chat-box .even {
    background-color: #e1e5e5;
}

/* 첫번째 row의 끝을 둥글게 한다 */
.chat-box li:first-child {
    -webkit-border-top-left-radius: 6px;
    -webkit-border-top-right-radius: 6px;
    -moz-border-radius-topleft: 6px;
    -moz-border-radius-topright: 6px;
    border-top-left-radius: 6px;
    border-top-right-radius: 6px;<br />
}
 
/* 마지막 row의 끝을 둥글게 한다 */
.chat-box li:last-child {
    -webkit-border-bottom-right-radius: 6px;
    -webkit-border-bottom-left-radius: 6px;
    -moz-border-radius-bottomright: 6px;
    -moz-border-radius-bottomleft: 6px;
    border-bottom-right-radius: 6px;
    border-bottom-left-radius: 6px;
}
.div1{
	width:100%;
	height: 600px;
    background: aqua;
    overflow: auto;
}
</style>

</head>
<body>
	<h1>${user.memId}의 채팅방</h1>
	<hr/>
	<div>
		<%-- <input type="text" placeholder="방 이름을 넣으세요." id="room" value="${user.memId }" />
		<button id="btnRoom">방 만들기</button>
		 --%>
		 <!-- <div id="console-container">
			<ul id="msglist"></ul>
		</div> -->
		<div id="div1" class="div1">
			<ul class="chat-box"></ul>
		</div>
		<p>
			<input type="text" placeholder="메시지를 입력하고 엔터를 누르세요." id="chat" />
		</p>
	</div>
</body>
<script src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="http://jsgetip.appspot.com"></script>
<script>
	//'ws://210.125.213.51:9090/mvc_POJO/chatprivate';
	$(function(){
		var ws;
		initialize("${roomName}");
		function initialize(roomName){
			var url; 
			var users = "${user.memId}";
			console.log(window.location.pathname.substr(0,window.location.pathname.indexOf("/", 1)));
			if (window.location.protocol == 'http:') {
				url = 'ws://localhost:9090/mvc_POJO/chatprivate';
			} else {
				url = 'wss://localhost:9090/mvc_POJO/chatprivate';
			}
			ws = new WebSocket(url+"?room="+roomName);
			
			$(ws).on("open", function(e){
				$(".chat-box").append($("<li>채팅 서버에 연결되었습니다.</li>"));
				ws.send("새로운 클라이언트 입장");
			}).on("message", function(e){
				var str = e.originalEvent.data.split(':');
				var rid = str[0].trim();
				var rmsg = "";
				for(var i=1; i<str.length; i++){
					rmsg += str[i];
				}
				console.log("str : " + str);
				console.log("rid : " + rid);
				console.log("rmsg : " + rmsg);
				console.log("users: " + users);
				
				if(users==rid){ 
					$(".chat-box").append($("<li class='even'><span>"+e.originalEvent.data+"</span></li>"));
				}else{
					$(".chat-box").append($("<li class='odd'><span>"+e.originalEvent.data+"</span></li>"));
				}
			}).on("error", function(){e}).on("close", function(e){
				console.log("소켓을 닫습니다.");
			});
		}
		
		$("#chat").on("keydown", function(event) {
			if (event.keyCode == 13) {
				var message = $(this).val();
				if (message != '') {
					ws.send("${user.memId} : " + message);
					$(this).val("");
				}
			}
		});
	});
</script>
</html>