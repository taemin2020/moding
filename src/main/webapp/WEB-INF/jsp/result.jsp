<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>moding</title>

<!-- Moding CSS -->
<link href="css/moding.css" rel="stylesheet">

<!-- Bootstrap Core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!--font  -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Niconne&display=swap" rel="stylesheet">

<!-- Custom Fonts -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"	rel="stylesheet" type="text/css">
<link href="vendor/simple-line-icons/css/simple-line-icons.css"	rel="stylesheet">

<!-- Custom CSS -->
<link href="css/stylish-portfolio.min.css" rel="stylesheet">

<script language="JavaScript">

</script>
</head>

<body id="page-top" style = "background : linear-gradient(12.04deg, #DFDDF5 0%, #EBF4FC 100%);">
	<img src="img/egg.jpg" style="height: auto; width: auto; position:absolute;">
	<img src="img/logo.jpg" alt="moding logo" style="height: auto; width: auto; display: block; margin: 0px auto;">
	<div style="height: 190px;"></div>

	<section class="content-section" id="portfolio"	style="padding: 0rem 0rem;">
		<div class="container" style="color: rgb(35, 35, 60); line-height: 27px; letter-spacing: 0em; font-family: Tmoney RoundWind; font-size: 21px; font-style: normal; font-weight: 800; padding-bottom:40px;">
			<div class="content-section-heading text-center">
			참석해주셔서 감사합니다.</br>
			오늘의 주인공 만나러 가요.
			</div>
		</div>
	</section>
	<div>
	<a onclick="kakaoPay();" class="btn btn-xl btn-light mr-4"	style="font-family: NanumGothic;padding: 5px;width: 100%;box-shadow:  0px 4px 25px rgba(0, 0, 0, 0.1);border-radius: 25px;font-weight: normal;">축하하러 가기</a>
	</div>
	<div>
	<c:forEach items="${slidePic}" var="slidePic">
		<div style="padding:0px 10px">
		<img src="img/<c:out value="${slidePic.attachNm}"/>" style="width:100%">
		</div>
		</c:forEach>
	</div>


	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<script src="js/moding.js"></script>
	<script src="js/moding.min.js"></script>
	
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
	
	$(document).ready(function() {
		Kakao.init('130a358c3e9686340b0be0be9c95aba0'); // 카카오 실행하기

	});
	
	function kakaoPay(){
	
		var form = {
				grant_type : 'authorization_code',
				client_id : '130a358c3e9686340b0be0be9c95aba0',
				redirect_uri : 'http://localhost:8080/result',
				code : ${accessCode}

				}

		 $.ajax({
   	       url : 'https://kauth.kakao.com/oauth/token',
            type : 'POST',
            data : form,
     contentType : 'application/x-www-form-urlencoded;charset=utf-8',
          success: function(data) {
		        	  
		        	  sendKakao(data);
		        	  
                  },// 요청 완료 시
      	        error:function(jqXHR) {
      	        	alert('계좌정보 전송 실패');
      	        }// 요청 실패.
      });
	
	}

	function sendKakao(data){

		
		Kakao.Auth.login({
		      scope: 'talk_message',
		      success: function(data) {
		    	Kakao.Auth.setAccessToken(data.access_token);
		    	Kakao.API.request({
					  url: '/v2/api/talk/memo/default/send',
					  data: {
					    template_object: {
					      object_type: 'feed',
					      content: {
					        title: '계좌 정보를 클릭하여 축의금을 전송하세요.',
					        description: ${accountInfo },
					        image_url:
					          'http://moding.io/img/Favicon.jpg',
					        link: {
					          web_url: 'https://wawo.netlify.app',
					          mobile_web_url: 'https://wawo.netlify.app',
					        },
					      },
					      button_title: '모딩 홈페이지',
					    },
					  },
					  success: function(response) {
						  alert("계좌정보가 카카오톡 나와의 채팅방에 전송 되었습니다.");
					  },
					  fail: function(error) {
					    alert("계좌정보 전송에 실패 하였습니다.");
					  }
					});
		      },
		      fail: function(err) {
		        alert('failed to login: ' + JSON.stringify(err))
		      },
		    })

		}
	</script>

</body>

</html>
