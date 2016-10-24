<!-- 게시판 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<%-- <meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script>
<script src="js/init.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/skel-noscript.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style-desktop.css" /> --%>

<style>
label {
	width: 100px;
	display: inline-block;
}

.auto_center {
	width: 1200px;
	height: 400px;
	padding:20px;
	margin: 200px auto; 
}
#map{
		width:50%;
        height: 100%;
}
</style>

</head>
<body class="">
	<jsp:include page="./Header.jsp"></jsp:include>

	<div id="main">
		<div id="content" class="auto_center">
 			<div id="featured">
				 <div class="container">  
					
					
				</div>
			</div>
			<div id = "map">
			</div>
			<div class ="boardcss_list_table">
				<table class="list_table">
				<colgroup>
					<col width="10%" />
					<col width="15%" />
					<col width="50%" />
					<col width="15%" />
					<col width="10%" />
				</colgroup>
				<thead>
				<tr>
					<th>번호</th>
					<th>하우스<br/>
						프로필
					</th>
					<th>하우스 이름</th>
					<th>주소</th>
				</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${fn:length(house) > 0}">
							<c:forEach items="${house }" var="row">
								<tr>
									<td>${row.houseNo }</td>
									<td> <a href="houseView?houseNo=${row.houseNo}"><img src="<%=request.getContextPath()%>/upload/${row.memberId}/${row.houseNo}/${row.houseImg}" width="40" height="40"/></a></td>
									<td> <a href="houseView?houseNo=${row.houseNo }">${row.houseName }</a></td>
									<td>${row.houseAddress }</td>									
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="4">조회된 결과가 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
					
				</tbody>
			</table>
		</div>
		
			
			
</head>
<body>

</body>


  
</html>
