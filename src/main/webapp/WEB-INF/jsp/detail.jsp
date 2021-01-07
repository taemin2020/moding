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
	<input type="hidden" id="groom" name="groom" value="N">
	<input type="hidden" id="bride" name="bride" value="N">
	<input type="hidden" id="detailRelation" name="detailRelation" value="">
	<input type="hidden" id="account" name="account" value="">
	<!-- /menu -->
	<div id="progressbar"></div>
	<div class="container-fluid full-height">
		<div class="row row-height">		
			<div class="col-lg-6 content-right" id="start" style="padding: 30px 38px;">
				<div id="wizard_container">
					<div id="top-wizard">							
						</div>
						<!-- /top-wizard -->
						<form id="wrapped">
						<input id="website" name="website" type="text" value="">
							<a id="backward" class="backward" name="backward">
							<img src="img/backward.jpg" style="width: 25px;margin-top: 4px;">
							</a>
							<div id="middle-wizard">
								<div class="step" style="height:450px;">
									<h3 class="main_question" style="color: rgb(35, 35, 60); line-height: 27px; letter-spacing: 0em; font-family: Tmoney RoundWind; font-size: 21px; font-style: normal; font-weight: 800;">
									<strong style="font-family: NanumGothic;font-size: 15px; color: #2A292A;font-weight: normal;font-style: normal;padding-top: 40px;padding-bottom:18px;">
									#1 우리 결혼해요!
									</strong>
									누구를 축하해주러 오셨나요?</h3>
									<section id="about">
									<div class="container text-center">
										<div class="row">
											<div class="col-lg-10 mx-auto" style="padding: 0px;">							
												<div id="selectGroom" class="image" value="N" onclick="selectHost('groom');" style="opacity:0.4;">
													<img src="img/${groomInfo.attachNm }" alt="groom" style="border-radius: 5px; float:left; width:45%; height:auto;">
												</div>
												<div id="selectBride" class="image" value="N" onclick="selectHost('bride');" style="opacity:0.4;">
												    <img src="img/${brideInfo.attachNm }" alt="bride" style="border-radius: 5px; float:right; width:45%; height:auto;">
												</div>
											</div>
											<span style="margin-top: 3px;width: 45%;text-align: left;">
										    	신랑 ${groomInfo.hostNm }
											</span>
											<span style="width: 45%;margin-top: 3px;text-align: left;margin-left: 10%;">
											    신부 ${brideInfo.hostNm }
											</span>
										</div>
										<div id="errorHost" style="font-size:15px; color:red; display:none;">방명록을 등록하실 대상을 선택 해주세요.</div>									
									</div>
								</section>
								</div>
								<!-- /step-->
								<div class="step" style="height:450px;">
									<h3 class="main_question" style="color: rgb(35, 35, 60); line-height: 27px; letter-spacing: 0em; font-family: Tmoney RoundWind; font-size: 21px; font-style: normal; font-weight: 800;">
									<strong style="font-family: NanumGothic;font-size: 15px; color: #2A292A;font-weight: normal;font-style: normal;padding-top: 40px;padding-bottom: 18px;">
									#2 잠시 펜은 넣어두세요
									</strong>
									정신없는 결혼식 발자국을<br>꼭 남겨주세요.</h3>
									<div class="form-group">
										<input type="text" id="name" name="name" class="form-control" placeholder="이름">
									</div>
									<div id="errorName" style="font-size:15px; color:red; display:none;">이름을 입력 해주세요.</div>
									<div class="form-group">
										<input type="text" id="phone" name="phone" onKeyup="inputPhoneNumber(this);" maxlength="13" class="form-control" placeholder="010-1234-5678">
									</div>
									<div id="errorPhone" style="font-size:15px; color:red; display:none;">휴대폰번호를 다시 확인 해주세요.</div>
									
									<!-- /row -->
									<div class="form-group terms">
										<label class="container_check"><a href="#" data-toggle="modal" data-target="#terms-txt">개인정보 활용 동의</a>
											<input type="checkbox" id="terms" name="terms" value="Y" class="required">
											<span class="checkmark"></span>
										</label>
									</div>
								</div>
								<!-- /step-->
								<div class="step"style="height:450px;">
									<h3 class="main_question" style="color: rgb(35, 35, 60); line-height: 27px; letter-spacing: 0em; font-family: Tmoney RoundWind; font-size: 21px; font-style: normal; font-weight: 800;">
									<strong style="font-family: NanumGothic;font-size: 15px; color: #2A292A;font-weight: normal;font-style: normal;padding-top: 40px;padding-bottom: 18px;">
									#3 말하자면은 그렇고 그런 사이니깐
									</strong>
									주인공과 나?<br>우리 이런사이에요.</h3>
									<select id = "relation" class="selectpicker" style="width: 100%; height: 36px;border-radius: 10px;font-family: 'Work Sans'; text-indent: 10px; font-weight : bold;">
  								      <option value="">관계를 선택 해주세요.</option>
									  <option value="family">가족</option>
									  <option value="friend">친구</option>
									  <option value="company">직장관련</option>
									  <option value="etc">기타</option>
									</select>
									
									<div id="errorRelation" style="font-size:15px; color:red; display:none;">신랑신부와의 관계를 선택 해주세요.</div>								
									
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
								<div class="step" style="height:450px;">
									<h3 class="main_question" style="color: rgb(35, 35, 60); line-height: 27px; letter-spacing: 0em; font-family: Tmoney RoundWind; font-size: 21px; font-style: normal; font-weight: 800;">
									<strong style="font-family: NanumGothic;font-size: 15px; color: #2A292A;font-weight: normal;font-style: normal;padding-top: 40px;padding-bottom: 18px;">
									#4 결혼식의 진정한 꽃은 하객입니다.
									</strong>
									코로나19로 참석 하지 못하는<br>하객분들을 위한 손가락하트 <span style="color:red;">♥</span></br>챌린지에 참여 하세요<span style="font-size:11px;">(선택사항)</span></br></br><span style="font-size:16px;">(추첨을 통해 기프티콘을 선물 해드립니다.)</span></h3>
									<fieldset class="form-group">
								        <a href="javascript:void(0)" onclick="$('#pro-image').click()">Upload Image</a>
								        <input type="file" id="pro-image" name="pro-image" style="display: none;" class="form-control" multiple/>
								    </fieldset>
								    <div class="preview-images-zone">
								        <div class="preview-image preview-show-1">
								            <!-- <div class="image-cancel" data-no="1">x</div> -->
								            <div class="image-zone"><img id="pro-img-1" src="img/fingerHeart.jpg" onclick="$('#pro-image').click()"></div>
								            <div class="tools-edit-image"><a href="javascript:void(0)" data-no="1" class="btn btn-light btn-edit-image">edit</a></div>
								        </div>
								     </div>
								    <!--  <input type="button" value="submit" id="btn_upload"/> -->
								</div>
								<!-- /step-->
								<div class="submit step" style="height:450px;">
									<h3 class="main_question" style="color: rgb(35, 35, 60); line-height: 27px; letter-spacing: 0em; font-family: Tmoney RoundWind; font-size: 18px; font-style: normal; font-weight: 800;">
									<strong style="font-family: NanumGothic;font-size: 15px; color: #2A292A;font-weight: normal;font-style: normal;padding-top: 40px;padding-bottom: 18px;">
									#5 진심이 담긴 '찐'축하 캠페인
									</strong>
									이름만 쓰는 방명록은 이제 그만!</br>신랑 신부만을 위한</br> 센스있는 축하메세지를 남겨주세요.</h3>
									<div id="errorContent" style="font-size:15px; color:red; display:none;">신랑신부를 위한 덕담 한마디를 작성 해주세요.</div>
									<div class="summary">
									<textarea id="content" name="content" clos="40" rows="8" style="width: 100%; height: 200px;"></textarea>
									<!-- <input type="text" style="width:100%; height:200px; text-align:right;"> -->
									</div>
								</div>
								<!-- /step-->
							</div>
							<!-- /middle-wizard -->
							<div id="bottom-wizard" style="text-align:center;">
								<!-- <button type="button" name="backward" class="backward">이전 </button> -->
								<button type="button" class="forward" onclick = "checkVal();" style="background: rgb(42, 41, 42); border-radius: 25px; width: 189px; box-shadow: 0px 4px 25px rgba(0,0,0,0.1);">
								다음
								</button>
								<button type="button" name="submit" class="submit" onclick="result();" style="background: rgb(42, 41, 42); border-radius: 25px; width: 189px; box-shadow: 0px 4px 25px rgba(0,0,0,0.1); margin-top: -25px; position: absolute;">방명록 작성완료</button>
								<!-- <button type="button" id="onlyBoard" class="submit" onclick="result();" style="background:linear-gradient(12.04deg, #DFDDF5 0%, #EBF4FC 100%); border-radius: 25px; width: 189px; box-shadow: 0px 4px 25px rgba(0,0,0,0.1); color:black;margin-top:15px; ">방명록만 보내기</button> -->
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
					<h4 class="modal-title" id="termsLabel" style="font-size: 18px;font-weight: 900;">모딩 서비스 內 개인정보 활용 동의에 관한 문구</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body" style="font-size: 11px;">
					<p>모딩 서비스 내에서 본인의 개인정보를 수집·이용·제공하고자 하는 경우에는「개인정보 보호법」제15조 제1항 제1호, 제17조 제1항 제1호, 제24조 제1항 제1호에 따라 본인의 동의를 얻어야 합니다. 이에 본인은 아래의 내용과 같이 본인의 개인정보를 수집·이용·제공하는 것에 동의합니다.</p>

					<p>1. 개인정보의 수집·이용에 관한 사항<br>
					<strong>￭ 수집·이용 목적</strong><br>
					‐ 귀하의 개인정보는 컨텐츠 제공, 컨텐츠 맞춤 서비스 제공, 서비스 관련 안내자료 발송등 아래를 포함한 목적으로 사용하고 있습니다.<br>
					- 서비스의 이행 (계좌 정보 전송, 방명록 전송, 축의 명단 전송, 결혼식 사진 전송 등 결혼식 관련 서비스)<br>
					- 서비스 상담 및 서비스 이용 권유 목적으로 이용됩니다.
					</p>
					
					<p>
					<strong>￭ 개인정보의 수집항목</strong><br>
					‐ 성명, 연락처(휴대전화, 이메일), 카카오톡 ID, 생년월일, 성별, 혼주성명, 결혼예정일, 예식장소, 이메일, 결혼사진 등<br>
					- 선택정보 : 일반전화, 문의사항 등<br>
					<strong>￭ 보유 및 이용 기간</strong><br>
					‐ 귀하의 개인정보는 제공에 관한 동의일로부터 5년까지 보유·이용됩니다.<br>
					<strong>￭ 동의를 거부할 권리 및 동의를 거부할 경우의 불이익</strong><br>
					‐ 위 개인정보의 수집·이용에 동의하지 않으실 경우 모딩 서비스 내에서 서비스를 진행할 수가 없으며, 모딩 서비스를 이용하는 호스트의 경우에는 모딩 서비스를 신청하실 수 없습니다.
					</p>
					
					<p>위 사항에서 명기하지 않은 개인정보 처리 방침의 내용에 대해서는 모딩 홈페이지 https://wawo.netlify.app/ 에서 확인할 수 있음을 알려 드립니다.</p>
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
																    margin: 30px 0px 30px 0px;">
					 축의금 송금방식을</br>선택해주세요.</h4>
				</div>
 				<div style=" display: flex;
											    justify-content: center;
											    font-size: 18px;
											    adding-bottom: 30px;">
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
	function checkVal(){
		
		// 호스트 선택 유효성검사
		if(document.getElementsByClassName('step wizard-step current')[0].innerText.indexOf('#1') != "-1"){
			if(document.getElementById("groom").value == "N" && document.getElementById("bride").value == "N"){
				document.getElementById("errorHost").style.display = "block";
				event.stopImmediatePropagation();
			}else{
				document.getElementById("errorHost").style.display = "none";
			}
		}
		//
		
		// 이름, 휴대폰번호 유효성 검사
		if(document.getElementsByClassName('step wizard-step current')[0].innerText.indexOf('#2') != "-1"){ 
			if(document.getElementById("name").value == "" || document.getElementById("name").value == null){
				document.getElementById("errorName").style.display = "block";
				event.stopImmediatePropagation();	
			}else{
				document.getElementById("errorName").style.display = "none";
			}
			
			var exp = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
			var EXP_BLANK = /^\s+|\s+$/g;		
			var error = document.getElementById("errorPhone");
			var phoneNum = document.getElementById("phone").value;
			var isExpTest = true;
			
			var regExp =/(01[016789])-([1-9]{1}[0-9]{2,3})-([0-9]{4})$/; 
			var myArray; 
			if(regExp.test(phoneNum)){ 
				error.style.display = "none"; 
			}else { 
				error.style.display = "block";
				event.stopImmediatePropagation(); 
			}
	    }
	    //
	    
	    // 관계 유효성 검사 추가
	    if(document.getElementsByClassName('step wizard-step current')[0].innerText.indexOf('#3') != "-1"){ 
	    	if(document.getElementsByClassName('btn clicked').length == "0"){
				document.getElementById("errorRelation").style.display = "block";
				event.stopImmediatePropagation();				
	    	}else{
	    		document.getElementById("errorRelation").style.display = "none";
	    	}
		
		}
		
		
		
	
	};
	
	
	
	$("#name").change(function(){
		if(document.getElementById("name").value == "" || document.getElementById("name").value == null){
				document.getElementById("errorName").style.display = "block";
				event.stopImmediatePropagation();	
		}else{
				document.getElementById("errorName").style.display = "none";
		}
				
	});
	
	
	// 핸드폰 번호 유효성검사 정규식
	$("#phone").change(function(){
		var exp = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
		var EXP_BLANK = /^\s+|\s+$/g;		
		var error = document.getElementById("errorPhone");
		var phoneNum = document.getElementById("phone").value;
		var isExpTest = true;
		
		var regExp =/(01[016789])-([1-9]{1}[0-9]{2,3})-([0-9]{4})$/; 
		var myArray; 
		if(regExp.test(phoneNum)){ 
			error.style.display = "none"; 
			} 
		else { 
			error.style.display = "block"; 
			}


				
	});
 

	
	
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
	        var selObj1 = document.getElementById("selectGroom");
	        var selObj2 = document.getElementById("selectBride");	        
	        var obj1 = document.getElementById("groom");
	        var obj2 = document.getElementById("bride");

	        selObj1.style.opacity = "1";
		    obj1.value = 'Y';
	        selObj2.style.opacity = "0.4";
        	obj2.value = 'N';	
			
		}else{
			var selObj1 = document.getElementById("selectGroom");
	        var selObj2 = document.getElementById("selectBride");	        
	        var obj1 = document.getElementById("groom");
	        var obj2 = document.getElementById("bride");

	        selObj1.style.opacity = "0.4";
		    obj1.value = 'N';
	        selObj2.style.opacity = "1";
        	obj2.value = 'Y';
	        
			
		}
    }
	/* 신랑 신부 사진 선택 효과 */
	
 	function result(){
 		
 		
 		// 방명록 유효성 검사 추가
	    if(document.getElementsByClassName('step wizard-step current')[0].innerText.indexOf('#5 ') != "-1"){ 
	    	if(document.getElementById("content").value == "" || document.getElementById("content").value == null){
				document.getElementById("errorContent").style.display = "block";
				event.stopImmediatePropagation();	
			}else{
				document.getElementById("errorContent").style.display = "none";
			}
		}

    	 var form = {
	                 name : document.getElementById("name").value,
	                phone : document.getElementById("phone").value,
	          selectGroom : document.getElementById("groom").value,
	          selectBride : document.getElementById("bride").value,
	                terms : document.getElementById("terms").value,
	             relation : document.getElementById("relation").value,
	           deRelation : document.getElementById("detailRelation").value,
	              content : document.getElementById("content").value,
	              weddingId : ${groomInfo.weddingId }
	                    
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
        formData.append('selectGroom', document.getElementById("groom").value)

	    $.ajax({
	            contentType : false,
	            processData : false,
	                   data : formData,
	                    type: 'POST',
	                     url: 'fileUpload',
	                dataType:'json',
	                success: function (data) {

		            	Kakao.Auth.authorize({
		  				  redirectUri : 'http://localhost:8080/result',
		  				  state : data.kakaoParam
		  				  });
		  				  
           	        },// 요청 실패.
           	        error:function(data) {
           	        	alert('files upload fail~!!!');
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
        background-color: #BDC5E9;
        margin: 3px 5px;
        font-weight : bold;
	}
	
	.clicked {
        background-color: #2A292A;
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