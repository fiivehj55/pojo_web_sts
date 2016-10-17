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
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.</p>
	</li>
	<li>
		<a>2.호스팅은 어떻게 하나요?</a>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.</p>
	</li>
	<li>
		<a>3.예약 취소는 어떻게 하나요?</a>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.</p>
	</li>
		<li>
		<a>3.예약 취소는 어떻게 하나요?</a>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.</p>
	</li>
		<li>
		<a>4.호스팅 취소는 어떻게 하나요?</a>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.</p>
	</li>
		<li>
		<a>5.호스팅 취소는 어떻게 하나요?</a>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.</p>
	</li>
		<li>
		<a>6.계정과 프로필</a>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, ipsum, fuga, in, obcaecati magni ullam nobis voluptas fugiat tenetur voluptatum quas tempora maxime rerum neque deserunt suscipit provident cumque et mollitia ex aspernatur porro minus sapiente voluptatibus eos at perferendis repellat odit aliquid harum molestias ratione pariatur adipisci. Aliquid, iure.</p>
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