<!-- FAQ-자주하는 질문 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

    
    <link rel="stylesheet" href="css/reset.css">

    
<style>
body {
  font-family: "Open Sans";
  font-size: 13px;
  font-size: 0.8125rem;
  font-weight: 300;
  color: #4a6e78;
}

h1 {
  text-align: center;
  font-size: 35px;
  font-size: 2.1875rem;
  line-height: 1.8;
  padding: 50px 0;
}

.accordion {
list-style:none;padding:0;	
  max-width: 560px;
  margin: 50px auto 100px auto;
  border-top: 1px solid #d9e5e8;
}
.accordion li {
list-style:none;
  border-bottom: 1px solid #d9e5e8;
  position: relative;
}
.accordion li p {
  display: none;
  padding: 10px 25px 30px;
  color: #6b97a4;
}
.accordion a {
  width: 100%;
  display: block;
  cursor: pointer;
  font-weight: 600;
  line-height: 3;
  font-size: 14px;
  font-size: 0.875rem;
  text-indent: 15px;
  user-select: none;
}
.accordion a:after {
  width: 8px;
  height: 8px;
  border-right: 1px solid #4a6e78;
  border-bottom: 1px solid #4a6e78;
  position: absolute;
  right: 10px;
  content: " ";
  top: 17px;
  transform: rotate(-45deg);
  -webkit-transition: all 0.2s ease-in-out;
  -moz-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
}
.accordion p {
  font-size: 13px;
  font-size: 0.8125rem;
  line-height: 2;
  padding: 10px;
}

a.active:after {
  transform: rotate(45deg);
  -webkit-transition: all 0.2s ease-in-out;
  -moz-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
}

</style>

</head>
<body class="">
	<jsp:include page="./Header.jsp"></jsp:include>
	<div id="main">
<ul class="accordion">
	<li>
		<a>1.예약은 어떻게 하나요?</a>
<p>사랑방손님에서 예약하시면 다른 사람의 집에서 원하는 기간만큼 머물게 되는 겁니다. 검색창에 두정(동)또는 건물명을 검색해 원하는 방을 찾습니다.각 방의 후기,설명,숙소 이용규칙,편의시설 등의 정보를 살펴보고 적절한 방인지 확인하시기 바랍니다.숙소에 대한 질문이 있을 때에는 언제든지 프로필에 나와있는 연락처로 호스트에게 연락하세요!
원하는 방을 선택하셨다면 예약하기 버튼을 눌러 원하는 날짜를 선택한뒤 예약을 합니다.그 뒤로는 호스트의 예약 요청 수락을 기다리면 됩니다.
	</li>
	<li>
		<a>2.호스팅은 어떻게 하나요?</a>
		<p>페이지 상단에서 호스팅하기를 클릭 한 뒤,등록하려는 하우스의 정보에 맞게 사랑방손님이 제공하는 약관에 맞춰 정보를 입력하시면 됩니다.정성스럽게 쓴 숙소 안내말과 여러장의 사진들은 고객에게 큰 도움이 됩니다!</p>
	</li>
	<li>
		<a>3.예약 취소는 어떻게 하나요?</a>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.</p>
	</li>
		<li>
		<a>4.호스팅 취소는 어떻게 하나요?</a>
		<p>본인이 호스트인 상태에서 호스팅한 글을 이제 더이상 게시하고 싶지 않다면, 화면 상단에 있는 마이페이지-호스팅목록으로 들어가 취소하기 버튼이나 호스팅 된 게시글 안에 있는 취소하기 버튼을 클릭하시면 더이상 게시글이 사랑방손님에 게시되지 않습니다.</p>
	</li>
		<li>
		<a>5.매물개수에 제한이 있나요?</a>
		<p>사랑방손님에 광고할 수 있는 매물개수에는 특별한 제한을 두지 않습니다.</p>
	</li>
		<li>
		<a>6.허위매물은 어떻게 관리 하나요?</a>
		<p>허위매물 관리는 사랑방손님 관리자들이 수시로 매물을 살펴보고 허위매물을 필터링하고 있습니다.지역구별 평균 시세를 파악해 시세에 비해 확연히 저렴한 매물이나 실사진이 아닌 사진이 포함된 경우 직접 연락을 취해 정보를 수정을 요청합니다.</p>
	</li>
		<li>
		<a>7.계정과 프로필 수정(탈퇴),프로필 사진 수정은 어떻게 하나요?</a>
		<p>사랑방손님에 가입한 아이디와 비밀번호를 입력해 로그인 한 뒤 화면 상단에 있는 마이페이지에 비밀번호를 한번 더 입력하시면 프로필을 수정할 수 있는 창이 뜹니다.</p>
	</li>
</ul>

		<p>	<a href="#" class="button button-style1" >뒤로가기</a>
		</div>
	</div>

	<jsp:include page="./Footer.jsp"></jsp:include>
</head>
<body>


</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<style>
    .divs {display:none;}
</style>
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script>
(function($) {
    $('.accordion > li:eq(0) a').addClass('active').next().slideDown();

    $('.accordion a').click(function(j) {
        var dropDown = $(this).closest('li').find('p');

        $(this).closest('.accordion').find('p').not(dropDown).slideUp();

        if ($(this).hasClass('active')) {
            $(this).removeClass('active');
        } else {
            $(this).closest('.accordion').find('a.active').removeClass('active');
            $(this).addClass('active');
        }

        dropDown.stop(false, true).slideToggle();

        j.preventDefault();
    });
})(jQuery);
</script>

</html>