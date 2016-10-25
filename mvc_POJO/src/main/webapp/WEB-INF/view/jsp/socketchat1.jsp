<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8"/>
<title>socket chatting</title>
</head>
<body>
	<fieldset>
		<textarea rows="10" cols="50" id="messageWindow" readonly="true"></textarea> <br/>
		<input type="text" id="inputMessage"/>
		<input type="submit" value="send" onclick="send()"/>
	</fieldset>
</body>
<script src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
	var textarea = document.getElementById("messageWindow");
	var webSocket = new WebSocket('ws://localhost:9090/mvc_POJO/broadcasting');
	var inputMessage = document.getElementById('inputMessage');
	
	webSocket.onerror = function(event){
		onError(event);
	}
	
	webSocket.onopen = function(event){
		onOpen(event);
	}
	
	webSocket.onmessage = function(event){
		onMessage(event);
	}
	
	function onMessage(event){
		textarea.value += "상대 : " + event.data + "\n";
	}
	
	function onOpen(event){
		textarea.value += "연결 성공 \n";
	}
	
	function onError(event){
		alert(event.data);
	}
	
	function send() {
		textarea.value += "나 : " + inputMessage.value + "\n";
		webSocket.send(inputMessage.value);
		inputMessage.value = "";
	}
</script>
</html>