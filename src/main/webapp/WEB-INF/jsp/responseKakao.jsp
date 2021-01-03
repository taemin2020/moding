<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>moding</title>

<script language="JavaScript">

</script>
</head>

<body>
</body>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>

$(document).ready(function() {
	Kakao.init('130a358c3e9686340b0be0be9c95aba0'); // 카카오 실행하기
	var form = {
			grant_type : 'authorization_code',
			client_id : '130a358c3e9686340b0be0be9c95aba0',
			redirect_uri : 'http://moding.io/result',
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
  	        	alert('여기서 실패');
  	        }// 요청 실패.
  });

	 

	
});

function sendKakao(data){

	
	Kakao.Auth.login({
	      scope: 'talk_message',
	      success: function(data) {
		    alert(data.access_token);
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
				      button_title: '바로 확인',
				    },
				  },
				  success: function(response) {
					  
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

</html>
