<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
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
</head>
<style type="text/css">
/* 라디오버튼 체크박스 css 시작 */
/* body {
  text-align: center;
  background: #ebf4fb;
  min-height: 95vh;
  margin: 0;
  padding: 0;
  border-bottom: 5vh solid #3694d7;
  font-family: "malgun gothic";
  font-size: 14px;
  letter-spacing:-1px
} */
.dropdown-el {
	margin-top: 0vh;
	min-width: 12em;
	position: relative;
	display: inline-block;
	margin-right: 1em;
	min-height: 2em;
	max-height: 2em;
	overflow: hidden;
	top: .5em;
	cursor: pointer;
	text-align: left;
	white-space: nowrap;
	color: #444;
	outline: none;
	border: .06em solid transparent;
	border-radius: 1em;
	background-color: rgba(128, 186, 142, 0.3);
	transition: 0.3s all ease-in-out;
}

.dropdown-el input {
	display: none;
}

.dropdown-el label {
	border-top: .06em solid #d9d9d9;
	display: block;
	height: 2em;
	line-height: 2em;
	padding-left: 1em;
	padding-right: 3em;
	cursor: pointer;
	position: relative;
	transition: 0.3s color ease-in-out;
}

.dropdown-el label:nth-child(2) {
	margin-top: 2em;
	border-top: .06em solid #d9d9d9;
}

.dropdown-el input:checked+label {
	display: block;
	border-top: none;
	position: absolute;
	top: 0;
}

.dropdown-el input:checked+label:nth-child(2) {
	margin-top: 0;
	position: relative;
}

.dropdown-el::after {
	content: "";
	position: absolute;
	right: 0.8em;
	top: 0.9em;
	border: 0.3em solid #80BA8E;
	border-color: #80BA8E transparent transparent transparent;
	transition: .4s all ease-in-out;
}

.dropdown-el.expanded {
	border: 0.06em solid #80BA8E;
	background: #fff;
	border-radius: .25em;
	padding: 0;
	box-shadow: rgba(0, 0, 0, 0.1) 3px 3px 5px 0px;
	max-height: 15em;
}

.dropdown-el.expanded label {
	border-top: .06em solid #d9d9d9;
}

.dropdown-el.expanded label:hover {
	color: #3694d7;
}

.dropdown-el.expanded input:checked+label {
	color: #3694d7;
}

.dropdown-el.expanded::after {
	transform: rotate(-180deg);
	top: .55em;
}

.textclass {
	width: 500px;
	/* 	vertical-align: middle; */
	height: 150px;
	/* 	line-height:180%; */
}

.header2 {
	position: relative;
	color: rgba(128, 186, 142, 0.3);
	background-attachment: fixed;
	background-size: cover;
	text-align: center;
}

.header2:before {
	content: '';
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background: rgba(64, 64, 64, 0.125);
}

#view {
	height: 100%;
}

.font{
	font-weight: bold;
	font-size: 20px;
}

#side{
	height:100%;
	float: left;
	width: 33%;
}

#main{
	position: relative;
}

</style>
<body class="">
	<jsp:include page="./Header.jsp"></jsp:include>
	<div class="header2">
	</div>
	<!-- Main -->
	<div id="view">
	<div id="main">
		<!-- <div id="content" class=""> -->
		<sform:form method="post" action="updateHouse" modelAttribute="house" enctype="multipart/form-data">
			<div id="side">
				<sform:hidden path="houseNo"/>
				<div class="font">하우스 정보 1단계</div>
				<label>방의 개수 :</label>
				<span class="dropdown-el">
				<sform:radiobutton path="houseRoom" value="1개" id="houseRoom1"/>
				<label for="houseRoom1">1개</label>
				<sform:radiobutton path="houseRoom" value="2개" id="houseRoom2"/>
				<label for="houseRoom2">2개</label>
				<sform:radiobutton path="houseRoom" value="3개" id="houseRoom3"/>
				<label for="houseRoom3">3개</label>
				
				</span><br/>
				
				<label>욕실 개수 : </label>
				<span class="dropdown-el">
					<sform:radiobutton path="houseBath" value="1개" id="houseBath1"/>
				<label for="houseBath1">1개</label>
				<sform:radiobutton path="houseBath" value="2개" id="houseBath2"/>
				<label for="houseBath2">2개</label>
				<sform:radiobutton path="houseBath" value="3개" id="houseBath3"/>
				<label for="houseBath3">3개</label>
				</span><br/>
				<label>숙박 인원 : </label>
				<span class="dropdown-el">
				<sform:radiobutton path="houseHosting" value="1명" id="houseHosting1"/>
				<label for="houseHosting1">1명</label>
				<sform:radiobutton path="houseHosting" value="2명" id="houseHosting2"/>
				<label for="houseHosting2">2명</label>
				<sform:radiobutton path="houseHosting" value="3명" id="houseHosting3"/>
				<label for="houseHosting3">3명</label>
					<sform:radiobutton path="houseHosting" value="4명" id="houseHosting4"/>
				<label for="houseHosting4">4명</label>
				</span><br/>
				
				<label for="market">편의 시설 : </label>
				<sform:checkbox path="houseTv" class="demo-1" label="TV" value="tv"/>
				<sform:checkbox path="houseAircon" class="demo-1" label="에어컨" value="aircon"/>
				<sform:checkbox path="houseWifi" class="demo-1" label="Wi-Fi" value="wifi"/> <br/>
				<sform:checkbox path="houseElebe" class="demo-1" label="엘리베이터" value="elebe"/>
				<sform:checkbox path="houseWashing" class="demo-1" label="세탁기" value="washing"/>
			</div>
			
			<div id="side" >
				<div class="font">하우스 정보 2단계</div>
				<sform:label path="houseName" class="inputlabel">숙소이름</sform:label><br/>
				<sform:input type="text" path="houseName" size="50"/> <br/> 
				
				<a href="#" class="button button-style-1" id="postcodify_search_button">주소검색</a><br />
				<sform:label path="houseAddress">주소</sform:label><br/>
				
				<sform:input type="text" path="houseAddress" id="xx" size="50"/> <br/>
				<sform:label path="houseAddressDetail"  >상세 주소</sform:label><br/>
				<sform:input type="text" path="houseAddressDetail" id="yy"  size="50"/> <br/>
				
				<label for="mainPhoto">메인 사진:</label> 
				<input type="file" name="mainPhoto"/> <br />
				
				<label for="photo">사진:</label> 
				<label><input type="file" name="photo" multiple="multiple"/> </label> <br />
				
				<sform:label path="houseInfo">숙소 안내말</sform:label> <br/>
				<%-- <sform:textarea style="margin:0px;width:400px;height:265px;" path="houseInfo"></sform:textarea> --%>
				
				<sform:textarea path="houseInfo" id="ir1" rows="10" cols="100" style="width:70%; height: 412px; display: none;" 
				placeholder="에디터에 기본으로 삽입할 글(수정 모드)이 없다면 이 value 값을 지정하지 않으시면 됩니다."></sform:textarea> <br/>
			</div>
			
			<div id="side">
				<div class="font">하우스 정보 3단계</div>
				<label for="possCheckIn">시작일</label>
				<input type="date"   name="possCheckIn"  id="possCheckIn"/> ~
				<label for="possCheckOut">종료일</label>
				<input type="date"  name="possCheckOut"  id="possCheckOut" /> <br/>
				
				<sform:label path="houseDay"></sform:label>
				<sform:radiobuttons path="houseDay" items="${day }"/> <br/>
				
				<sform:label path="housePrice">가격 : </sform:label>
				<sform:input type="number" path="housePrice"/> <br/> 
			</div>
			<input type="submit" class="button button-style-1" id="complete" name="complete" value="수정완료" onclick="submitContents(this)"/>
			<a href="searchbar?key=${key}&page=1"><input type="button" class="button button-style-1" value="나가기"/></a>
			<!-- <a href="search"><input type="button" value="다음 단계"/></a> -->
		</sform:form>
	</div>
	</div>
	<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	<jsp:include page="./Footer.jsp"></jsp:include>	
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script>
function goPopup(){
	var pop = window.open("<%=request.getContextPath()%>/jusoPopup", "pop", "width=570,height=420, scrollbars=yes"); //경로는시스템에맞게수정하여사용
	}
	function jusoCallBack(roadAddrPart1, addrDetail) {
		$("#xx").val(roadAddrPart1);
		$("#yy").val(addrDetail);
	}
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script src="<%=request.getContextPath()%>/js/validate/dist/jquery.validate.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NaverEditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
function goPopup(){
	var pop = window.open("<%=request.getContextPath()%>/jusoPopup","pop", "width=570,height=420, scrollbars=yes");
		}
		function jusoCallBack(addrDetail,jibunAddr) {
			$("#xx").val(jibunAddr);
			$("#yy").val(addrDetail);
		}
		console.log('${PossCheckIn}');

		$(document).ready(function() {

			var PossCheckIn= '${PossCheckIn}';

			var PossCheckOut= '${PossCheckOut}';
			$("#possCheckIn").val(PossCheckIn.substring(0,10));
			$("#possCheckOut").val(PossCheckOut.substring(0,10));
			
			$('.dropdown-el').click(function(e) {
				  e.preventDefault();
				  e.stopPropagation();
				  $(this).toggleClass('expanded');
				  $('#'+$(e.target).attr('for')).prop('checked',true);
				});
				$(document).click(function() {
				  $('.dropdown-el').removeClass('expanded');
				});
				$('.demo-1').toggleCheckbox(
					[ '<i class="fa fa-circle-o fa-4x"></i>',
					'<i class="fa fa-check-circle-o fa-4x"></i>' ]
				);
			$("#postcodify_search_button").on("click", function() {
				goPopup();
			});
			$("#myForm").validate({
				rules : {
					room : "required",
					bath : "required",
					hosting : "required",
					price : "required",
					photo : "required",
					day : "required"
				},
				messages : {
					room : "Please specify room count",
					bath : "Please specify bath count",
					hosting : "Please specify hosting count",
					price : {
						required : "Please specify your price"
					},
					day : "Please specify payment cycle",
					photo : "Must one more picture"
				}
			});
		});
		
		
		(function($) {

			$.fn.toggleCheckbox = function(toggleContents, callback) {

				var TC = {

					isChecked : function(element) {

						return $(element).is(':checked');

					},
					getContentIndex : function(element) {

						return (TC.isChecked(element)) ? 1 : 0;

					},
					getContent : function(index) {

						var container = $('<span class="toggle-checkbox-container"></span>');

						return container.on(
								'click',
								function(e) {

									var checkbox = $(this).prev();
									var nextChecked = !TC
											.getContentIndex(checkbox);
									var contentIndex = (nextChecked) ? 1 : 0;
									var toggleContent = TC
											.getContent(contentIndex);

									checkbox.after(toggleContent).prop(
											'checked', nextChecked);
									$(this).remove();
									TC.fireCallback(e, checkbox);

								}).css('cursor', 'pointer').html(
								toggleContents[index]);

					},
					fireCallback : function(e, checkbox) {

						if (typeof (callback) == 'function') {

							callback(e, checkbox);

						}

					}

				};

				$
						.each(
								this,
								function(key, element) {

									var contentIndex = TC
											.getContentIndex(element);
									var toggleContent = TC
											.getContent(contentIndex);
									$(element)
											.after(toggleContent)
											.css('display', 'none')
											.on(
													'change',
													function(e) {

														var className = $(this)
																.next()
																.attr('class');

														if (className == 'toggle-checkbox-container') {

															$(this).next()
																	.remove();
															var contentIndex = TC
																	.getContentIndex(this);
															var toggleContent = TC
																	.getContent(contentIndex);
															$(this)
																	.after(
																			toggleContent);
															TC.fireCallback(e,
																	$(this));

														}

													});

								});

			}

		})(jQuery);
</script>
<script type="text/javascript">
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
		oAppRef : oEditors,
		elPlaceHolder : "ir1",
		sSkinURI : "<%=request.getContextPath()%>/NaverEditor/SmartEditor2Skin.html",
		fCreator : "createSEditor2"
	});
	
 	function submitContents(elClickedObj) {
		// 에디터의 내용이 textarea에 적용된다.
		oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
		// 에디터의 내용에 대한 값 검증은 이곳에서
		// document.getElementById("ir1").value를 이용해서 처리한다.
		try {
		elClickedObj.form.submit();
		} catch(e) {}	 }
	
	
</script>


</html>