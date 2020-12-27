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
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

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
	<input type="hidden" id="groom" name="groom" value="N">
	<input type="hidden" id="bride" name="bride" value="N">
	<input type="hidden" id="detailRelation" name="detailRelation" value="">
	<input type="hidden" id="account" name="account" value="">
	<!-- /menu -->
	<div id="progressbar"></div>
	<div class="container-fluid full-height">
		<div class="row row-height">		
			<div class="col-lg-6 content-right" id="start">
				<div id="wizard_container">
					<div id="top-wizard">							
						</div>
						<!-- /top-wizard -->
						<form id="wrapped">
							<input id="website" name="website" type="text" value="">
							<!-- Leave for security protection, read docs for details -->
							<div id="middle-wizard">
								<div class="step">
									<h3 class="main_question"><strong>1/5</strong>누구를 축하 해주러 오셨나요?</h3>
									<section id="about" style="paddding: 1rem 0rem;">
									<div class="container text-center">
										<div class="row">
											<div class="col-lg-10 mx-auto">							
												<div id="selectGroom" class="image" value="N" onclick="selectHost('groom');" style="opacity:0.4;">
													<img src="img/${groomInfo.attachNm }" alt="groom" style="border-radius: 20px; float:left; width:45%; height:auto;">
												</div>
												<div id="selectBride" class="image" value="N" onclick="selectHost('bride');" style="opacity:0.4;">
												    <img src="img/${brideInfo.attachNm }" alt="bride" style="border-radius: 20px; float:right; width:45%; height:auto;">
												</div>
											</div>
											<span style="margin-top: 10px;width: 45%;text-align: center;padding-left: 15px;">
										    	신랑 ${groomInfo.hostNm }
											</span>
											<span style="width: 45%;margin-top: 10px;text-align: center;margin-left: 8%;">
											    신부 ${brideInfo.hostNm }
											</span>
										</div>
									</div>
								</section>
								</div>
								<!-- /step-->
								<div class="step">
									<h3 class="main_question"><strong>2/5</strong>정신없는 결혼식<br>발자국을 남겨주세요.</h3>
									<div class="form-group">
										<input type="text" id="name" name="name" class="form-control required" placeholder="이름">
									</div>
									<div class="form-group">
										<input type="text" id="phone" name="phone" onKeyup="inputPhoneNumber(this);" maxlength="13" class="form-control required" placeholder="010-1234-5678">
									</div>
									
									<!-- /row -->
									<div class="form-group terms">
										<label class="container_check"><a href="#" data-toggle="modal" data-target="#terms-txt">개인정보 활용 동의</a>
											<input type="checkbox" id="terms" name="terms" value="Y" class="required">
											<span class="checkmark"></span>
										</label>
									</div>
								</div>
								<!-- /step-->
								<div class="step">
									<h3 class="main_question"><strong>3/5</strong>신랑/신부와의 관계를 선택 해주세요.</h3>
									<select id = "relation" class="selectpicker" style="width: 100%; height: 36px;border-radius: 10px;font-family: 'Work Sans'; text-indent: 10px;">
  								      <option value="">관계를 선택 해주세요.</option>
									  <option value="family">가족</option>
									  <option value="friend">친구</option>
									  <option value="company">직장관련</option>
									  <option value="etc">기타</option>
									</select>
									
									<div class="detail" style="height: auto;overflow: hidden;">									
										<div id="familyDetail" style="display:none; margin-top: 15px;">
										  <div class="btn" id="deRelation" value="낳으실제괴로움">#낳으실제괴로움</div>
										  <div class="btn" id="deRelation" value="우아한형제자매남매들">#우아한형제자매남매들</div>
										  <div class="btn" id="deRelation" value="집안으르신">#집안으르신</div>
										  <div class="btn" id="deRelation" value="땅을사면배아픈우리는사촌">#땅을사면배아픈우리는사촌</div>
										  <div class="btn" id="deRelation" value="5678촌">#5678촌</div>
										  <div class="btn" id="deRelation" value="족보에함께이름이있는">#족보에함께이름이있는</div>
										</div>
										
										<div id="friendDetail" style="display:none; margin-top: 15px;">
										  <div class="btn" id="deRelation" value="우린찐친">#우린찐친</div>
										  <div class="btn" id="deRelation" value="우리가남이가중고교친구">#우리가남이가중고교친구</div>
										  <div class="btn" id="deRelation" value="가장찬란한시절,우리는함께였다">#가장찬란한시절,우리는함께였다</div>
										  <div class="btn" id="deRelation" value="캠퍼스를함께거닐던 대학친구">#캠퍼스를함께거닐던 대학친구</div>
										  <div class="btn" id="deRelation" value="함께한세월보다오래함께할사회친구">#함께한세월보다오래함께할사회친구</div>
										  <div class="btn" id="deRelation" value="우린서로에게이성이었을까 남사친여사친">#우린서로에게이성이었을까 남사친여사친</div>
										  <div class="btn" id="deRelation" value="기타를칩시다 기타친구">#기타를칩시다 기타친구</div>
										  
										</div>
									
										<div id="companyDetail" style="display:none; margin-top: 15px;">
										  <div class="btn" id="deRelation" value="하늘같은회사선배">#하늘같은회사선배</div>
										  <div class="btn" id="deRelation" value="동기사랑나라사랑">#동기사랑나라사랑</div>
										  <div class="btn" id="deRelation" value="회사후배">#회사후배</div>
										  <div class="btn" id="deRelation" value="또하나의 가..족같은회사동료">#또하나의 가..족같은회사동료</div>
										</div>
										
										<div id="etcDetail" style="display:none; margin-top: 15px;">
										  <div class="btn" id="deRelation" value="가족보다가까운이웃사촌">#가족보다가까운이웃사촌</div>
										  <div class="btn" id="deRelation" value="학교동문">#학교동문</div>
										  <div class="btn" id="deRelation" value="나는누군가우리관계는무얼까 미정이">#나는누군가우리관계는무얼까 미정이</div>
										  <div class="btn" id="deRelation" value="사진은같이못찍는 어색한사이">#사진은같이못찍는 어색한사이</div>
										</div>
								   </div>	
								</div>
								<!-- /step-->
								<div class="step">
									<h3 class="main_question"><strong>4/5</strong>축하사진을 업로드 해주세요. 신랑 신부에게 특별한 선물로 제작됩니다.</h3>
									<fieldset class="form-group">
								        <a href="javascript:void(0)" onclick="$('#pro-image').click()">Upload Image</a>
								        <input type="file" id="pro-image" name="pro-image" style="display: none;" class="form-control" multiple/>
								    </fieldset>
								    <div class="preview-images-zone">
								        <div class="preview-image preview-show-1">
								            <div class="image-cancel" data-no="1">x</div>
								            <div class="image-zone"><img id="pro-img-1" src="img/camera.jpg"></div>
								            <!-- <div class="tools-edit-image"><a href="javascript:void(0)" data-no="1" class="btn btn-light btn-edit-image">edit</a></div> -->
								        </div>
								     </div>
								    <!--  <input type="button" value="submit" id="btn_upload"/> -->
								</div>
								<!-- /step-->
								<div class="submit step">
									<h3 class="main_question"><strong>5/5</strong>이름만 쓰는 방명록은 이제 그만! 신랑 신부만을 위한 센스있는 축하메세지를 남겨주세요.</h3>
									<div class="summary">
									<textarea id="content" name="content" clos="40" rows="8" style="width: 100%; height: 200px;"></textarea>
									<!-- <input type="text" style="width:100%; height:200px; text-align:right;"> -->
									</div>
								</div>
								<!-- /step-->
							</div>
							<!-- /middle-wizard -->
							<div id="bottom-wizard">
								<button type="button" name="backward" class="backward">이전 </button>
								<button type="button" name="forward" class="forward">다음</button>
								<button type="button" name="submit" class="submit" data-toggle="modal" data-target="#payModal"">축의금 보내기</button>
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


	<!-- Modal terms -->
	<div class="modal fade" id="terms-txt" tabindex="-1" role="dialog" aria-labelledby="termsLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="termsLabel">Terms and conditions</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<p>Lorem ipsum dolor sit amet, in porro albucius qui, in <strong>nec quod novum accumsan</strong>, mei ludus tamquam dolores id. No sit debitis meliore postulant, per ex prompta alterum sanctus, pro ne quod dicunt sensibus.</p>
					<p>Lorem ipsum dolor sit amet, in porro albucius qui, in nec quod novum accumsan, mei ludus tamquam dolores id. No sit debitis meliore postulant, per ex prompta alterum sanctus, pro ne quod dicunt sensibus. Lorem ipsum dolor sit amet, <strong>in porro albucius qui</strong>, in nec quod novum accumsan, mei ludus tamquam dolores id. No sit debitis meliore postulant, per ex prompta alterum sanctus, pro ne quod dicunt sensibus.</p>
					<p>Lorem ipsum dolor sit amet, in porro albucius qui, in nec quod novum accumsan, mei ludus tamquam dolores id. No sit debitis meliore postulant, per ex prompta alterum sanctus, pro ne quod dicunt sensibus.</p>
				<div class="modal-footer">
					<button type="button" class="btn_1" data-dismiss="modal">Close</button>
				</div>
			</div>
			<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
	</div>
	<!-- /.modal -->

	<!-- pay pop-up -->
	<div class="modal fade" id="payModal" tabindex="-1" role="dialog" aria-labelledby="termsLabel" aria-hidden="true">
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div>
					<h4 class="modal-title" id="termsLabel" style="
																    text-align: center;
																    margin: 30px 0px 45px 0px;">
					 축의금 송금방식을</br>선택해주세요.</h4>
				</div>
 				<div style=" display: flex;
											    justify-content: center;
											    font-size: 18px;
											    font-color: #FFFFFF;">
					<button type="button" id="kakaoPay" onclick="kakaoPay();" style="color: #FFFFFF;
																				    border-radius: 25px;
																				    height: 48px;
																				    width: 260px;
																				    background-color: #1C2127;
																				    box-shadow: 0px 4px 25px rgba(0, 0, 0, 0.2);">
					카카오톡으로 받기
					</button>
					
				</div>
				<div style=" display: flex;
											    justify-content: center;
											    font-size: 18px;
											    margin: 1px 0px 11px 0px;
											    font-color: #FFFFFF;">
				<button type="button" id="kakaoPay" onclick="kakaoPay();" style="color: #1C2127;
																				    border-radius: 25px;
																				    height: 48px;
																				    width: 260px;
																				    background-color:#FFFFFF;">
					문자로 축의정보 받기
					</button>
				</div>
				<!--
				<div class="modal-footer">
					<button type="button" class="btn_1" data-dismiss="modal">Close</button>
				</div> -->
			</div>
			<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
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
		Kakao.init('130a358c3e9686340b0be0be9c95aba0'); // 카카오 실행하기

		/*관계 선택 시 상세관계 출력  */
		$('#relation').on('change', function(){
			 var reObj = document.getElementById("relation");

			 var reDeObj1 = document.getElementById("familyDetail");
			 var reDeObj2 = document.getElementById("friendDetail");
			 var reDeObj3 = document.getElementById("companyDetail");
			 var reDeObj4 = document.getElementById("etcDetail");

			 if(reObj.value == "family"){
				 reDeObj1.style.display = "block";
				 reDeObj2.style.display = "none";
				 reDeObj3.style.display = "none";
				 reDeObj4.style.display = "none";
			    }else if(reObj.value == "friend"){
				 reDeObj1.style.display = "none";
				 reDeObj2.style.display = "block";
				 reDeObj3.style.display = "none";
				 reDeObj4.style.display = "none";
				}else if(reObj.value == "company"){
				 reDeObj1.style.display = "none";
				 reDeObj2.style.display = "none";
				 reDeObj3.style.display = "block";
				 reDeObj4.style.display = "none";
				 }else if(reObj.value == "etc"){
				 reDeObj1.style.display = "none";
				 reDeObj2.style.display = "none";
				 reDeObj3.style.display = "none";
				 reDeObj4.style.display = "block";}			 
			})
			/*관계 선택 시 상세관계 출력  */
			
			/* $(document).on('click','#deRelation', function(){
				document.getElementById("detailRelation").value = document.getElementById("deRelation").value;
				alert(document.getElementById("detailRelation").value);
				} */
		


			/*사진 미리보기  */
			document.getElementById('pro-image').addEventListener('change', readImage, false);	    
		    $( ".preview-images-zone" ).sortable();
		    $(document).on('click', '.image-cancel', function() {
		        let no = $(this).data('no');
		        $(".preview-image.preview-show-"+no).remove();
		    });
		    /*사진 미리보기  */

		   /*  $('#btn_upload').click(function (event) {
				
		        
		    }); */
		    			
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

	
     /*버튼 클릭 시 색 변경  */
	 var btn = document.getElementsByClassName("btn");

     function handleClick(event) {
       console.log(event.target);
       // console.log(this);
       // 콘솔창을 보면 둘다 동일한 값이 나온다

       console.log(event.target.classList);

       if (event.target.classList[1] === "clicked") {
         event.target.classList.remove("clicked");
       } else {
         for (var i = 0; i < btn.length; i++) {
           btn[i].classList.remove("clicked");
         }
         event.target.classList.add("clicked");
         document.getElementById("detailRelation").value = event.target.innerText ;

       }
     }

     function init() {
       for (var i = 0; i < btn.length; i++) {
         btn[i].addEventListener("click", handleClick);
       }
     }

     init();
     /*버튼 클릭 시 색 변경  */
     
	/* 신랑 신부 사진 선택 효과 */
	function selectHost(host){
		if(host == "groom"){
	        var obj = document.getElementById("selectGroom");
	        var obj1 = document.getElementById("groom");
	        if(obj.style.opacity == "1"){
	        	obj.style.opacity = "0.4";
	        	obj1.value = 'N';
		    }else{  
		    	obj.style.opacity = "1";
		    	obj1.value = 'Y';	
			}
		}else{
			var obj = document.getElementById("selectBride");
			var obj1 = document.getElementById("bride");
	        if(obj.style.opacity == "1"){
	        	obj.style.opacity = "0.4";
	        	obj1.value = 'N';
		    }else{
		    	obj.style.opacity = "1";
		    	obj1.value = 'Y';
			}
			
		}
    }
	/* 신랑 신부 사진 선택 효과 */
	
	
	/* function kakaoPay(){
		Kakao.Auth.login({
		      scope: '',
		      success: function() {
		        Kakao.API.request({
		          url: '/v2/api/talk/memo/send',
		          data: {
		            template_id: 43496,
		            args:
		              '{"title": "판교 맛집에 들르다. 다양하고 풍부한 퓨전 한정식. 깔끔한 내부 인테리어 라이언","description": "부담없는 가격에 푸짐하게 즐기는 점심메뉴 런치한정식, 불고기정식, 돼지 김치찌개 등"}',
		          },
		          success: function(res) {
		            alert('success: ' + JSON.stringify(res))
		          },
		          fail: function(err) {
		            alert('error: ' + JSON.stringify(err))
		          },
		        })
		      },
		      fail: function(err) {
		        alert('failed to login: ' + JSON.stringify(err))
		      },
		    })
		} */
	
	
 	function kakaoPay(){

	
		    Kakao.Link.sendDefault({
		      objectType: 'text',
		      text:
		    	  ${groomInfo.account },
		      link: {
		        mobileWebUrl:
		          'https://wawo.netlify.app/',
		        webUrl:
		          'https://wawo.netlify.app/',
		      },
		    })
		} 
	
	function result(){

		 var form = {
	                 name : document.getElementById("name").value,
	                phone : document.getElementById("phone").value,
	          selectGroom : document.getElementById("groom").value,
	          selectBride : document.getElementById("bride").value,
	                terms : document.getElementById("terms").value,
	             relation : document.getElementById("relation").value,
	           deRelation : document.getElementById("detailRelation").value,
	              content : document.getElementById("content").value
	                    
	     			}
	     $.ajax({
	     	       url : 'submit',
	              type : 'POST',
	              data : form,
	          dataType : 'json',
	            success: function(data) {
	            	goResult(data);
                        },// 요청 완료 시
            	        error:function(jqXHR) {
            	        	alert('detail fail~!!!');
            	        }// 요청 실패.
            });

	}

	function goResult(data){
		var formData = new FormData();
  		var inputFile = $("input[name=pro-image]");
   		var files = inputFile[0].files;


   		for(var i=0; i < files.length; i++){
	    	formData.append('uploadFiles', files[i])
	    }
   		formData.append('guestId', data.guestId)
        formData.append('weddingId', ${groomInfo.weddingId })

	    $.ajax({
	            contentType : false,
	            processData : false,
	                   data : formData,
	                    type: 'POST',
	                     url: 'fileUpload',
	                dataType:'json',
	                success: function (data) {
	                	alert(data.weddingId);

	                	var result = {
	    	                	weddingId : data.weddingId
	    	                	}
	                	pageHtmlPost("/result", result);
           	        },// 요청 실패.
           	        error:function(data) {
           	        	alert('upload fail~!!!');
    	        }
	        });
	}	
		
	
	/*  */
	function inputPhoneNumber(obj) {
	    var number = obj.value.replace(/[^0-9]/g, "");
	    var phone = "";
	
	    if(number.length < 4) {
	        return number;
	    } else if(number.length < 7) {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3);
        } else if(number.length < 11) {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3, 3);
	        phone += "-";
	        phone += number.substr(6);
	    } else {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3, 4);
	        phone += "-";
	        phone += number.substr(7);
	    }
	    obj.value = phone;
		}
	/*  */
	
	
	
	
	/* function goNext(){
		alert("test");
		} */

		

	</script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
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
	    padding-top: 50px;
	}

	
	
	</style>

</body>
</html>