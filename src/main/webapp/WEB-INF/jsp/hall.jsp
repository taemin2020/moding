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
	<img src="img/logo.jpg" alt="moding logo" style="height: auto; width: auto; display: block; margin: 0px auto;">
	<div style="height: 190px;"></div>


	<div>
	<div>
	<c:forEach items="${sharePic}" var="sharePic">
		<div style="padding:5px">
		<img src="C:\upload\<c:out value="${sharePic.attachNm}"/>" style="width:20%">
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
		
	});
	</script>

</body>

</html>
