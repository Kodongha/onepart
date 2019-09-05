<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath }" scope="application"/>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>원파트 | 비밀번호 찾기</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />

	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<link href="${contextPath}/resources/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="${contextPath}/resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="${contextPath}/resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="${contextPath}/resources/css/animate.min.css" rel="stylesheet" />
	<link href="${contextPath}/resources/css/style.min.css" rel="stylesheet" />
	<link href="${contextPath}/resources/css/style-responsive.min.css" rel="stylesheet" />
	<link href="${contextPath}/resources/css/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->

	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="${contextPath}/resources/plugins/bootstrap-wizard/css/bwizard.min.css" rel="stylesheet" />
	<link href="${contextPath}/resources/plugins/parsley/src/parsley.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->

	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${contextPath}/resources/plugins/pace/pace.min.js"></script>
	<!-- 제이쿼리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</head>
<body class="pace-top">
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade in"><span class="spinner"></span></div>
	<!-- end #page-loader -->

	<!-- begin #page-container -->
	<div id="page-container" class="fade">
		<!-- begin #content -->
		<!-- <div id="content" class="content"> -->
			<div class="register register-with-news-feed" style="width: 70%; margin: auto;">
		<!-- 반응형 시작 -->
 			<div class="col-md-6">
				<ul class="nav nav-tabs">
					<li class=""><a href="${contextPath }/moveFindId"  aria-expanded="false">아이디 찾기</a></li>
					<li class="active"><a href="#default-tab-2" data-toggle="tab" aria-expanded="true">비밀번호 찾기</a></li>
				</ul>
				<!-- 아이디 찾기, 비밀번호 찾기 탭 시작 -->
				<div class="tab-content">
					<!-- 아이디 찾기 시작 -->
					<div class="tab-pane fade " id="default-tab-1"></div>
					<!-- 아이디 찾기 끝 -->
					<!-- 비밀번호 찾기 시작 -->
					<div class="tab-pane fade active in" id="default-tab-2">

						<h3 class="m-t-10">
							<i class="fa fa-cog"></i> 비밀번호 찾기
						</h3>
						<!-- begin 위자드 -->
						<div class="row">
			                <!-- begin col-12 -->
						    <div class="col-md-12">
						        <!-- begin panel -->
			                    <div class="panel panel-inverse">

			                        <div class="panel-body">
			                            <form method="POST" data-parsley-validate="true" name="form-wizard" id="findPwdForm">
											<div id="wizard" >
												<ol>
													<li style="width: 26%" id="tabStep1" >
													    아이디  입력
													    <small>비밀번호를 찾고자 하는 아이디를 입력해 주세요.</small>
													</li>
													<li style="width: 26%" id="tabStep2">
													    본인 확인
													    <small>회원정보에 등록한 휴대전화로 인증</small>
													</li>
													<li style="width: 26%" id="tabStep3">
													    비밀번호 재설정
													    <small>새로운 비밀번호 설정</small>
													</li>
													<li style="width: 22%" id="tabStep4">
													    완료!
													    <small>비밀번호 변경 완료</small>
													</li>
												</ol>
												<!-- begin wizard step-1 -->
												<div class="wizard-step-1">
			                                        <fieldset>
			                                            <legend class="pull-left width-full">아이디 입력 </legend>
			                                            <!-- begin row -->
			                                            <div class="row">
			                                                <!-- begin col-4 -->
			                                                <div class="col-md-4">
																<div class="form-group block1">
																	<label>아이디</label>
																	<input name="residentId" id="residentId" type="text" placeholder="아이디 입력" class="form-control" data-parsley-group="wizard-step-1" required />
																</div>
			                                                </div>
			                                            </div>
			                                            <!-- end row -->
													</fieldset>
												</div>
												<!-- end wizard step-1 -->
												<!-- begin wizard step-2 -->
												<div class="wizard-step-2">
													<fieldset>
														<legend class="pull-left width-full">본인 확인</legend>
			                                            <!-- begin row -->
			                                            <div class="row">
			                                            	<!-- begin col-4 -->
			                                                <div class="col-md-4">
			                                                    <div class="form-group">
			                                                        <label>사용자 이름</label>
			                                                        <div class="controls">
			                                                            <input type="text" name="residentNm" id="residentNm" placeholder="실명 입력" class="form-control" data-parsley-group="wizard-step-2" required />
			                                                        </div>
			                                                    </div>
			                                                </div>
			                                                <!-- end col-4 -->
			                                                <!-- begin col-6 -->
			                                                <div class="col-md-6">
																<div class="form-group">
																<table>
																	<tr><label>휴대전화번호 인증</label></tr>
																	<tr>
																		<td>
																		<input name="residentPhone" id="residentPhone" type="tel" placeholder="' - ' 없이 숫자만 입력" class="form-control" data-parsley-group="wizard-step-2" data-parsley-type="number" style="width: 300px; display: inline-block;" required/></td>
																		<td>&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-default m-r-5 m-b-5" style="display: inline-block; align-self: flex-start;" onclick="confirmNumber()">인증번호</button></td>
																	</tr>
																</table>
																</div>
			                                                </div>
			                                                <!-- end col-6 -->
			                                                <!-- begin col-6 -->
			                                                <div class="col-md-6">
																<div class="form-group">
																	<label>인증번호</label>
																	<input type="text" name="vNumber" placeholder="인증번호 입력" class="form-control" data-parsley-group="wizard-step-2" data-parsley-type="number" style="width: 50%;" required />
																</div>
			                                                </div>
			                                                <!-- end col-6 -->
			                                                <!-- 시작 모달로 결과 보내기 버튼 -->
															<a href="#modal-dialog" class="btn btn-sm btn-success" data-toggle="modal" onclick="showPwd(); return false;" style="float:right;">비밀번호 재설정 하기</a>
															<!-- 끝= 모달로 결과 보내기 버튼 -->

			                                            </div>
			                                            <!-- end row -->
													</fieldset>
												</div>

												<!-- end wizard step-2 -->
												<!-- begin wizard step-3 -->
												<div class="wizard-step-3">

												</div>
												<!-- end wizard step-3 -->
												<!-- begin wizard step-4 -->
												<div id="step4">
												    <div class="jumbotron m-b-0 text-center">
			                                            <h1>비밀번호 변경 성공!</h1>
			                                            <p>설정하신 비밀번호로 변경되었습니다. 다시 로그인하시기 바랍니다.</p>
			                                            <p><a class="btn btn-success btn-lg" role="button" href="moveAccount">로그인으로 이동</a></p>
			                                        </div>
												</div>
												<!-- end wizard step-4 -->
											</div>
										</form>

										<!-- 시작 아이디찾기 결과 모달 -->
															<div class="modal fade" id="modal-dialog" aria-hidden="true" style="display: none;">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
																			<h4 class="modal-title">비밀 번호 재설정 하기</h4>
																		</div>
																 		<form method="POST" data-parsley-validate="true"  id="setNewPwdForm">
																		<!-- <form action=""> -->
																		<div class="modal-body">
																			<!-- begin wizard step-3 -->
																			<span id="showResultPwd"></span>
																			<div id="setNewPassword">
																				<fieldset>
																					<!-- <legend class="pull-left width-full">비밀번호 재설정</legend> -->
										                                            <!-- begin row -->
										                                            <div class="row">
										                                                <!-- begin col-4 -->
										                                                <div class="col-md-4">
										                                                    <div class="form-group">
										                                                        <label>새 비밀번호</label>
										                                                        <div class="controls">
										                                                        	<input type="hidden" name= residentId value="${requestScope.residentId}">
										                                                            <input type="password" name="residentPwd" id="residentPwd" placeholder="새로운 비밀번호 입력" class="form-control" data-parsley-group="wizard-step-3" required />
										                                                            <p style="color: graytext; margin-bottom: 0%;">&nbsp;비밀번호는 최소 8자 이상, 영문과 숫자 혼합하여 설정</p>
										                                                        </div>
										                                                    </div>
										                                                </div>
										                                                <!-- end col-4 -->
										                                                <!-- begin col-4 -->
										                                                <div class="col-md-4">
										                                                    <div class="form-group">
										                                                        <label>새 비밀번호 확인</label>
										                                                        <div class="controls">
										                                                            <input type="password" name="residentPwd2" id="residentPwd2" placeholder="새로운 비밀번호 확인" class="form-control" />
										                                                        </div>
										                                                    </div>
										                                                </div>
										                                                <!-- end col-6 -->
										                                            </div>
										                                            <!-- end row -->
										                                        </fieldset>
																			</div>
																			<!-- end wizard step-3 -->
																		</div>
																		<div class="modal-footer">
																			<a href="javascript:;" class="btn btn-sm btn-white" data-dismiss="modal">Close</a>
																			<a href="moveFindPwd" id="changeNewPasswordBtn"class="btn btn-sm btn-success" data-dismiss="modal" onclick="setNewPwd()">비밀번호 재설정</a>
																		</div>
															 </form>
																	</div>
																</div>
															</div>
															<!-- 끝 비밀번호 찾기 결과 모달 -->
			                        </div>
			                    </div>
			                    <!-- end panel -->
			                </div>
			                <!-- end col-12 -->
			            </div>
			            <!-- end 위자드 -->
			        </div>
			    	<!-- 비밀번호 찾기 끝 -->
			    </div>
            	<!-- 아이디 찾기, 비밀번호 찾기 탭 끝 -->
			</div>
		<!-- 반응형 끝 -->
			</div>
		</div>
		<!-- end #content -->
	<!-- </div> -->
	<!-- end page container -->

	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${contextPath}/resources/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="${contextPath}/resources/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="${contextPath}/resources/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="${contextPath}/resources/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
		<script src="${contextPath}/resources/crossbrowserjs/html5shiv.js"></script>
		<script src="${contextPath}/resources/crossbrowserjs/respond.min.js"></script>
		<script src="${contextPath}/resources/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="${contextPath}/resources/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${contextPath}/resources/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->

	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="${contextPath}/resources/plugins/parsley/dist/parsley.js"></script>
	<script src="${contextPath}/resources/plugins/bootstrap-wizard/js/bwizard.js"></script>
	<script src="${contextPath}/resources/js/form-wizards-validation.demo.min.js"></script>
	<script src="${contextPath}/resources/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->

	<script>
		$(document).ready(function() {
			App.init();
			FormWizardValidation.init();
		});
		//비밀번호 찾기에서 인증번호 단추 클릭 함수
		function confirmNumber() {
			//next버튼 없애
			$('.next').children().eq(0).css("display", "none")
		}

		//비밀번호 찾기 결과 보여주는 함수
		function showPwd() {
			var findPwdForm =$("#findPwdForm").serialize();

		$.ajax({
  			url:"findPwd",
  			type:"post",
  			data:findPwdForm,
  			success:function(data){
				console.log("data : " + data);
				$("#showResultPwd").empty();

				if(data == ''){
					$("#showResultPwd").append("<h3>"+"입력하신 정보가 일치하지 않습니다.");
					$('#setNewPassword').css("display", "none")
					$('#changeNewPasswordBtn').css("display", "none")
				}else{
					$('#setNewPassword').css("display", "")
					$('#changeNewPasswordBtn').css("display", "")
				}
  			},
  			error:function(xhr, status){
  				alert(xhr + " : " + status);
  			}
  		});
		}

		//새로운 비밀번호 설정 함수
		function setNewPwd() {

			var setNewPwdForm =$("#setNewPwdForm").serialize();

			$.ajax({
  			url:"setNewPwd",
  			type:"post",
  			data:setNewPwdForm,
  			success:function(data){
				console.log("data : " + data);
				/* $("#showResultPwd").empty(); */

			/* 	if(data == ''){
				$("#showResultPwd").append("<h3>"+"입력하신 정보가 일치하지 않습니다.");
				}else{
					var resultPwd = data.findPwd.residentId;
					$("#showResultPwd").append("<h3>"+"회원님의 아이디는 '" + resultPwd + "' 입니다.</h3>");

				} */
				$('#step2').attr("class", "wizard-step-2 hide")
				$('#step4').attr("class", "bwizard-activated")
				/* $('#tabStep2').attr("aria-selected", "false")
				$('#tabStep4').attr("aria-selected", "true") */
				$('#tabStep2').attr("class", "")
				$('#tabStep4').attr("class", "active")
				$('.next').children().eq(0).css("display", "none")
				$('.previous').children().eq(0).css("display", "none")

  				},
  				error:function(xhr, status){
  				alert(xhr + " : " + status);
  			}
  		});
		}


	</script>
</body>
</html>