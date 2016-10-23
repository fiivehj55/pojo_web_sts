<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<title>Insert title here</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>
<body>
	<a id="kakao-login-btn"></a>
	<a href="http://alpha-developers.kakao.com/logout"></a>
	<br/>
	
	<a id="custom-login-btn" href="javascript:loginWithKakao()">
		<img src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="300"/>
	</a>
	<br/>
	
	카카오톡 링크 : 
	<a id="kakao-link-btn" href="javascript:;">
		<img src="//dev.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png"/>
	</a>
	<br/>
	
	웹 버튼
	<a id="kakao-link-btn1" href="javascript:;">
		<img src="//dev.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png"/>
	</a>
	<br/>
	
	앱 버튼
	<a id="kakao-link-btn2" href="javascript:;">
		<img src="//dev.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png"/>
	</a>
	<br/>
	
	나에게 보내기
	<a id="send-to-btn" href="#" onclick="sendTo();">
		<img src="//mud-kage.kakao.com/14/dn/btqc6xrxbuT/7VJk7YSWITkz9K9pbXEffk/o.jpg"/>
	</a>
	<br/>
	
	<script type='text/javascript'>
		//<![CDATA[
		// 사용할 앱의 JavaScript 키를 설정해 주세요.
		Kakao.init('36136f61436400af908b6fe859f787aa');
		// 카카오 로그인 버튼을 생성합니다.
		Kakao.Auth.createLoginButton({
			container : '#kakao-login-btn',
			success : function(authObj) {
				alert(JSON.stringify(authObj));
				Kakao.API.request({
			    	url: '/v1/user/me',
			    	success: function(res) {
			    		alert(JSON.stringify(res));
					},
					fail : function(err) {
						alert(JSON.stringify(err));
					}
				});
			},
			fail: function(err) {
				alert(JSON.stringify(err));
			}
		});
		//]]>
		
		Kakao.Link.createTalkLinkButton({
			container: '#kakao-link-btn',
			label: '카카오링크 샘플에 오신 것을 환영합니다.',
			image: {
				src: 'http://dn.api1.kage.kakao.co.kr/14/dn/btqaWmFftyx/tBbQPH764Maw2R6IBhXd6K/o.jpg',
				width: '300',
				height: '200'
			},
			webButton: {
				text: 'POJO',
				url: '192.168.0.58:9090/mvc_POJO/' // 앱 설정의 웹 플랫폼에 등록한 도메인의 URL이어야 합니다.
			}
		});
		
		Kakao.Link.createTalkLinkButton({
			container: '#kakao-link-btn1',
			label: '카카오링크 샘플에 오신 것을 환영합니다.',
			image: {
				src: 'http://dn.api1.kage.kakao.co.kr/14/dn/btqaWmFftyx/tBbQPH764Maw2R6IBhXd6K/o.jpg',
				width: '300',
				height: '200'
			},
			webButton: {
				text: 'POJO',
				url: '192.168.0.58:9090/mvc_POJO/' // 앱 설정의 웹 플랫폼에 등록한 도메인의 URL이어야 합니다.
			}
		});
		
		Kakao.Link.createTalkLinkButton({
			container: '#kakao-link-btn2',
			label: '카카오링크 샘플에 오신 것을 환영합니다.',
			image: {
				src: 'http://dn.api1.kage.kakao.co.kr/14/dn/btqaWmFftyx/tBbQPH764Maw2R6IBhXd6K/o.jpg',
				width: '300',
				height: '200'
			},
			appButton: {
				text: '앱으로 이동'
			}
		});
		//]]>
		
		function sendTo(){
        	Kakao.Auth.login({
            //// 메모챗을 발송하기 위해서는 로그인할때 추가적인 scope 을 얻어야 한다.
            scope: "PROFILE,TALK_MESSAGE",
            success: function(res) {
                Kakao.API.request({
                    url: '/v1/api/talk/memo/send',
                    data: {
                        template_id: '0',
                        args: '{"${USER_NAME}": "developer","${AGE}": 20}'
                    },
                    success: function(res) {
                        alert('success!');
                        console.log(res);
                    },
                    fail: function(error) {
                        alert('error! \n' + JSON.stringify(error));
                        console.log(error);
                    }
                })
            },
            fail: function(error) {
                console.log(error);
            }
        });
    }
  //]]>
	</script>
</body>
</html>