<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
<script> 
     	var val = purechatApi.get('chatbox.unavailableBehavior'); 
     	purechatApi.set('chatbox.unavailableBehavior', 'email'); 
     	
     	purechatApi.on('chatbox:ready', function () { 
     		 purechatApi.set('chatbox.position', 'bottomLeft'); 
     	     var position = purechatApi.get('chatbox.position'); // Returns 'bottomLeft' 
     	}); 
     	
</script>
</html>