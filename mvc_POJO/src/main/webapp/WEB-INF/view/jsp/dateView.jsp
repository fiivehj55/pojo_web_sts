<!-- FAQ-자주하는 질문 -->
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#main{
 width: 100%;
}
.day{
float:left;
 width: 14%;
 border: 1px solid;
}
.date{
float:left;
 width: 14%;
 border: 1px solid;
}
.next{
float:left;
 width: 14%;
 border: 1px solid;
 color: gray;
}.pre{
float:left;
 width: 14%;
 border: 1px solid;
 color: gray;
}
</style>
</head>
<body>
<%  Calendar today = Calendar.getInstance();  
 	int toMonth = today.get(Calendar.MONTH);
	today.set(Calendar.MONTH, toMonth-1);
	int pre = today.getActualMaximum(Calendar.DATE);
	today.set(Calendar.MONTH, toMonth);
    int hr = today.get(Calendar.DATE);
    today.set(Calendar.DATE, 1);
    int start = today.get(Calendar.DAY_OF_WEEK);
    int end = today.getActualMaximum(Calendar.DATE);
%>
<div id="main">

<h1><%=today.get(Calendar.YEAR)%>년 <%=today.get(Calendar.MONTH)+1%>월</h1>
<h2><%=today.get(Calendar.DAY_OF_WEEK)%></h2>
<div class="day">
일
</div>
<div class="day">
월
</div>
<div class="day">
화
</div>
<div class="day">
수
</div>
<div class="day">
목
</div>
<div class="day">
금
</div>
<div class="day">
토
</div>
<% 
	for(int i  = 1; i <= 42;i++){
%>
	<%
		if(i>=start){
			if(i-start+1 <=end){
	%>		
	<div class="date">	
			<%=i-start+1 %>
			</div>
		<%}
		else{
			%>
	<div class="next">	
			<%=i-end-start+1 %>
			</div>
			<%
		}
		}else{
	%>
	<div class="pre">	
	<%=pre-start+i+1 %>
	</div>
<%} %>
<%} %>

</div>
</body>
<script>

</script>

</html>