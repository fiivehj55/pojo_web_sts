<!-- FAQ-자주하는 질문 -->
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

body {
    font-family: Tahoma;
}

header {
    text-align: center;
}

#calendar {
    width: 100%;    
}

#calendar a {
    color: #8e352e;
    text-decoration: none;
}

#calendar ul {
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

#calendar .days li {
    height: 180px;
}

#calendar .days li:hover {
    background: #d3d3d3;
}

#calendar .date {
    text-align: center;
    margin-bottom: 5px;
    padding: 4px;
    background: #333;
    color: #fff;
    width: 20px;
    border-radius: 50%;
    float: right;
}

#calendar .event {
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

#calendar .event-desc {
    color: #666;
    margin: 3px 0 7px 0;
    text-decoration: none;  
}

#calendar .other-month {
    background: #f5f5f5;
    color: #666;
}

/* ============================
                Mobile Responsiveness
   ============================*/


@media(max-width: 768px) {

    #calendar .weekdays, #calendar .other-month {
        display: none;
    }

    #calendar li {
        height: auto !important;
        border: 1px solid #ededed;
        width: 100%;
        padding: 10px;
        margin-bottom: -1px;
    }

    #calendar .date {
        float: none;
    }
}



</style>
</head>
<body>
<div id="calendar-wrap">
            <header>
            		<h1><%=today.get(Calendar.YEAR)%>년
					<%=today.get(Calendar.MONTH) + 1%>월
				</h1>
            </header>
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

                <!-- Days from previous month -->

                <ul class="days">
                    <li class="day other-month">
                        <div class="date">27</div>                      
                    </li>
                    <li class="day other-month">
                        <div class="date">28</div>
                        <div class="event">
                            <div class="event-desc">
                                HTML 5 lecture with Brad Traversy from Eduonix
                            </div>
                            <div class="event-time">
                                1:00pm to 3:00pm
                            </div>
                        </div>                      
                    </li>
                    <li class="day other-month">
                        <div class="date">29</div>                      
                    </li>
                    <li class="day other-month">
                        <div class="date">30</div>                      
                    </li>
                    <li class="day other-month">
                        <div class="date">31</div>                      
                    </li>

                    <!-- Days in current month -->

                    <li class="day">
                        <div class="date">1</div>                       
                    </li>
                    <li class="day">
                        <div class="date">2</div>
                        <div class="event">
                            <div class="event-desc">
                                Career development @ Community College room #402
                            </div>
                            <div class="event-time">
                                2:00pm to 5:00pm
                            </div>
                        </div>                      
                    </li>
                </ul>

                    <!-- Row #2 -->

                <ul class="days">
                    <li class="day">
                        <div class="date">3</div>                       
                    </li>
                    <li class="day">
                        <div class="date">4</div>                       
                    </li>
                    <li class="day">
                        <div class="date">5</div>                       
                    </li>
                    <li class="day">
                        <div class="date">6</div>                       
                    </li>
                    <li class="day">
                        <div class="date">7</div>
                        <div class="event">
                            <div class="event-desc">
                                Group Project meetup
                            </div>
                            <div class="event-time">
                                6:00pm to 8:30pm
                            </div>
                        </div>                      
                    </li>
                    <li class="day">
                        <div class="date">8</div>                       
                    </li>
                    <li class="day">
                        <div class="date">9</div>                       
                    </li>
                </ul>

                    <!-- Row #3 -->

                <ul class="days">
                    <li class="day">
                        <div class="date">10</div>                      
                    </li>
                    <li class="day">
                        <div class="date">11</div>                      
                    </li>
                    <li class="day">
                        <div class="date">12</div>                      
                    </li>
                    <li class="day">
                        <div class="date">13</div>                      
                    </li>
                    <li class="day">
                        <div class="date">14</div><div class="event">
                            <div class="event-desc">
                                Board Meeting
                            </div>
                            <div class="event-time">
                                1:00pm to 3:00pm
                            </div>
                        </div>                      
                    </li>
                    <li class="day">
                        <div class="date">15</div>                      
                    </li>
                    <li class="day">
                        <div class="date">16</div>                      
                    </li>
                </ul>

                    <!-- Row #4 -->

                <ul class="days">
                    <li class="day">
                        <div class="date">17</div>                      
                    </li>
                    <li class="day">
                        <div class="date">18</div>                      
                    </li>
                    <li class="day">
                        <div class="date">19</div>                      
                    </li>
                    <li class="day">
                        <div class="date">20</div>                      
                    </li>
                    <li class="day">
                        <div class="date">21</div>                      
                    </li>
                    <li class="day">
                        <div class="date">22</div>
                        <div class="event">
                            <div class="event-desc">
                                Conference call
                            </div>
                            <div class="event-time">
                                9:00am to 12:00pm
                            </div>
                        </div>                      
                    </li>
                    <li class="day">
                        <div class="date">23</div>                      
                    </li>
                </ul>

                        <!-- Row #5 -->

                <ul class="days">
                    <li class="day">
                        <div class="date">24</div>                      
                    </li>
                    <li class="day">
                        <div class="date">25</div>
                        <div class="event">
                            <div class="event-desc">
                                Conference Call
                            </div>
                            <div class="event-time">
                                1:00pm to 3:00pm
                            </div>
                        </div>                      
                    </li>
                    <li class="day">
                        <div class="date">26</div>                      
                    </li>
                    <li class="day">
                        <div class="date">27</div>                      
                    </li>
                    <li class="day">
                        <div class="date">28</div>                      
                    </li>
                    <li class="day">
                        <div class="date">29</div>                      
                    </li>
                    <li class="day">
                        <div class="date">30</div>                      
                    </li>
                </ul>

                <!-- Row #6 -->

                <ul class="days">
                    <li class="day">
                        <div class="date">31</div>                      
                    </li>
                    <li class="day other-month">
                        <div class="date">1</div> <!-- Next Month -->                       
                    </li>
                    <li class="day other-month">
                        <div class="date">2</div>                       
                    </li>
                    <li class="day other-month">
                        <div class="date">3</div>                       
                    </li>
                    <li class="day other-month">
                        <div class="date">4</div>                       
                    </li>
                    <li class="day other-month">
                        <div class="date">5</div>                       
                    </li>
                    <li class="day other-month">
                        <div class="date">6</div>                       
                    </li>
                </ul>

            </div><!-- /. calendar -->
        </div><!-- /. wrap -->
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
				
			 		 $(this).css("background","red");
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
					
					 if(inDate < currentDate && outDate > currentDate ){
				 		 $(this).css("background","red");
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
					
					 if(inDate < currentDate && outDate > currentDate ){
				 		 $(this).css("background","#EAEAEA");
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
		 	 if(start < currentDate && end > currentDate ){
		 		 $(this).css("background","#B2CCFF");
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
			 	 if(start < currentDate && end > currentDate ){
			 		 $(this).css("background","#EAEAEA");
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
			 	 if(start < currentDate && end > currentDate ){
			 		 $(this).css("background","#EAEAEA");
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