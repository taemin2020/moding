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
		function goDetail(){
			var form = {
	          weddingId : ${weddingInfo.weddingId }
	        }
	    	pageHtmlPost("/detail", form);

	    	}
</script>
</head>

<body id="page-top">
	<div id="wrapper">
		<div style="margin-left: 86%;">
			<a id="kakao-link-btn" onclick="sendLink();">
			<img src="img/link.jpg" style="width: 25px; margin-left: 20%; margin-top: 4px;">
			</a>
		</div>
		<section class="content-section" id="portfolio"	style="padding: 0rem 0rem;">
			<div class="container" style="padding-left: 45px; padding-right: 45px;">
				<div class="content-section-heading text-center">
				<h2 style="font-size: 24px;font-weight: normal;font-family: MapoGoldenPier;letter-spacing: 0.18em;margin-bottom: -0.3rem;color: #23233C;">${weddingInfo.groomNm }</h2>
	     		   <div style="font-family: MapoGoldenPier;margin: 6px;">&</div>
		        <h2 style="font-size: 24px;font-weight: normal;font-family: MapoGoldenPier;letter-spacing: 0.18em;margin-bottom: -0.3rem;color: #23233C;">${weddingInfo.brideNm }</h2>
				
				</div>
			</div>
		</section>
		
		<div style="padding: 16px 0px 10px; text-align: center; font-size: 12px; font-family: NanumGothic; color: #53565D;">
		모딩을 통해서 두 사람을 축하 해주세요.
		</div>
	
	
	
		<div class="container" style="padding:0px 26px;">
			<div class="carousel slide" id="main-carousel" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#main-carousel" data-slide-to="0" class="active"></li>
					<li data-target="#main-carousel" data-slide-to="1"></li>
					<li data-target="#main-carousel" data-slide-to="2"></li>
					<li data-target="#main-carousel" data-slide-to="3"></li>
				</ol>
				<!-- /.carousel-indicators -->
	
				<div class="carousel-inner" style="border-radius: 6px;">
				<div class="carousel-item active">
						<img class="d-block img-fluid"	src="img/slide4.jpg" alt="">
						<div class="carousel-caption d-none d-md-block"></div>
				</div>
				<c:forEach items="${slidePic}" var="slidePic">
					<div class="carousel-item">
						<img class="d-block img-fluid"	src="img/<c:out value="${slidePic.attachNm}"/>" alt="">
						<div class="carousel-caption d-none d-md-block"></div>
					</div>
				</c:forEach>
				</div>
				
				<!-- 슬라이드 방향 버튼-->
	
				<!-- <a href="#main-carousel" class="carousel-co
				ntrol-prev" data-slide="prev">
					<span class="carousel-control-prev-icon"></span>
					<span class="sr-only" aria-hidden="true">Prev</span>
				</a>
				<a href="#main-carousel" class="carousel-control-next" data-slide="next">
					<span class="carousel-control-next-icon"></span>
					<span class="sr-only" aria-hidden="true">Next</span>
				</a> -->
			</div>
			<!-- /.carousel -->
		</div>
		
		<div style="text-align: center; padding: 23px 0px 3px 0px; color: rgba(83, 86, 93, 1); font-family: Playfair Display;">
		${weddingInfo.location }
		</div>
		<div style="text-align: center; color: rgba(83, 86, 93, 1); font-family: Playfair Display;">
		${weddingInfo.weddingDtm }
		</div>
	</div>
	<footer class="footer" style="margin: auto; width: 260px; padding:2rem;">
		<a onclick="goDetail();" class="btn btn-xl btn-light mr-4"	style="font-family: NanumGothic;padding: 5px;width: 100%;box-shadow:  0px 4px 25px rgba(0, 0, 0, 0.1);border-radius: 25px;font-weight: normal;">축하하러 가기</a>
	</footer>

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

	function sendLink() {
	    Kakao.Link.sendDefault({
	      objectType: 'feed',
	      content: {
	        title: '딸기 치즈 케익',
	        description: '#케익 #딸기 #삼평동 #카페 #분위기 #소개팅',
	        imageUrl:
	          'http://k.kakaocdn.net/dn/Q2iNx/btqgeRgV54P/VLdBs9cvyn8BJXB3o7N8UK/kakaolink40_original.png',
	        link: {
	          mobileWebUrl: 'https://developers.kakao.com',
	          webUrl: 'https://developers.kakao.com',
	        },
	      },
	      buttons: [
	        {
	          title: '웹으로 보기',
	          link: {
	            mobileWebUrl: 'https://developers.kakao.com',
	            webUrl: 'https://developers.kakao.com',
	          },
	        },
	        {
	          title: '앱으로 보기',
	          link: {
	            mobileWebUrl: 'https://developers.kakao.com',
	            webUrl: 'https://developers.kakao.com',
	          },
	        },
	      ],
	    })
	  }

	</script>

</body>
<style>


</style>


</html>
