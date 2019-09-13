<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

	<!-- ================== BEGIN PAGE CSS STYLE ================== -->
	<link href="${contextPath}/resources/plugins/jquery-tag-it/css/jquery.tagit.css" rel="stylesheet" />
	<link href="${contextPath}/resources/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.css" rel="stylesheet" />
	<!-- ================== END PAGE CSS STYLE ================== -->

	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${contextPath}/resources/plugins/pace/pace.min.js"></script>
	<script src="${contextPath}/resources/plugins/jquery/jquery-1.9.1.min.js"></script>
	<!-- ================== END BASE JS ================== -->

	<style type="text/css">
		.bg-white{
			height: 555px;
		}
	</style>

</head>
<body>
	<div class="p-30 bg-white m-t-0">
	    <!-- begin email form -->
	    <form action="writeMessenger" method="POST" name="email_to_form">
	        <!-- begin email to -->
	        <label class="control-label">To:</label>
	        <div class="m-b-15">
				<ul id="email-to" class="inverse tagit ui-widget ui-widget-content ui-corner-all">
				</ul>
			</div>
	        <!-- end email to -->

			<!-- attachment -->
			<label class="control-label">attachment:</label>
			<a href="javascript:;" class="btn btn-success btn-block">Add</a>
			<ul class="attached-document clearfix">
                 <li>
                     <div class="document-name"><a id="attachAddBtn">flight_ticket.pdf</a></div>
                     <div class="document-file">
                         <a href="#">
                             <i class="fa fa-file-pdf-o"></i>
                         </a>
                     </div>
                 </li>
                 <li>
                     <div class="document-name"><a href="#">front_end_mockup.jpg</a></div>
                     <div class="document-file">
                         <a href="#">
                             <img src="assets/img/login-bg/bg-1.jpg" alt="">
                         </a>
                     </div>
                 </li>
             </ul>

	        <!-- begin email content -->
	        <label class="control-label">Content:</label>
	        <div class="m-b-15">
				<textarea class="textarea form-control" name="messengerContent" id="messengerContent" rows="12" placeholder="Enter text ..."></textarea>
			</div>
	        <!-- end email content -->
	        <button type="submit" class="btn btn-primary p-l-40 p-r-40">Send</button>
	    </form>
	    <!-- end email form -->
	</div>




	<!-- ================== BEGIN BASE JS ================== -->
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
	<script src="${contextPath}/resources/plugins/jquery-tag-it/js/tag-it.min.js"></script>
	<script src="${contextPath}/resources/plugins/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
	<script src="${contextPath}/resources/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
	<script src="${contextPath}/resources/js/email-compose.demo.min.js"></script>
	<script src="${contextPath}/resources/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	<script type="text/javascript">
		$(document).ready(function() {
			App.init();
			EmailCompose.init();
		});

	</script>
</body>
</html>