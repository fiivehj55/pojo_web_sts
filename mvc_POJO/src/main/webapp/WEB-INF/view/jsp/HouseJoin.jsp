<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Linear by TEMPLATED</title>
<style>
.button2 {
    position: relative;
    display: inline-block;
    background: #ff7e82;
    padding: 0.6em 1em;
    text-decoration: none !important;
    font-size: 1.2em;
    font-weight: 300;
    color: #FFF !important;
    border-radius:5px;

}
/* 안내문 css */
body {
	background: #FFF3CD;
	font: 18px/22px Arial, Helvetica, sans-serif;
	margin: 0;
}

.text-center {
	text-align: center;
}

.animated-text {
	font-size: 40px;
	line-height: 50px;
	margin: 10px 0;
}

.animated-text a {
	color: #666;
	text-decoration: none;
	text-shadow: 1px 1px 0px #fff, 3px 1px 0px rgba(0, 0, 0, 0.15);
	-webkit-text-shadow: 1px 1px 0px #fff, 3px 1px 0px rgba(0, 0, 0, 0.15);
}

.animated-text a:hover {
	color: #c5a47e;
}

.animated-text span {
	display: inline-block;
	text-transform: uppercase;
	vertical-align: middle;
}

.animated-text span:nth-of-type(1) {
	transition-delay: 0.1s;
	-webkit-transition-delay: 0.1s;
}

.animated-text span:nth-of-type(2) {
	transition-delay: 0.125s;
	-webkit-transition-delay: 0.125s;
}

.animated-text span:nth-of-type(3) {
	transition-delay: 0.15s;
	-webkit-transition-delay: 0.15s;
}

.animated-text span:nth-of-type(4) {
	transition-delay: 0.175s;
	-webkit-transition-delay: 0.175s;
}

.animated-text span:nth-of-type(5) {
	transition-delay: 0.2s;
	-webkit-transition-delay: 0.2s;
}

.animated-text span:nth-of-type(6) {
	transition-delay: 0.225s;
	-webkit-transition-delay: 0.225s;
}

.animated-text span:nth-of-type(7) {
	transition-delay: 0.25s;
	-webkit-transition-delay: 0.25s;
}

.animated-text span:nth-of-type(8) {
	transition-delay: 0.275s;
	-webkit-transition-delay: 0.275s;
	margin-right: 8px;
}

.animated-text span:nth-of-type(9) {
	transition-delay: 0.3s;
	-webkit-transition-delay: 0.3s;
}

.animated-text span:nth-of-type(10) {
	transition-delay: 0.325s;
	-webkit-transition-delay: 0.325s;
}

.animated-text span:nth-of-type(11) {
	transition-delay: 0.350s;
	-webkit-transition-delay: 0.350s;
}

.animated-text span:nth-of-type(12) {
	transition-delay: 0.375s;
	-webkit-transition-delay: 0.375s;
}

.guide-box {
	color: #fefefe;
	border-width: 1px 0;
	border-style: solid;
	border-color: #ddd;
}

.guide-box span {
	margin: 2px 0;
	background: #000;
	padding: 15px;
	display: block;
}
/* 안내문 css 종료 */
#container1 {

	text-align: left;
	margin: 0px 10% 0px 50px;
}

.postcodify_address {
	width: 280px;
}


/* #one {
	width:1024px;
}



.inputlabel{
 	display:inline-block;
 	width:100px;
 	}  */
#view {
	height: 100%;
}

label {
	width: 100px;
	display: inline-block;
}

 .auto_center {
	width: 400px;
	height: 400px;
	padding: 20px;
	margin: 200px auto;
} 

.checkbox {
	position: relative;
	top: -0.375rem;
	margin: 0 1rem 0 0;
	cursor: pointer;
} 

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
  background-color:rgba(128,186,142,0.3);
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
.dropdown-el input:checked + label {
  display: block;
  border-top: none;
  position: absolute;
  top: 0;
}
.dropdown-el input:checked + label:nth-child(2) {
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
.dropdown-el.expanded input:checked + label {
  color: #3694d7;
}
.dropdown-el.expanded::after {
  transform: rotate(-180deg);
  top: .55em;
}

.textclass {
	width:500px;
/* 	vertical-align: middle; */
	height:150px;
/* 	line-height:180%; */
}

/* 라디오버튼 체크박스 css 종료 */

.header2 {
	position: relative;
	color: rgba(128,186,142,0.3);
	background-attachment: fixed;
	background-size: cover;
	text-align: center;

}

#header:before {
	
	content: '';
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background: rgba(64, 64, 64, 0.125);
}



</style>

</head>
<body class="">
	<jsp:include page="./Header.jsp"></jsp:include>
	<div class="header2">
	<img src='css/images/air2.jpg' width="100%" height="500"/>
	
	
	</div>
	<!-- Main -->
	<div id="view">
		<div id="main">
			<form method="post" action="insertHouse" name="form" id="myForm" enctype="multipart/form-data">
				<div class="animated-text text-center">
						<a href="#">
							<span>${user.memName }님</span> 
							<span>반</span> 
							<span>갑</span> 
							<span>습</span> 
							<span>니</span> 
							<span>다!</span>
						</a>
						<p>호스트가 될 준비를 시작해보세요.
					</div>
				<div id="container1">
					<div id="one" style="display: block;">
						<fieldset>
						
							<legend>호스팅 1단계 </legend>
								<label for="room">방의개수</label>				
								<span class="dropdown-el">
    								<input type="radio" name="room" value="1개" id="rone" checked="checked">
    								<label for="rone" >1개</label>
    							
    								<input type="radio" name="room" value="2개" id="rtwo">
    								<label for="rtwo">2개</label>
    							
								    <input type="radio" name="room" value="3개" id="rthree">
							    	<label for="rthree">3개</label>
								</span>	
  								<br/>
  
								<label for="bath">욕실개수</label>  
  								<span class="dropdown-el">
									<input type="radio" name="bath" value="1개" id="bone" checked="checked">
									<label for="bone">1개</label>
									
    								<input type="radio" name="bath" value="2개" id="btwo">
    								<label for="btwo">2개</label>
    								
    								<input type="radio" name="bath" value="3개" id="bthree">
    								<label for="bthree">3개</label>
  								</span>	
   								<br/>
   
   								<label for="hosting">숙박인원</label>
  								<span class="dropdown-el">
    								<input type="radio" name="hosting" value="1개" id="hone" checked="checked">
    								<label for="hone">1명</label>
    								
    								<input type="radio" name="hosting" value="2개" id="htwo">
    								<label for="htwo">2명</label>
    								
    								<input type="radio" name="hosting" value="3개" id="hthree">
    								<label for="hthree">3명</label>
  								</span>					
								<br/>												
	
								<div class="checkbox"> <br/>
								<span>편의시설</span> 		
								<input name="checkboxes[]" type="checkbox" class="demo-1" id="tv" name="tv" value="tv">
								<label for="tv">TV</label>
								 
								<input name="checkboxes[]" type="checkbox" class="demo-1" id="aircon" name="aircon" value="aircon">
								<label for="aircon">에어컨</label>
								
								<input name="checkboxes[]" type="checkbox" class="demo-1" id="wifi" name="wifi" value="wifi" >
								<label for="wifi">Wi-Fi</label>
								
								<input name="checkboxes[]" type="checkbox" class="demo-1" id="elebe" name="elebe" value="elebe">
								<label for="elebe">엘리베이터</label>
								 		
								<input name="checkboxes[]" type="checkbox" class="demo-1" id="washing" name="washing" value="washing">
								<label for="washing">세탁기</label>			
								<p>
							</div>
							<a href="#" class="button button-style-1" id="nextTwo">다음단계</a>
						</fieldset>
					</div>
				</div>
				<br />

				<div id="container1">
					<div id="two" style="display: none;">
						<fieldset>
							<legend>호스팅 2단계</legend>
							<p>
								<label>숙소이름</label> 
								<input type="text" id="rname" name="rname" size="50" />
							</p>
							
							<a href="#" class="button button-style-1" id="postcodify_search_button">주소검색</a><br />		
							<label>상세 주소</label>
							<input type="text" id="xx" name="postcodify_address" value="" size="50" /><br />
							<label></label>
							<input type="text" id="yy" name="postcodify_details" value="" size="50" /><br />
							<label>메인 사진</label> 

							<input type="file" name="mainPhoto"/> 
							<br />
							<label>사진</label> 
							<input type="file" name="photo" multiple="multiple"/> 
							<br />
							
							<label>숙소 안내말</label>
							<textarea class="textclass"  name="infor"></textarea>
							<br /> 
							<a href="#" class="button button-style-1" id="backOne">이전단계</a>
							<a href="#" class="button button-style-1" id="nextThree">다음단계</a>
						</fieldset>
					</div>
				</div>
				<br />

				<div id="container1">
					<div id="three" style="display: none;">
						<fieldset>
							<legend>호스팅 3단계 </legend>
								<label for="room">결제단위</label>				
								<span class="dropdown-el">
    								<input type="radio" name="day" value="일" id="dd" checked="checked"><label for="dd" >일(Day)</label>
    								<input type="radio" name="day" value="주" id="ww"><label for="ww">주(Weekend)</label>
    								<input type="radio" name="day" value="월" id="mm"><label for="mm">월(Month)</label>
									<br/>
								</span>
								<br/>
								<label for="price" >가격(원) : </label> 
								<input type="number" id="price" name="price" />
						</fieldset>
						<a href="#" class="button button-style-1" id="backTwo">이전단계</a> 
						<input type="submit" class="button2" id="next" name="next" value="하우스등록"  style="height:50px"/>
					</div>
				</div>
			</form>
		</div>
	</div>

	<jsp:include page="./Footer.jsp"></jsp:include>	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script src="<%=request.getContextPath()%>/js/validate/dist/jquery.validate.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<script type="text/javascript">
$('.dropdown-el').click(function(e) {
  e.preventDefault();
  e.stopPropagation();
  $(this).toggleClass('expanded');
  $('#'+$(e.target).attr('for')).prop('checked',true);
});
$(document).click(function() {
  $('.dropdown-el').removeClass('expanded');
});

function goPopup(){
	var pop = window.open("<%=request.getContextPath()%>/jusoPopup", "pop", "width=570,height=420, scrollbars=yes"); //경로는시스템에맞게수정하여사용
	}
	function jusoCallBack(roadAddrPart1, addrDetail) {
		$("#xx").val(roadAddrPart1);
		$("#yy").val(addrDetail);
	}
	$(document).ready(function() {

		$("#postcodify_search_button").on("click", function() {
			goPopup();
		});
		$("#nextTwo").on("click", function() {
			$("#one").css("display", "none");
			$("#two").css("display", "block");
		})
		$("#nextThree").on("click", function() {
			$("#two").css("display", "none");
			$("#three").css("display", "block");
		})
		$("#backTwo").on("click", function() {

			$("#two").css("display", "block");
			$("#three").css("display", "none");
		})
		$("#backOne").on("click", function() {
			$("#one").css("display", "block");
			$("#two").css("display", "none");
		})
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
				price : {required : "Please specify your price"},
				day : "Please specify payment cycle",
				photo : "Must one more picture"
			}
		});
	});


;(function($) {

    $.fn.toggleCheckbox = function(toggleContents, callback) {

        var TC = {

            isChecked: function(element){

                return $(element).is(':checked');

            },
            getContentIndex: function(element){

                return (TC.isChecked(element)) ? 1 : 0;

            },
            getContent: function(index){

                var container = $('<span class="toggle-checkbox-container"></span>');

                return container.on('click', function(e){

                    var checkbox = $(this).prev();
                    var nextChecked = !TC.getContentIndex(checkbox);
                    var contentIndex = (nextChecked) ? 1 : 0;
                    var toggleContent = TC.getContent(contentIndex);

                    checkbox.after(toggleContent).prop('checked', nextChecked);
                    $(this).remove();
                    TC.fireCallback(e, checkbox);

                })
                .css('cursor', 'pointer')
                .html(toggleContents[index]);

            },
            fireCallback: function(e, checkbox){

                if(typeof(callback) == 'function') {

                    callback(e, checkbox);

                }

            }

        };

        $.each(this, function(key, element){

            var contentIndex = TC.getContentIndex(element);
            var toggleContent = TC.getContent(contentIndex);
            $(element).after(toggleContent)
                .css('display', 'none')
                .on('change', function(e){

                    var className = $(this).next().attr('class');

                    if(className == 'toggle-checkbox-container') {

                        $(this).next().remove();
                        var contentIndex = TC.getContentIndex(this);
                        var toggleContent = TC.getContent(contentIndex);
                        $(this).after(toggleContent);
                        TC.fireCallback(e, $(this));

                    }

            });

        });

    }

})(jQuery);

$('.demo-1').toggleCheckbox([
    '<i class="fa fa-circle-o fa-4x"></i>',
    '<i class="fa fa-check-circle-o fa-4x"></i>'
]);

</script>

</body>
</html>