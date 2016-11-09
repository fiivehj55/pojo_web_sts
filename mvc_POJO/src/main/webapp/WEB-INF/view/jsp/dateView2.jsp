<!-- FAQ-자주하는 질문 -->
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	    text-align: center;
    margin-bottom: 5px;
    padding: 4px;
    background: #d3d3d3;
    color: #fff;
    width: 20px;
    border-radius: 50%;
    float: right;
}

#calendar {
    width: 100%;    
}
#calendar ul {
    list-style: none;
    padding: 0;
    margin: 0;
    width: 100%;
}

#box ul {
    list-style: none;
    padding: 0;
    margin: 0;
    width: 100%;
}

#calendar li {
    display: block;
    float: left;
    width:14.342%;
    padding: 5px;
    box-sizing:border-box;
    border: 1px solid #ccc;
    margin-right: -1px;
    margin-bottom: -1px;
}
#calendar ul.weekdays {
    height: 40px;
    background: #8e352e;
}

#calendar ul.weekdays li {
    text-align: center;
    text-transform: uppercase;
    line-height: 20px;
    border: none !important;
    padding: 10px 6px;
    color: #fff;
    font-size: 13px;
}

.pre {
    text-align: center;
    margin-bottom: 5px;
    padding: 4px;
    background: #d3d3d3;
    color: #fff;
    width: 20px;
    border-radius: 50%;
    float: right;
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
.other-month {/* 
    background: #f5f5f5; */
    color: #666;
}


#box .days li {
    height: 100px;
}

#box .days li:hover {
    background: #d3d3d3;
}

#box .date {
    text-align: center;
    margin-bottom: 5px;
    padding: 4px;
    background: #333;
    color: #fff;
    width: 20px;
    border-radius: 50%;
    float: right;
}

#box .event {
    clear: both;
    display: block;
    font-size: 13px;
    border-radius: 4px;
    padding: 5px;
    margin-top: 40px;
    margin-bottom: 5px;
    line-height: 14px;
    background: #e4f2f2;
    border: 1px solid #b5dbdc;
    color: #009aaf;
    text-decoration: none;
}

#box .event-desc {
    color: #666;
    margin: 3px 0 7px 0;
    text-decoration: none;  
}

#box .other-month {
    background: #f5f5f5;
    color: #666;
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
		   <div id="calendar">
                <ul class="weekdays">
                    <li>Sunday</li>
                    <li>Monday</li>
                    <li>Tuesday</li>
                    <li>Wednesday</li>
                    <li>Thursday</li>
                    <li>Friday</li>
                    <li>Saturday</li>
                </ul>
            </div>
		<div id="box">
			<ul class="days">
				<%
				for (int i = 1; i <= 7; i++) {
					
			%>
			<%
				if (i >= start) {
						if (i - start + 1 <= end) {
			%>
			   <li class="day">
                        <div class="date"><%=i - start + 1%></div>                       
                    </li>
			<%
				} else {
			%>
			<!-- next--> 
			        <li class="day other-month">
                        <div class="next"><%=i - end - start + 1%></div>                      
                    </li>
			<%
				}
					} else {
			%>
			  <li class="day other-month">
                        <div class="pre"><%=pre - start + i + 1%></div>                      
                    </li>
			<%
				}
			%>
			<%
				}
			%>
			</ul>
			<ul class="days">
				<%
				for (int i = 8; i <= 14; i++) {
					
			%>
			<%
				if (i >= start) {
						if (i - start + 1 <= end) {
			%>
			   <li class="day">
                        <div class="date"><%=i - start + 1%></div>                       
                    </li>
			<%
				} else {
			%>
			<!-- next--> 
			        <li class="day other-month">
                        <div class="next"><%=i - end - start + 1%></div>                      
                    </li>
			<%
				}
					} else {
			%>
			  <li class="day other-month">
                        <div class="pre"><%=pre - start + i + 1%></div>                      
                    </li>
			<%
				}
			%>
			<%
				}
			%>
			</ul>
			<ul class="days">
				<%
				for (int i = 15; i <= 21; i++) {
					
			%>
			<%
				if (i >= start) {
						if (i - start + 1 <= end) {
			%>
			   <li class="day">
                        <div class="date"><%=i - start + 1%></div>                       
                    </li>
			<%
				} else {
			%>
			<!-- next--> 
			        <li class="day other-month">
                        <div class="next"><%=i - end - start + 1%></div>                      
                    </li>
			<%
				}
					} else {
			%>
			  <li class="day other-month">
                        <div class="pre"><%=pre - start + i + 1%></div>                      
                    </li>
			<%
				}
			%>
			<%
				}
			%>
			</ul>
			<ul class="days">
				<%
				for (int i = 22; i <= 28; i++) {
					
			%>
			<%
				if (i >= start) {
						if (i - start + 1 <= end) {
			%>
			   <li class="day">
                        <div class="date"><%=i - start + 1%></div>                       
                    </li>
			<%
				} else {
			%>
			<!-- next--> 
			        <li class="day other-month">
                        <div class="next"><%=i - end - start + 1%></div>                      
                    </li>
			<%
				}
					} else {
			%>
			  <li class="day other-month">
                        <div class="pre"><%=pre - start + i + 1%></div>                      
                    </li>
			<%
				}
			%>
			<%
				}
			%>
			</ul>
			<ul class="days">
				<%
				for (int i = 29; i <= 35; i++) {
					
			%>
			<%
				if (i >= start) {
						if (i - start + 1 <= end) {
			%>
			   <li class="day">
                        <div class="date"><%=i - start + 1%></div>                       
                    </li>
			<%
				} else {
			%>
			<!-- next--> 
			        <li class="day other-month">
                        <div class="next"><%=i - end - start + 1%></div>                      
                    </li>
			<%
				}
					} else {
			%>
			  <li class="day other-month">
                        <div class="pre"><%=pre - start + i + 1%></div>                      
                    </li>
			<%
				}
			%>
			<%
				}
			%>
			</ul>
			<ul class="days">
				<%
				for (int i = 36; i <= 42; i++) {
					
			%>
			<%
				if (i >= start) {
						if (i - start + 1 <= end) {
				%>
			   <li class="day">
                        <div class="date"><%=i - start + 1%></div>                       
                    </li>
			<%
				} else {
			%>
			<!-- next--> 
			        <li class="day other-month">
                        <div class="next"><%=i - end - start + 1%></div>                      
                    </li>
			<%
				}
					} else {
			%>
			  <li class="day other-month">
                        <div class="pre"><%=pre - start + i + 1%></div>                      
                    </li>
			<%
				}
			%>
			<%
				}
			%>
			</ul>
		</div>
			<c:set value="Impossible?houseNo=${houseNo }" var="getlist"/>
</body>
<script src="http://code.jquery.com/jquery.js"></script>
<script>

var startDay = "${house.possCheckIn}";
var endDay = "${house.possCheckOut}";
var dayArray = new Array();

var start = new Date(startDay);
var end = new Date(endDay);
$(document).ready(function(){


	console.log("start:"+ startDay);
	console.log("end:"+ endDay);
	
	 setpossible();
	 setImpossible();
	 setcolor();
});
function setDate(date){

	date.setYear(thisYear);
	date.setMonth(thisMonth);
	date.setHours(9);
	 date.setMinutes(0);
	 date.setSeconds(0);
	 date.setMilliseconds(0);
}

function setcolor(){

	$(".date").each(function(index){
		//index +1 은 날짜
		  var day  = index+1;

			 var currentDate = new Date();
			 setDate(currentDate);		 
			 currentDate.setDate(day);
		 for(i=0;i <ImpossibleDate.length;i++ ){
				var inDate = new Date(ImpossibleDate[i].checkIn);
				var outDate = new Date(ImpossibleDate[i].checkOut);
				 if(inDate <= currentDate && outDate >= currentDate ){
				
					 $(this).parent().css("background","red");
			 		dayArray.push(this);
			 	 }
		 }
		});
		$(".next").each(function(index){
			//index +1 은 날짜
			  var day  = index+1;

				 var currentDate = new Date();
				 setDate(currentDate);	
				if(thisMonth!= 11){
					 currentDate.setMonth(thisMonth+1);
				}else{
					currentDate.setYear(currentDate.getYear()+1);
					 currentDate.setMonth(0);
				}
			 currentDate.setDate(day);
			 for(i=0;i <ImpossibleDate.length;i++ ){
					var inDate = new Date(ImpossibleDate[i].checkIn);
					var outDate = new Date(ImpossibleDate[i].checkOut);
					
					 if(inDate < currentDate && outDate >= currentDate ){
						 $(this).parent().css("background","red");
				 		dayArray.push(this);
				 	 }
			 }
			});
		$(".pre").each(function(index){
			//index +1 은 날짜
			
	 var currentDate = new Date();
	 setDate(currentDate);	
			 if(thisMonth!= 0){
				 currentDate.setMonth(thisMonth-1);
				}else{
					thisYear--;
					thisMonth = 11;
					currentDate.setYear(currentDate.getYear()-1);
					 currentDate.setMonth(11);
				}
			 currentDate.setDate($(this).html());
			 for(i=0;i <ImpossibleDate.length;i++ ){
					var inDate = new Date(ImpossibleDate[i].checkIn);
					var outDate = new Date(ImpossibleDate[i].checkOut);
					
					 if(inDate < currentDate && outDate >= currentDate ){
						 $(this).parent().css("background","red");
				 		dayArray.push(this);
				 	 }
			 }
			});
}
function setpossible(){
	$(".date").each(function(index){
		//index +1 은 날짜
		  var day  = index+1;
		 var currentDate = new Date();
		 setDate(currentDate);	
		 currentDate.setDate(day);
		 	 if(start < currentDate && end >= currentDate ){
		 		 $(this).parent().css("background","#B2CCFF");
		 		dayArray.push(this);
		 	 }
		});
		$(".next").each(function(index){
			//index +1 은 날짜
			  var day  = index+1;
			 var currentDate = new Date();
			 setDate(currentDate);	
				if(thisMonth!= 11){
					 currentDate.setMonth(thisMonth+1);
				}else{
					currentDate.setYear(currentDate.getYear()+1);
					 currentDate.setMonth(0);
				}
			 currentDate.setDate(day);
			 	 if(start < currentDate && end >= currentDate ){
			 		 $(this).parent().css("background","#B2CCFF");
			 	 }
			});
		$(".pre").each(function(index){
			//index +1 은 날짜
			 var currentDate = new Date();
			 setDate(currentDate);	
			 if(thisMonth!= 0){
				 currentDate.setMonth(thisMonth-1);
				}else{
					thisYear--;
					thisMonth = 11;
					currentDate.setYear(currentDate.getYear()-1);
					 currentDate.setMonth(11);
				}
			 currentDate.setDate($(this).html());
			 	 if(start < currentDate && end >= currentDate ){
			 		 $(this).parent().css("background","#B2CCFF");
			 	 }
			});
}
var ImpossibleDate;
function setImpossible(){
	$.ajax({
		type : "get",
		url : "${getlist}",
		data : {
			houseNo : ${houseNo}
		},   
		async: false,
		success : function(data,staus) {
			ImpossibleDate = data;
			console.log(ImpossibleDate);
		},
		error : function(xhr, status, error) {
			alert(error);
		}
	});
}

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

	 	 setpossible();
	 	 setcolor();
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

	 	 setpossible();
	 	 setcolor();
	    }
	  };
	  xhttp.open("POST", "dateView?month="+thisMonth+"&year="+thisYear, true);
	  xhttp.send();
	}
</script>

</html>