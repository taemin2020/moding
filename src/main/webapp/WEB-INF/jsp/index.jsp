<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8" isELIgnored="false"%>
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

<!-- Custom Fonts -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<link href="vendor/simple-line-icons/css/simple-line-icons.css"	rel="stylesheet">

<!-- Custom CSS -->
<link href="css/stylish-portfolio.min.css" rel="stylesheet">

<script language="JavaScript">
		function goMain(){    
			var form = {
	                    bride : document.getElementById("bride").value,
	                    groom : document.getElementById("groom").value
	        	  }
	    	pageHtmlGet("/goMain", form);
		}
</script>


</head>
<body id="page-top"  onLoad="setTimeout('goMain()', 4000)">
<input type="hidden" id="bride" value="${weddingInfo.brideNm}">
<input type="hidden" id="groom" value="${weddingInfo.groomNm}">


	<!-- Header -->
	<header class="masthead d-flex" href="#main" style="background: linear-gradient(193.32deg, #B3CCFF 9.84%, #D5ACFF 100%);">
		<div class="container text-center my-auto">
			<img src="img/indexLogo.jpg" class="indexLogo" id="indexLogo" style="width:75%;">
			</div>
		</div>
		<div class="overlay"></div>
	</header>


	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<script src="js/moding.js"></script>
	<script src="js/moding.min.js"></script>

</body>
<style>
#indexLogo{
	animation-delay : 1s;
	animation-duration : 3s;
	animation-name : fadeOut;
	animation-iteration-count: infinite;
}

@keyframes fadeOut {
	from {
	transform : scale(0.1);
	}
	
	to {
	transform : scale(1.0);
	}
}
</style>


</html>
