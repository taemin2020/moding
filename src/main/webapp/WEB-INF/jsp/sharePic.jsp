<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Wilio Survey, Quotation, Review and Register form Wizard by Ansonika.">
    <meta name="author" content="Ansonika">
    <title>moding</title>
    
    <!-- Favicons-->
    <link rel="shortcut icon" href="img/Favicon.jpg" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/Favicon.jpg">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/Favicon.jpg">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/Favicon.jpg">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/Favicon.jpg">

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:400,500,600" rel="stylesheet">

    <!-- BASE CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/menu.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
	<link href="css/vendors.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="css/moding.css" rel="stylesheet">
	
	<!-- MODERNIZR MENU -->
	<script src="js/modernizr.js"></script>
	

</head>

<body style ="background: linear-gradient(12.04deg, #DFDDF5 0%, #EBF4FC 100%);">
	<input type="hidden" id="guestId" name="guestId" value="${guestId }">
	<input type="hidden" id="weddingId" name="weddingId" value="${weddingId }">
	<!-- /menu -->
	<div id="progressbar"></div>
	<div class="container-fluid full-height">
		<div class="row row-height">		
			<div class="col-lg-6 content-right" id="start" style="padding: 30px 38px;">
				<div id="wizard_container">
					<div id="top-wizard">							
						</div>
						<!-- /top-wizard -->
						<form id="wrap  ped">
						<input id="website" name="website" type="text" value="">
							<div id="middle-wizard">0     4
								<div class="submit step" style="height:450px;">
									<h3 class="main_question" style="color: rgb(35, 35, 60); line-height: 27px; letter-spacing: 0em; font-family: Tmoney RoundWind; font-size: 21px; font-style: normal; font-weight: 800;">
									신랑신부의 생생한 결혼식<br>사진을 올려주세요!</h3>
									<fieldset class="form-group">
								        <a href="javascript:void(0)" onclick="$('#pro-image').click()">Upload Image</a>
								        <input type="file" id="pro-image" name="pro-image" style="display: none;" class="form-control" multiple/>
								    </fieldset>
								    <div class="preview-images-zone">
								        <div class="preview-image preview-show-1">
								            <div class="image-zone"><img id="pro-img-1" src="img/camera.jpg" onclick="$('#pro-image').click()"></div>
								            <!-- <div class="tools-edit-image"><a href="javascript:void(0)" data-no="1" class="btn btn-light btn-edit-image">edit</a></div> -->
								        </div>
								     </div>
								    <!--  <input type="button" value="submit" id="btn_upload"/> -->
								</div>
							</div>
							<!-- /middle-wizard -->
							<div id="bottom-wizard" style="text-align:center;">
								<button type="button" name="submit" class="submit" onclick="result();" style="background: rgb(42, 41, 42); border-radius: 25px; width: 189px; box-shadow: 0px 4px 25px rgba(0,0,0,0.1); margin-top: -25px;">결혼식 구경하기</button>
							</div>
							<!-- /bottom-wizard -->
						</form>
					</div>
					<!-- /Wizard container -->
			</div>
			<!-- /content-right-->
		</div>
		<!-- /row-->
	</div>
	<!-- /container-fluid -->

	<div class="cd-overlay-nav">
		<span></span>
	</div>
	<!-- /cd-overlay-nav -->

	<div class="cd-overlay-content">
		<span></span>
	</div>
	<!-- /cd-overlay-content -->

	</div>
	
	<!-- COMMON SCRIPTS -->
	<script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/common_scripts.min.js"></script>
	<script src="js/velocity.min.js"></script>
	<script src="js/functions.js"></script>

	<!-- Wizard script -->
	<script src="js/survey_func.js"></script>
	
	<script src="js/moding.js"></script>
	<script src="js/moding.min.js"></script>
	
	<script>
		
	$(document).ready(function() {

		/*사진 미리보기  */
		document.getElementById('pro-image').addEventListener('change', readImage, false);	    
	    $( ".preview-images-zone" ).sortable();
	    $(document).on('click', '.image-cancel', function() {
	        let no = $(this).data('no');
	        $(".preview-image.preview-show-"+no).remove();
	    });
	    /*사진 미리보기  */
		    			
	});

	/*사진 미리보기  */
	var num = 2;
	function readImage() {
	    if (window.File && window.FileList && window.FileReader) {
	        var files = event.target.files; //FileList object
	        var output = $(".preview-images-zone");

	        for (let i = 0; i < files.length; i++) {
	            var file = files[i];
	            if (!file.type.match('image')) continue;
	            
	            var picReader = new FileReader();
	            
	            picReader.addEventListener('load', function (event) {
	                var picFile = event.target;
	                var html =  '<div class="preview-image preview-show-' + num + '">' +
	                            '<div class="image-cancel" data-no="' + num + '">x</div>' +
	                            '<div class="image-zone"><img id="pro-img-' + num + '" src="' + picFile.result + '"></div>' +
	                            /* '<div class="tools-edit-image"><a href="javascript:void(0)" data-no="' + num + '" class="btn btn-light btn-edit-image">edit</a></div>' + */
	                            '</div>';

	                output.append(html);
	                num = num + 1;
	            });

	            picReader.readAsDataURL(file);
	        }
	    } else {
	        console.log('Browser not support');
	    }
	}
 /*사진 미리보기  */
    	
    function result(){

    		var formData = new FormData();
      		var inputFile = $("input[name=pro-image]");
       		var files = inputFile[0].files;


       		for(var i=0; i < files.length; i++){
    	    	formData.append('uploadFiles', files[i])
    	    }
       		formData.append('guestId', ${guestId })
            formData.append('weddingId', ${weddingId })

    	    $.ajax({
    	            contentType : false,
    	            processData : false,
    	                   data : formData,
    	                    type: 'POST',
    	                     url: 'uploadShareFiles',
    	                dataType:'json',
    	                success: function (data) {
        	                goHall();
    		  				  
               	        },// 요청 실패.
               	        error:function(data) {
               	        	alert('upload fail~!!!');
        	        }
    	        });
	}

	function goHall(){    
		var form = {
				    guestId : ${guestId },
                  weddingId : ${weddingId }
        	  }
    	pageHtmlGet("/goHall", form);
	}

</script>
<style>
	.btn {
		border: 1px solid;
		float: left;
        display: flex;
        align-items: center;
        justify-content: center;
        background-color: darkgrey;
        margin: 3px 5px;
	}
	
	.clicked {
        background-color: blue;
        color: white;
      }
      
      
      .preview-images-zone {
    width: 100%;
    border: 1px solid #ddd;
    min-height: 180px;
    /* display: flex; */
    padding: 5px 5px 0px 5px;
    position: relative;
    overflow:auto;
	}
	.preview-images-zone > .preview-image:first-child {
	    height: 90px;
	    width: 90px;
	    position: relative;
	    margin-right: 5px;
	}
	.preview-images-zone > .preview-image {
	    height: 90px;
	    width: 90px;
	    position: relative;
	    margin-right: 5px;
	    float: left;
	    margin-bottom: 5px;
	}
	.preview-images-zone > .preview-image > .image-zone {
	    width: 100%;
	    height: 100%;
	}
	.preview-images-zone > .preview-image > .image-zone > img {
	    width: 100%;
	    height: 100%;
	}
	.preview-images-zone > .preview-image > .tools-edit-image {
	    position: absolute;
	    z-index: 100;
	    color: #fff;
	    bottom: 0;
	    width: 100%;
	    text-align: center;
	    margin-bottom: 10px;
	    display: none;
	}
	.preview-images-zone > .preview-image > .image-cancel {
	    font-size: 18px;
	    position: absolute;
	    top: 0;
	    right: 0;
	    font-weight: bold;
	    margin-right: 10px;
	    cursor: pointer;
	    display: none;
	    z-index: 100;
	}
	.preview-image:hover > .image-zone {
	    cursor: move;
	    opacity: .5;
	}
	.preview-image:hover > .tools-edit-image,
	.preview-image:hover > .image-cancel {
	    display: block;
	}
	.ui-sortable-helper {
	    width: 90px !important;
	    height: 90px !important;
	}
	
	.container {
	    padding-top: 0px;
	}

	
	
	</style>

</body>
</html>