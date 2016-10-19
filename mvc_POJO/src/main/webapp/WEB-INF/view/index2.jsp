<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Linear by TEMPLATED</title>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script>
<script src="js/init.js"></script>
<link rel="stylesheet" href="css/skel-noscript.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/style-desktop.css" />

  <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
  <link href="<%=request.getContextPath()%>/videoback/css/fullscreenDemo.css" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<style>
* {box-sizing: border-box;}
body{margin: 0;}
div {padding: 0px 0}
form {
  position: relative;
  width: 300px;
  margin: 0 auto;
}

.d3 {background: #F9F0DA;}
.d3 form {
  background: #A3D0C3;
}
.d3 input, .d3 button {
  border: none;
  outline: none;
  background: transparent;
}
.d3 input {
  width: 100%;
  height: 42px;
  padding-left: 15px;
}
.d3 button {
  height: 42px;
  width: 42px;
  position: absolute;
  top: 0;
  right: 0;
  cursor: pointer;
}
.d3 button:before {
  content: "\f002";
  font-family: FontAwesome;
  font-size: 16px;
  color: #F9F0DA;
}



body
{
  background-color:#eee
}
.wrap
{
  margin:50px auto 0 auto;
  width:100%;
  display:flex;
  align-items:space-around;
  max-width:1200px;
}
.tile
{
  width:380px;
  height:380px;
  margin:10px;
  background-color:#99aeff;
  display:inline-block;
  background-size:cover;
  position:relative;
  cursor:pointer;
  transition: all 0.4s ease-out;
  box-shadow: 0px 35px 77px -17px rgba(0,0,0,0.44);
  overflow:hidden;
  color:white;
  font-family:'Roboto';
  
}
.tile img
{
  height:100%;
  width:100%;
  position:absolute;
  top:0;
  left:0;
  z-index:0;
  transition: all 0.4s ease-out;
}
.tile .text
{
/*   z-index:99; */
  position:absolute;
  padding:30px;
  height:calc(100% - 60px);
  height:calc(100% - 60px);
}
.tile h1
{
 
  font-weight:300;
  margin:0;
  text-shadow: 2px 2px 10px rgba(0,0,0,0.3);
}
.tile h2
{
  font-weight:100;
  margin:20px 0 0 0;
  font-style:italic;
   transform: translateX(200px);
}
.tile p
{
  font-weight:300;
  margin:20px 0 0 0;
  line-height: 25px;
/*   opacity:0; */
  transform: translateX(-200px);
  transition-delay: 0.2s;
}
.animate-text
{
  opacity:0;
  transition: all 0.6s ease-in-out;
}
.tile:hover
{
/*   background-color:#99aeff; */
box-shadow: 0px 35px 77px -17px rgba(0,0,0,0.64);
  transform:scale(1.05);
}
.tile:hover img
{
  opacity: 0.2;
}
.tile:hover .animate-text
{
  transform:translateX(0);
  opacity:1;
}
.dots
{
  position:absolute;
  bottom:20px;
  right:30px;
  margin: 0 auto;
  width:30px;
  height:30px;
  color:currentColor;
  display:flex;
  flex-direction:column;
  align-items:center;
  justify-content:space-around;
  
}

.dots span
{
    width: 5px;
    height:5px;
    background-color: currentColor;
    border-radius: 50%;
    display:block;
  opacity:0;
  transition: transform 0.4s ease-out, opacity 0.5s ease;
  transform: translateY(30px);
 
}

.tile:hover span
{
  opacity:1;
  transform:translateY(0px);
}

.dots span:nth-child(1)
{
   transition-delay: 0.05s;
}
.dots span:nth-child(2)
{
   transition-delay: 0.1s;
}
.dots span:nth-child(3)
{
   transition-delay: 0.15s;
}


@media (max-width: 1000px) {
  .wrap {
   flex-direction: column;
    width:400px;
  }
}

input, input[placeholder] {
   font-weight: bold;
   text-align: center;
}
body{
   background: white;
}



</style>

</head>
<body class="homepage">
   <!-- Header -->
   <div id="header">
      <div id="nav-wrapper">
         <!-- Nav -->
         <nav id="nav">
            <ul class="menu1">
               <li class="active"><a href="index">메인가기</a>
                  <ul class="sub">
                     <li class="active"><a href="#">&nbsp</a></li>
                     <li class="active"><a href="#">&nbsp</a></li>
                     <li class="active"><a href="#">&nbsp</a></li>
                  </ul></li>
               <li class="active"><a href="insertHouse">호스팅하기</a>
                  <ul class="sub">
                     <li class="active"><a href="#">&nbsp</a></li>
                     <li class="active"><a href="#">&nbsp</a></li>
                     <li class="active"><a href="#">&nbsp</a></li>
                  </ul></li>
               <li><a href="chat">메시지</a>
                  <ul class="sub">
                     <li class="active"><a href="#">&nbsp</a></li>
                     <li class="active"><a href="#">&nbsp</a></li>
                     <li class="active"><a href="#">&nbsp</a></li>
                  </ul></li>
               <li><a href="faq">고객센터</a>
                  <ul class="sub">
                     <li class="active"><a href="faq">FAQ</a></li>
                     <li class="active"><a href="report?page=1">신고 게시판</a></li>
                     <li class="active"><a href="#">&nbsp</a></li>
                  </ul></li> 
               
               <c:choose>   
               <c:when test="${ empty user }">
                  <li><a href="login">로그인</a>
                     <ul class="sub">
                        <li class="active"><a href="terms">회원가입</a></li>
                        <li class="active"><a href="idAndPass">ID/PASS 찾기</a></li>
                        <li class="active"><a href="#">&nbsp</a></li>
                     </ul>
                  </li>
               </c:when>
               <c:otherwise>
                  <li><a href="inputPass">마이페이지</a>
                     <ul class="sub">
                        <li class="active"><a href="logout">로그아웃</a></li>
                        <li class="active"><a href="#">&nbsp</a></li>
                        <li class="active"><a href="#">&nbsp</a></li>
                     </ul>
                  </li>
               </c:otherwise>   
               </c:choose>

               <!-- <li><a href="search?page=1">검색된 페이지</a>
                  <ul class="sub">
                     <li class="active"><a href="#">&nbsp</a></li>
                     <li class="active"><a href="#">&nbsp</a></li>
                     <li class="active"><a href="#">&nbsp</a></li>
                  </ul></li> -->
               <li><a href="bbs?page=1">문의게시판</a>
                  <ul class="sub">
                     <li class="active"><a href="#">&nbsp</a></li>
                     <li class="active"><a href="#">&nbsp</a></li>
                     <li class="active"><a href="#">&nbsp</a></li>
                  </ul></li>
            </ul>
         </nav>
      </div>

      <div class="container">
         <!-- Logo -->
         <div id="logo">
<!--             <h1>
               <a href="#">사랑방손님</a>
            </h1>
            <span class="tag">By POJO</span> -->
         </div>
      </div>
   </div>

      <div class="block-container">
       <div class="block">
<!--          <h1>Video Background</h1>
         <h3>Fullscreen applied to <body> </h3> -->
       </div>
     </div>

   <!-- Featured -->
   <div id="featured">
      <div class="container">
         <header>
            <h2>Welcome to Site!</h2>
            </header>
            <p>저희 <strong>사랑방손님은</strong>,온라인 및 모바일에서 두정동 근처의 독특한 숙소들을 올리고, 발견하고, <a href="http://templated.co">예약할 수 있는</a>믿을만한 커뮤니티 플랫폼 입니다. 
         <!--    <a href="http://templated.co/license">사랑방손님은 간편합니다.</a> -->
             하룻밤 지낼 원룸, 일주일 동안 지낼 수 있는 오피스텔, 한달 동안 지낼 수 있는 빌라 등 &ndash; 다양한 가격대의 숙소가 여러분을 기다리고 있습니다!
              사랑방 손님은 남는 공간을 통해  <a href="http://templated.co">수익을 창출하고 </a> 여러사람들에게 보여줄 수 있는 가장  <a href="http://twitter.com/templatedco">쉬운 방법입니다.</a><br/></p>
            <hr />      
            
   <div class="d3">
<form method="get" action="searchbar">
  <input id="text_box" name="key" type="text" placeholder="두정동 또는 건물이름을 입력하세요">
  <input type="hidden" name="page" value="1" />
  <button type="submit"></button>
</form>
</div>   

         <p>
            지금 <a href="http://templated.co"> 인기있는 </a>숙소를 만나보세요!
      </div>
   </div>      

   <!-- Main -->
	<div class="container">
		<div class="wrap">
			<div class="tile">
				<a href="#"><img src='css/images/image2.jpg' />
				<div class="text">
					<h1>Lorem ipsum.</h1>
					<h2 class="animate-text">More lorem ipsum bacon ipsum.</h2>
					<p class="animate-text">Bacon ipsum dolor amet pork belly
						tri-tip turducken, pancetta bresaola pork chicken meatloaf. Flank
						sirloin strip steak prosciutto kevin turducken.</p>
					<div class="dots">
						<span></span> <span></span> <span></span>
					</div>
				</div>
				</a>
			</div>


			<div class="tile">
				<a href="#"><img src='css/images/image2.jpg' />
				<div class="text">
					<h1>Lorem ipsum.</h1>
					<h2 class="animate-text">More lorem ipsum bacon ipsum.</h2>
					<p class="animate-text">Bacon ipsum dolor amet pork belly
						tri-tip turducken, pancetta bresaola pork chicken meatloaf. Flank
						sirloin strip steak prosciutto kevin turducken.</p>
					<div class="dots">
						<span></span> <span></span> <span></span>
					</div>
				</div>
				</a>
			</div>

			<div class="tile">
				<a href="#"><img src='css/images/image2.jpg' />
				<div class="text">
					<h1>Lorem ipsum.</h1>
					<h2 class="animate-text">More lorem ipsum bacon ipsum.</h2>
					<p class="animate-text">Bacon ipsum dolor amet pork belly
						tri-tip turducken, pancetta bresaola pork chicken meatloaf. Flank
						sirloin strip steak prosciutto kevin turducken.</p>
					<div class="dots">
						<span></span> <span></span> <span></span>
					</div>
				</div>
				</a>
			</div>
		</div>

		<div class="wrap">
			<div class="tile">
				<a href="#">
				<img src='http://www.blueb.co.kr/SRC2/_image/s_01.jpg' />
				<div class="text">
					<h1>Lorem ipsum.</h1>
					<h2 class="animate-text">More lorem ipsum bacon ipsum.</h2>
					<p class="animate-text">Bacon ipsum dolor amet pork belly
						tri-tip turducken, pancetta bresaola pork chicken meatloaf. Flank
						sirloin strip steak prosciutto kevin turducken.</p>
					<div class="dots">
						<span></span> <span></span> <span></span>
					</div>
				</a>
				</div>
			</div>


			<div class="tile">
				<img src='http://www.blueb.co.kr/SRC2/_image/s_02.jpg' />
				<a href="#">
				<div class="text">
					<h1>Lorem ipsum.</h1>
					<h2 class="animate-text">More lorem ipsum bacon ipsum.</h2>
					<p class="animate-text">Bacon ipsum dolor amet pork belly
						tri-tip turducken, pancetta bresaola pork chicken meatloaf. Flank
						sirloin strip steak prosciutto kevin turducken.</p>
					<div class="dots">
						<span></span> <span></span> <span></span>
					</div>
				</div>
				</a>
			</div>

			
			<div class="tile">
				<a href="#">
				<img src='http://www.blueb.co.kr/SRC2/_image/s_03.jpg' />
				<div class="text">
					<h1>Lorem ipsum.</h1>
					<h2 class="animate-text">More lorem ipsum bacon ipsum.</h2>
					<p class="animate-text">Bacon ipsum dolor amet pork belly
						tri-tip turducken, pancetta bresaola pork chicken meatloaf. Flank
						sirloin strip steak prosciutto kevin turducken.</p>
					<div class="dots">
						<span></span> <span></span> <span></span>
					</div>
				</div>
				</a>
			</div>
		</div>	

  <!-- Tweet -->
	<div id="tweet">
		<div class="container1">
			<section>
				<blockquote>
					&ldquo; 2016 공주대학교 프로젝트 POJO &rdquo;
					<p>양희준 홍석진 박준영 황민정</p>
				</blockquote>
			</section>
		</div>
	</div>
   <jsp:include page="jsp/Footer.jsp"></jsp:include>
</body>
<script src="http://code.jquery.com/jquery.js" /></script>
<script src="js/jquery.bxslider/jquery.bxslider.min.js"></script>
 <script src="<%=request.getContextPath()%>/videoback/dist/vidbg.js"></script>
 <script type="text/javascript">
 
 jQuery(function($){
     $('#header').vidbg({
         'mp4': '<%=request.getContextPath()%>/videoback/media/air.mp4',
         'webm': '<%=request.getContextPath()%>/videoback/media/air.webm',
         'poster': '<%=request.getContextPath()%>/videoback/media/fallback.jpg',
     }, {
       // Options
       muted: true,
       loop: true,
      overlay: true,
     });
 });
 
 var subMenu = $(".sub");
 subMenu.hide();
    $(document).ready(function() {
       $('.bxslider').bxSlider({
          /* adaptiveHeight:true, */
          mode : 'horizontal',
          auto : true,
          adaptiveHeight : true,
          mode : 'fade',
          captions : true,
          pagerCustom : '#bx-pager',
          slideWidth :2500,

       });
       $("#nav").hover(function(e) {
          if (e.type == "mouseenter") {
             subMenu.show();
          }
       });
       $("#nav").hover(function(e) {
          if (e.type == "mouseleave") {
             subMenu.hide();
          }
       });
    });
</script>
</html>