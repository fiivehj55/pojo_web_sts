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

        div
        {
        float:left;
        margin-right: 10px;
        margin-bottom: 10px;
        width: 48px; 
        height: 48px;
        border: 1px; 
        solid #000000;
        padding: 5;
        border-radius: 5px;
        
        }
        .week{
        clear: both;
        color: #FF0000;
        }
        .title{
        background-color: gray;
        color: #FFFFFF;
        width: 50px; 
        height: 20px;
        padding: 5;
        border-width:0;
        text-align: center; 
        }
        #sun{background-color: #FF0000;}
        #sat{background-color: #0000FF;}

#main {
	width: 100%;
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
  <div id="sun" class="class">sun</div>
    <div class="title">mon</div>
    <div class="title">tue</div>
    <div class="title">wed</div>
    <div class="title">thu</div>
    <div class="title">fri</div>
    <div id="sat" class="title">sat</div>
    
    <div class="week">&nbsp;</div>
    <div>&nbsp;</div>
    <div>&nbsp;</div>
    <div>1</div>
    <div>2</div>
    <div>3</div>
    <div>4</div>
    
    <div class="week">5</div>
    <div>6</div>
    <div>7</div>
    <div>8</div>
    <div>9</div>
    <div>10</div>
    <div>11</div>
    
    <div class="week">12</div>
    <div>13</div>
    <div>14</div>
    <div>15</div>
    <div>16</div>
    <div>17</div>
    <div>18</div>
    
    <div class="week">19</div>
    <div>20</div>
    <div>21</div>
    <div>22</div>
    <div>23</div>
    <div>24</div>
    <div>25</div>
    
    <div class="week">26</div>
    <div>27</div>
    <div>28</div>
    <div>29</div>
    <div>30</div>
    <div>&nbsp;</div>
    <div>&nbsp;</div>


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
		thisMonth--;
	 var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
		document.getElementById("dateBar").innerHTML = "<h1>"+thisYear+"년 "+(thisMonth+1)+"월</h1>";		
	      document.getElementById("box").innerHTML = this.responseText;
	      console.log((thisMonth+1)+"월");
	      console.log(this.responseText);
	    }
	  };
	  xhttp.open("POST", "dateView?month="+thisMonth, true);
	  xhttp.send();
	}
	function after(){
		thisMonth++;
	 var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
		document.getElementById("dateBar").innerHTML = "<h1>"+thisYear+"년 "+(thisMonth+1)+"월</h1>";
	      document.getElementById("box").innerHTML = this.responseText;
	      console.log((thisMonth+1)+"월");
	      console.log(this.responseText);
	    }
	  };
	  xhttp.open("POST", "dateView?month="+thisMonth, true);
	  xhttp.send();
	}
</script>

</html>