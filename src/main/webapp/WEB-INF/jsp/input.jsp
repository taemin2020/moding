<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Moding</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome Moding!</h1>
                                    </div>
                                    <form class="user">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="bride" placeholder="신부의 이름을 입력 해주세요.">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="groom" placeholder="신랑의 이름을 입력 해주세요">
                                        </div><!-- 
                                        <div id="checkfail">
                                            모딩에 등록된 결혼식이 없습니다.
                                        </div> -->
                                        <button type="button" onclick="checkHost();" class="btn btn-primary btn-user btn-block">
                                            입장하기
                                        </button>
                                        <hr>
                                    </form>
                                    <hr>
                                    <!--나중에 여기다가 모딩 안내글을 넣어도 좋을     -->
 <!--                                    <div class="text-center">
                                        <a class="small" href="forgot-password.html">Forgot Password?</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="register.html">Create an Account!</a>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

   
    <script src="js/moding.js"></script>
	<script src="js/moding.min.js"></script>
    
    <script>
    function checkHost(){
    	var form = {
               bride : document.getElementById("bride").value,
               groom : document.getElementById("groom").value
                   
    			}
    $.ajax({
    	      url : 'checkHost',
             type : 'POST',
             data : form,
         dataType : 'json',
           success: function(data) {
               if(data.result == "success"){
                   index();
                   }else{
                       alert("모딩에 등록된 결혼식 정보가 없습니다.");
                       }},// 요청 완료 시
       	        error:function(data) {
       	        	alert('fail~!!!');
       	        }// 요청 실패.
       });


        }

    
    function index(){

    	var form = {
               bride : document.getElementById("bride").value,
               groom : document.getElementById("groom").value
         }
    	pageHtmlGet("/index", form);

        }
</script>

</body>

</html>