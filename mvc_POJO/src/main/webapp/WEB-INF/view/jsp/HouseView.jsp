<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Linear by TEMPLATED</title>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='/text/css'>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script>
<script src="js/init.js"></script>
<link rel="stylesheet" href="css/skel-noscript.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/style-desktop.css" />

<style>
	.h1{
		font-size: 28pt;	
	}
	
	
	.divTable{
	display: table;
	width: 100%;
}
.divTableRow {
	display: table-row;
}
.divTableHeading {
	background-color: #EEE;
	display: table-header-group;
}
.divTableCell, .divTableHead {
	border: 1px solid #999999;
	display: table-cell;
	padding: 3px 10px;
}
.divTableHeading {
	background-color: #EEE;
	display: table-header-group;
	font-weight: bold;
}
.divTableFoot {
	background-color: #EEE;
	display: table-footer-group;
	font-weight: bold;
}
.divTableBody {
	display: table-row-group;
}

#left-box {
    float: left;
}
#center-box {
    margin: 50auto; 
}
#right-box {
    float: right;
	
	
</style>

</head>
<body class="header">
<jsp:include page="./Header.jsp"></jsp:include>
	<!-- 맨위 -->
	<div id="main">	
	<div id="content" class="auto_center">
	<div class="divTable">
	<div class="divTableBody">
	<div class="divTableRow">
	<div class="divTableCell" style="width: 300px; height: 300px;">
	
	<img src="<%=request.getContextPath()%>/upload/${houseUser}/${houseNo}/${houseImg }"/>
<h1 class="h1">${memberName}의 ${houseName}!!</h1> <br/>		
		</div>	
		
		
	</div>
	
	<!-- 가운데 -->
<div class="divTableRow">
<div class="divTableCell" style="width: 300px; height: 200px;">&nbsp;
<div id='container'>
    <div id='left-box'>
    <p>왼쪽 
    </div>
    
    <div id='right-box'>
 			 <c:if test="${user!=null}"> 
				<a href="#"><button>예약하기</button></a>
				<c:if test="${user. memId == houseUser}">
				<a href="updateHouse?houseNo=${houseNo}"><button>수정하기</button></a>
				<a href="deleteHouse?houseNo=${houseNo}"><button>삭제하기</button></a>				
				</c:if>
					</c:if>
    </div>
    
    <div id='center-box'>
   	 가운데   
    </div>
</div>
</div>
</div>

<!-- 마지막 -->
<div class="divTableRow">
<div class="divTableCell" style="width: 300px; height: 500px;">
			<h1>방의 개수 : ${houseRoom }</h1>
				<h1>화장실 개수 : ${houseBath }</h1>
				<h1>예약 가능 인원 : ${houseHosting }</h1>
				<h1>사용가능한 편의시설 : ${houseTv }, ${houseAircon }, ${houseWifi },
					${houseElebe }, ${houseWashing }</h1>


</div>
</div>
</div>
</div>
	
	
	</div>
	
	
	
	
	
	</div>
<jsp:include page="./Footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script>
</script>
</html>