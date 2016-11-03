<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
		<div class="table" style="height: 600px;">
			<div class="row header green">
				<div class="2u">번호</div>
				<div class="2u">사진</div>
				<div class="3u">제목/주소</div>
				<div class="2u">프로필</div>
				<div class="2u">체크인/체크아웃</div>
			</div>

			<div class="row">
				<c:choose>
					<c:when test="${fn:length(userInfo.House) > 0}">
						<c:forEach items="${userInfo.House }" var="row">
							<div class="2u" style="width: 15%; height: 300px;">${row.houseNo }</div>
							<div class="2u" style="width: 15%; height: 300px;">
								<img class=""
									src="<%=request.getContextPath() %>/upload/${userInfo.memId}/${row.houseNo}/main/${row.houseImg}"
									data-src="<%=request.getContextPath() %>/upload/${userInfo.memId}/${row.houseNo}/main/${row.houseImg}"
									data-retina="<%=request.getContextPath() %>/upload/src/css/images/aaa.jpg"
									style="width: 100px; height: 100px;" />
							</div>
							<div class="3u" style="width: 30%; height: 300px;">
								${row.houseName} <br /> ${row.houseAddress } ${row.houseAddressDetail}
							</div>
							<div class="2u" style="width: 15%; height: 300px;">
								<c:when test="${fn:length(row.registHouse) > 0}">
									<c:forEach items="${row.registHouse }" var="row">
										<img
											src="<%=request.getContextPath()%>/upload/${row.memberId}/intro/${row.memberId.memImg}"
											width="100" height="100" onclick="goPopup()" />
									</c:forEach>
								</c:when>
							</div>

							<div class="2u" style="width: 25%; height: 300px;">
								<c:when test="${fn:length(row.registHouse) > 0}">
									<c:forEach items="${row.registHouse }" var="row">
										<!-- 2016.11.10~2016.12.10 <br/> -->
										${row.checkIn } ~ ${row.checkOut }
									</c:forEach>
								</c:when>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						조회된 결과가 없습니다.
					</c:otherwise>
				</c:choose>
			</div>
<!-- 
=======
      <div class="2u" style="width: 15%; height: 300px;">
       1
      </div>
      <div class="2u" style="width: 15%; height: 300px;">
        사진
      </div>
      <div class="3u" style="width:30%; height: 300px;">
       충청남도 서북구 두정동
      </div>
      <div class="2u" style="width: 15%; height: 300px;">
       프로필사진
      </div>
      <div class="2u" style="width: 25%; height: 300px;">
       2016.11.10~2016.12.10
      </div>
>>>>>>> branch 'master' of https://github.com/fiivehj55/pojo_web_sts.git 
    </div>
    
    <div class="row">
      <div class="2u">
      2
      </div>
      <div class="4u">
       
      </div>
      <div class="2u">
       
      </div>
      <div class="2u">
       
      </div>
      <div class="2u">
        
      </div>
    </div>
    
    <div class="row">
      <div class="2u">
        3
      </div>
      <div class="4u">
       
      </div>
      <div class="2u">
       
      </div>
      <div class="2u">
       
      </div>
      <div class="2u">
        
      </div>
    </div>
    
    <div class="row">
      <div class="2u">
       4
      </div>
      <div class="4u">
      
      </div>
      <div class="2u">
       
      </div>
      <div class="2u">
       
      </div>
      <div class="2u">
        
      </div>
    </div>
    -->
  </div>
  </div>
			<div class="table"></div>
			<jsp:include page="./Footer.jsp"></jsp:include>
</body>
</html>