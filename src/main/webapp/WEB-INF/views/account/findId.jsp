<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath }" scope="application" />
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
	<meta charset="utf-8" />
	<title>Color Admin | Register Page</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />

	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<%-- <link href="${contextPath}/resources/plugins/jquery-ui/themes/base/minified/jquery-uimin.css" rel="stylesheet" /> --%>
	<link href="${contextPath}/resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="${contextPath}/resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="${contextPath}/resources/css/animate.min.css" rel="stylesheet" />
	<link href="${contextPath}/resources/css/style.min.css" rel="stylesheet" />
	<link href="${contextPath}/resources/css/style-responsive.min.css" rel="stylesheet" />
	<link href="${contextPath}/resources/css/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->

	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="${contextPath}/resources/plugins/bootstrap-wizard/css/bwizard.min.css" rel="stylesheet">
	<link href="${contextPath}/resources/plugins/parsley/src/parsley.css" rel="stylesheet">
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${contextPath}/resources/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</head>

<body class="pace-top">
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade in">
		<span class="spinner"></span>
	</div>
	<!-- end #page-loader -->

	<!-- begin #page-container -->
	<div id="page-container" class="fade">
		<!-- 아이디 찾기, 비밀번호 찾기 시작 -->
		<div class="register register-with-news-feed" style="width: 70%; margin: auto;">
			<!-- 반응형 시작 -->
			<div class="col-md-6">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#default-tab-1" data-toggle="tab" aria-expanded="false">아이디 찾기</a></li>
					<li class=""><a href="${contextPath}/moveFindPwd" data-toggle="tab" aria-expanded="true">비밀번호 찾기</a></li>
				</ul>
				<!-- 아이디 찾기, 비밀번호 찾기 탭 시작 -->
				<div class="tab-content">
					<!-- 아이디 찾기 시작 -->
					<div class="tab-pane fade active in" id="default-tab-1">
						<h3 class="m-t-10">
							<i class="fa fa-cog"></i> 아이디 찾기
						</h3>
						<div class="col-md-6">
							<form action="index.html" method="POST" class="margin-bottom-0">
								<div class="panel-group" id="accordion">
									<div class="panel panel-inverse overflow-hidden">
										<div class="panel-heading">
											<h3 class="panel-title">
												<a class="accordion-toggle accordion-toggle-styled collapsed" data-toggle="collapse" data-parent="#accordion"
												 href="#collapseOne" aria-expanded="false"> <i class="fa fa-plus-circle pull-right"></i> 회원정보에 등록한 휴대전화로 인증
												</a>
											</h3>
										</div>
										<div id="collapseOne" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
											<div class="panel-body">
												<label class="control-label">이름</label>
												<div class="row m-b-15">
													<div class="col-md-12">
														<input type="text" class="form-control" placeholder="실명 입력" style="width: 77%;" />
													</div>
												</div>

												<label class="control-label">휴대전화번호 인증</label>
												<div class="row m-b-15">
													<div class="col-md-12">
														<input type="tel" class="form-control" placeholder="휴대전화번호 입력" style="width: 77%; display: inline-block;" />&nbsp;
														<button type="button" class="btn btn-default m-r-5 m-b-5">인증번호</button>
														<br><br>
														<input type="text" class="form-control" placeholder="인증번호 입력" style="width: 50%; display: inline-block;" />&nbsp;
														<button type="button" class="btn btn-default m-r-5 m-b-5">확인</button>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="panel panel-inverse overflow-hidden">
										<div class="panel-heading">
											<h3 class="panel-title">
												<a class="accordion-toggle accordion-toggle-styled collapsed" data-toggle="collapse" data-parent="#accordion"
												 href="#collapseTwo" aria-expanded="false"> <i class="fa fa-plus-circle pull-right"></i> 본인확인 이메일로 인증
												</a>
											</h3>
										</div>
										<div id="collapseTwo" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
											<div class="panel-body">
												<label class="control-label">이름</label>
												<div class="row m-b-15">
													<div class="col-md-12">
														<input type="text" class="form-control" placeholder="실명 입력" style="width: 77%;" />
													</div>
												</div>

												<label class="control-label">이메일</label>
												<div class="row m-b-15">
													<div class="col-md-12">
														<input type="email" class="form-control" placeholder="이메일 주소" style="width: 77%; display: inline-block;" />&nbsp;
														<button type="button" class="btn btn-default m-r-5 m-b-5">인증번호</button>
														<br><br> <input type="text" class="form-control" placeholder="인증번호 입력" style="width: 50%; display: inline-block;" />&nbsp;
														<button type="button" class="btn btn-default m-r-5 m-b-5">확인</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							<p class="text-center m-b-0">
								<a href="javascript:;" class="btn btn-white m-r-5">취소</a> <a href="javascript:;" class="btn btn-primary">찾기</a>
							</p>
							</form>
						</div>
					</div>
					<!-- 아이디 찾기  -->
					<!-- 비밀번호 찾기 시작 -->
					<div class="tab-pane fade " id="default-tab-2"></div>
					<!-- 비밀번호 찾기 끝 -->
				</div>
					<!-- 아이디 찾기, 비밀번호 찾기 탭 끝 -->
			</div>
			<!-- 반응형 끝 -->
		</div>
		<!-- 아이디 찾기, 비밀번호 찾기 끝 -->
	</div>
	<!-- end #page-container -->





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
	<script src="${contextPath}/resources/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->

	<script>
		$(document).ready(function () {
			App.init();
		});
	</script>
</body>

</html>