<!-- FAQ-자주하는 질문 -->
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#main {
	width: 100%;
}

.day {
	float: left;
	width: 14%;
	border: 1px solid;
	width: 14%;
}

.date {
	float: left;
	width: 14%;
	border: 1px solid;
}

.next {
	float: left;
	width: 14%;
	border: 1px solid;
	color: gray;
}

.pre {
	float: left;
	width: 14%;
	border: 1px solid;
	color: gray;
}

#bar {
	width: 100%;
	float: none;
	clear: both;
}

.left {
	float: left;
	width: 30%;
}

.right {
	float: right;
	width: 30%;
}

.center {
	width: 30%;
	display: inline-block;
	margin: 0 auto;
}

.center h1 {
	display: inline-block;
}
</style>
</head>
<body>
	<%
		Calendar today = Calendar.getInstance();
		int toMonth = today.get(Calendar.MONTH);
		today.set(Calendar.MONTH, toMonth - 1);
		int pre = today.getActualMaximum(Calendar.DATE);
		today.set(Calendar.MONTH, toMonth);
		int hr = today.get(Calendar.DATE);
		today.set(Calendar.DATE, 1);
		int start = today.get(Calendar.DAY_OF_WEEK);
		int end = today.getActualMaximum(Calendar.DATE);
	%>
	<div id="main">

		<div id="bar">
			<div class="left">
				<input type="button" value="◀" onclick="before()">
			</div>
			<div class="center" id="dateBar">
				<h1><%=today.get(Calendar.YEAR)%>년
					<%=today.get(Calendar.MONTH) + 1%>월
				</h1>
			</div>
			<div class="right">
				<input type="button" value="▶" onclick="after()">
			</div>
		</div>
		
			<div class="day">일</div>
			<div class="day">월</div>
			<div class="day">화</div>
			<div class="day">수</div>
			<div class="day">목</div>
			<div class="day">금</div>
			<div class="day">토</div>
		<div id="box">
			<%
				for (int i = 1; i <= 42; i++) {
			%>
			<%
				if (i >= start) {
						if (i - start + 1 <= end) {
			%>
			<div class="date">
				<%=i - start + 1%>
			</div>
			<%
				} else {
			%>
			<div class="next">
				<%=i - end - start + 1%>
			</div>
			<%
				}
					} else {
			%>
			<div class="pre">
				<%=pre - start + i + 1%>
			</div>
			<%
				}
			%>
			<%
				}
			%>
		</div>
	</div>
</body>
<script src="http://code.jquery.com/jquery.js"></script>
<script>
	var thisMonth = <%=today.get(Calendar.MONTH)%>;
	var thisYear = <%=today.get(Calendar.YEAR)%>;
	function before(){
		if(thisMonth!= 0){
			thisMonth--;
		}else{
			thisYear--;
			thisMonth = 11;
		}
	 var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
		document.getElementById("dateBar").innerHTML = "<h1>"+thisYear+"년 "+(thisMonth+1)+"월</h1>";		
	      document.getElementById("box").innerHTML = this.responseText;
	      console.log((thisMonth+1)+"월");
	      console.log(this.responseText);
	    }
	  };
	  xhttp.open("POST", "dateView?month="+thisMonth+"&year="+thisYear, true);
	  xhttp.send();
	}
	function after(){
		if(thisMonth!= 11){
			thisMonth++;
		}else{
			thisYear++;
			thisMonth = 0;
		}
	 var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
		document.getElementById("dateBar").innerHTML = "<h1>"+thisYear+"년 "+(thisMonth+1)+"월</h1>";
	      document.getElementById("box").innerHTML = this.responseText;
	      console.log((thisMonth+1)+"월");
	      console.log(this.responseText);
	    }
	  };
	  xhttp.open("POST", "dateView?month="+thisMonth+"&year="+thisYear, true);
	  xhttp.send();
	}
</script>

</html>