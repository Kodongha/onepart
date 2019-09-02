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
	<title>OnePart(원파트) | Login Page</title>
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
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${contextPath}/resources/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</head>
<body class="pace-top">
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade in"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<div class="login-cover">
	    <div class="login-cover-image"><img src="${contextPath}/resources/img/login-bg/bg-1.jpg" data-id="login-cover-image" alt="" /></div>
	    <div class="login-cover-bg"></div>
	</div>
	<!-- begin #page-container -->
	<div id="page-container" class="fade">
	    <!-- begin login -->
        <div class="login login-v2" data-pageload-addclass="animated fadeIn">
            <!-- begin brand -->
            <div class="login-header">
                <div class="brand">
                    <span class="logo"></span> OnePart(원파트)
                    <small>아파트 스마트 홈라이프의 시작</small>
                </div>
                <div class="icon">
                    <i class="fa fa-sign-in"></i>
                </div>
            </div>
            <!-- end brand -->
            <div class="login-content">
                <form action="index.html" method="POST" class="margin-bottom-0">
                    <div class="form-group m-b-20">
                        <input type="text" class="form-control input-lg" placeholder="아이디를 입력하세요." />
                    </div>
                    <div class="form-group m-b-20">
                        <input type="text" class="form-control input-lg" placeholder="비밀번호를 입력하세요." />
                    </div>
                    <div class="checkbox m-b-20">
                        <label>
                            <input type="checkbox" /> 자동 로그인
                        </label>
                    </div>
                    <div class="login-buttons">
                        <button type="submit" class="btn btn-success btn-block btn-lg">로그인</button>
                    </div>
                    <div class="m-t-20" style="">
                        회원가입을 하시려면 <a href="#">여기</a>를 클릭하세요.
                    </div>
                    <div class="m-t-20" style="margin-top: 1%!important">
                        <a href="#">아이디</a>,<a href="#">비밀번호</a>를 잃어버리셨습니까?
                    </div>
                    
                </form>
            </div>
        </div>
        <!-- end login -->
        
        <ul class="login-bg-list">
            <li class="active"><a href="#" data-click="change-bg"><img src="${contextPath}/resources/img/login-bg/bg-1.jpg" alt="" /></a></li>
            <li><a href="#" data-click="change-bg"><img src="${contextPath}/resources/img/login-bg/bg-9.jpg" alt="" /></a></li>
            <li><a href="#" data-click="change-bg"><img src="${contextPath}/resources/img/login-bg/bg-10.jpg" alt="" /></a></li>
            <li><a href="#" data-click="change-bg"><img src="${contextPath}/resources/img/login-bg/bg-4.jpg" alt="" /></a></li>
            <li><a href="#" data-click="change-bg"><img src="${contextPath}/resources/img/login-bg/bg-5.jpg" alt="" /></a></li>
            <li><a href="#" data-click="change-bg"><img src="${contextPath}/resources/img/login-bg/bg-6.jpg" alt="" /></a></li>
        </ul>
        
        <!-- begin theme-panel -->
        <div class="theme-panel">
            <a href="javascript:;" data-click="theme-panel-expand" class="theme-collapse-btn"><i class="fa fa-cog"></i></a>
            <div class="theme-panel-content">
                <h5 class="m-t-0">Color Theme</h5>
                <ul class="theme-list clearfix">
                    <li class="active"><a href="javascript:;" class="bg-green" data-theme="default" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Default">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-red" data-theme="red" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Red">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-blue" data-theme="blue" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Blue">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-purple" data-theme="purple" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Purple">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-orange" data-theme="orange" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Orange">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-black" data-theme="black" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Black">&nbsp;</a></li>
                </ul>
                <div class="divider"></div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Header Styling</div>
                    <div class="col-md-7">
                        <select name="header-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">inverse</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label">Header</div>
                    <div class="col-md-7">
                        <select name="header-fixed" class="form-control input-sm">
                            <option value="1">fixed</option>
                            <option value="2">default</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Sidebar Styling</div>
                    <div class="col-md-7">
                        <select name="sidebar-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">grid</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label">Sidebar</div>
                    <div class="col-md-7">
                        <select name="sidebar-fixed" class="form-control input-sm">
                            <option value="1">fixed</option>
                            <option value="2">default</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Sidebar Gradient</div>
                    <div class="col-md-7">
                        <select name="content-gradient" class="form-control input-sm">
                            <option value="1">disabled</option>
                            <option value="2">enabled</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Content Styling</div>
                    <div class="col-md-7">
                        <select name="content-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">black</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-12">
                        <a href="#" class="btn btn-inverse btn-block btn-sm" data-click="reset-local-storage"><i class="fa fa-refresh m-r-3"></i> Reset Local Storage</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- end theme-panel -->
	</div>
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
	<script src="${contextPath}/resources/js/login-v2.demo.min.js"></script>
	<script src="${contextPath}/resources/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->

	<script>
		$(document).ready(function() {
			App.init();
			LoginV2.init();
		});
	</script>
</body>
</html>
