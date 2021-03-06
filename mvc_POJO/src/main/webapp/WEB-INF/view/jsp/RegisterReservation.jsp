<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body {
	font-family: "Helvetica Neue", Helvetica, Arial;
	font-size: 14px;
	line-height: 20px;
	font-weight: 400;
	color: #3b3b3b;
	-webkit-font-smoothing: antialiased;
	font-smoothing: antialiased;
	background: #2b2b2b;
}

/* .wrapper {
  margin: 0 auto;
  padding: 40px;
  max-width: 800px;
} */
.table {
	margin: 0 0 40px 0;
	width: 100%;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
	display: table;
}

@media screen and (max-width: 580px) {
	.table {
		display: block;
	}
}

.row {
	display: table-row;
	background: #f6f6f6;
}

.row:nth-of-type(odd) {
	background: #e9e9e9;
}

.row.header {
	font-weight: 900;
	color: #ffffff;
	background: #ea6153;
}

.row.green {
	background: #80ba8e;
}

@media screen and (max-width: 580px) {
	.row {
		padding: 8px 0;
		display: block;
	}
}

.cell {
	padding: 30px 30px;
	display: table-cell;
}

@media screen and (max-width: 580px) {
	.cell {
		padding: 2px 12px;
		display: block;
	}
}
</style>

</head>
<body>
	<jsp:include page="./Header.jsp"></jsp:include>
	<div id="tableHeader1">
		<img src='css/images/c5.jpg' width="100%" height="300px;" />
	</div>
	<div class="wrapper">
		<br />
		<div class="table" style="height:30px;">
			<div class="row header green">
				<div class="2u">번호</div>
				<div class="3u">사진</div>
				<div class="3u">제목/주소</div>
				<div class="2u">프로필</div>
				<div class="2u">체크인/체크아웃</div>
			</div>
		</div>
			<div class="row">
				<c:choose>
				<c:when test="${fn:length(userInfo.house) > 0}">
					 	<c:forEach items="${userInfo.house}" var="row">
					 		 <c:forEach items="${row.registHouse }" var="row2">
							<div class="1u" style="height: 250px;">${row.houseNo }</div>
							<div class="3u" style="height: 250px;">
								<a href="houseView?houseNo=${row.houseNo}">
									<img class="" src="<%=request.getContextPath()%>/upload/${userInfo.memId}/${row.houseNo}/main/${row.houseImg}"
									data-src="<%=request.getContextPath()%>/upload/${userInfo.memId}/${row.houseNo}/main/${row.houseImg}"
									data-retina="<%=request.getContextPath()%>/upload/src/css/images/aaa.jpg"
									style="width: 200px; height: 200px;" />
								</a>
							</div>
							<div class="4u" style="height: 250px;">
								${row.houseName} <br /> ${row.houseAddress } ${row.houseAddressDetail}
							</div>
							<div class="2u" style="height: 250px;">
								<img src="<%=request.getContextPath()%>/upload/${row2.memberId}/intro/${row2.member.memImg}" width="80%" height="100" onclick="goPopup('${row2.memberId}')" />		
							</div>

							<div class="cal" style="width:15%; height: 250px;">
								<!-- 2016.11.10~2016.12.10 <br/> -->
								${row2.checkIn } ~ ${row2.checkOut }
								<input type="button" value="예약삭제" class="cancel" onclick="deleteRH(${row2.rhId},this)" />
							</div>
						 </c:forEach>
						</c:forEach> 
					</c:when>
					<c:otherwise>
						조회된 결과가 없습니다.
					</c:otherwise>
				</c:choose>
			</div><br/>
  </div>
			<div class="table"></div>
			<jsp:include page="./Footer.jsp"></jsp:include>
			
			
		<c:set var='del' value='DelrHouse'></c:set>
</body>
<script type="text/javascript">
function goPopup(str){
	   var pop = 
		   window.open("<%=request.getContextPath()%>/profile?memberName="+str,"pop", "width=570,height=800, scrollbars=yes");
}


function deleteRH(num,btn){
	
	var result = confirm("예약을 취소시키겠습니까?");
	if(!result)
		return ;
	var last = $(btn).parent();
	var one = $(last).prev();
	var two = $(one).prev();
	var three = $(two).prev();
	var four = $(three).prev();
	last.remove();
	one.remove();
	two.remove();
	three.remove();
	four.remove();
	
	//체크된 번호 글 삭제
	$.ajax({
		type : "post",
		url : "${del}",
		data : {
			No : num
		},   
		async: false,
		success : function(data,staus) {
			console.log("delete success");
		},
		error : function(xhr, status, error) {
			alert(error);
		}
	});
}
</script>
</html>