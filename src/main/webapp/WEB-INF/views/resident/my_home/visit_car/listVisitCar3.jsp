<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
	<link href="${contextPath}/resources/plugins/DataTables/css/data-table.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->

	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${contextPath}/resources/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->

</head>
<body>
	<div id="visitCarPanel" class="panel-body">
	<div class="table-responsive">
		<table id="data-table" class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>Rendering engine</th>
					<th>Browser</th>
					<th>Platform(s)</th>
					<th>Engine version</th>
					<th>CSS grade</th>
				</tr>
			</thead>
			<tbody>
				<tr class="odd gradeX">
					<td>Trident</td>
					<td>Internet Explorer 4.0</td>
					<td>Win 95+</td>
					<td>4</td>
					<td>X</td>
				</tr>
				<tr class="even gradeC">
					<td>Trident</td>
					<td>Internet Explorer 5.0</td>
					<td>Win 95+</td>
					<td>5</td>
					<td>C</td>
				</tr>
				<tr class="odd gradeA">
					<td>Trident</td>
					<td>Internet Explorer 5.5</td>
					<td>Win 95+</td>
					<td>5.5</td>
					<td>A</td>
				</tr>
				<tr class="even gradeA">
					<td>Trident</td>
					<td>Internet Explorer 6</td>
					<td>Win 98+</td>
					<td>6</td>
					<td>A</td>
				</tr>
				<tr class="odd gradeA">
					<td>Trident</td>
					<td>Internet Explorer 7</td>
					<td>Win XP SP2+</td>
					<td>7</td>
					<td>A</td>
				</tr>
				<tr class="even gradeA">
					<td>Trident</td>
					<td>AOL browser (AOL desktop)</td>
					<td>Win XP</td>
					<td>6</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Firefox 1.0</td>
					<td>Win 98+ / OSX.2+</td>
					<td>1.7</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Firefox 1.5</td>
					<td>Win 98+ / OSX.2+</td>
					<td>1.8</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Firefox 2.0</td>
					<td>Win 98+ / OSX.2+</td>
					<td>1.8</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Firefox 3.0</td>
					<td>Win 2k+ / OSX.3+</td>
					<td>1.9</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Camino 1.0</td>
					<td>OSX.2+</td>
					<td>1.8</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Camino 1.5</td>
					<td>OSX.3+</td>
					<td>1.8</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Netscape 7.2</td>
					<td>Win 95+ / Mac OS 8.6-9.2</td>
					<td>1.7</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Netscape Browser 8</td>
					<td>Win 98SE+</td>
					<td>1.7</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Netscape Navigator 9</td>
					<td>Win 98+ / OSX.2+</td>
					<td>1.8</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Mozilla 1.0</td>
					<td>Win 95+ / OSX.1+</td>
					<td>1</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Mozilla 1.1</td>
					<td>Win 95+ / OSX.1+</td>
					<td>1.1</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Mozilla 1.2</td>
					<td>Win 95+ / OSX.1+</td>
					<td>1.2</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Mozilla 1.3</td>
					<td>Win 95+ / OSX.1+</td>
					<td>1.3</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Mozilla 1.4</td>
					<td>Win 95+ / OSX.1+</td>
					<td>1.4</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Mozilla 1.5</td>
					<td>Win 95+ / OSX.1+</td>
					<td>1.5</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Mozilla 1.6</td>
					<td>Win 95+ / OSX.1+</td>
					<td>1.6</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Mozilla 1.7</td>
					<td>Win 98+ / OSX.1+</td>
					<td>1.7</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Mozilla 1.8</td>
					<td>Win 98+ / OSX.1+</td>
					<td>1.8</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Seamonkey 1.1</td>
					<td>Win 98+ / OSX.2+</td>
					<td>1.8</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Gecko</td>
					<td>Epiphany 2.20</td>
					<td>Gnome</td>
					<td>1.8</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Webkit</td>
					<td>Safari 1.2</td>
					<td>OSX.3</td>
					<td>125.5</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Webkit</td>
					<td>Safari 1.3</td>
					<td>OSX.3</td>
					<td>312.8</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Webkit</td>
					<td>Safari 2.0</td>
					<td>OSX.4+</td>
					<td>419.3</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Webkit</td>
					<td>Safari 3.0</td>
					<td>OSX.4+</td>
					<td>522.1</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Webkit</td>
					<td>OmniWeb 5.5</td>
					<td>OSX.4+</td>
					<td>420</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Webkit</td>
					<td>iPod Touch / iPhone</td>
					<td>iPod</td>
					<td>420.1</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Webkit</td>
					<td>S60</td>
					<td>S60</td>
					<td>413</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Opera 7.0</td>
					<td>Win 95+ / OSX.1+</td>
					<td>-</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Opera 7.5</td>
					<td>Win 95+ / OSX.2+</td>
					<td>-</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Opera 8.0</td>
					<td>Win 95+ / OSX.2+</td>
					<td>-</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Opera 8.5</td>
					<td>Win 95+ / OSX.2+</td>
					<td>-</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Opera 9.0</td>
					<td>Win 95+ / OSX.3+</td>
					<td>-</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Opera 9.2</td>
					<td>Win 88+ / OSX.3+</td>
					<td>-</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Opera 9.5</td>
					<td>Win 88+ / OSX.3+</td>
					<td>-</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Opera for Wii</td>
					<td>Wii</td>
					<td>-</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Nokia N800</td>
					<td>N800</td>
					<td>-</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>Presto</td>
					<td>Nintendo DS browser</td>
					<td>Nintendo DS</td>
					<td>8.5</td>
					<td>C/A<sup>1</sup></td>
				</tr>
				<tr class="gradeC">
					<td>KHTML</td>
					<td>Konqureror 3.1</td>
					<td>KDE 3.1</td>
					<td>3.1</td>
					<td>C</td>
				</tr>
				<tr class="gradeA">
					<td>KHTML</td>
					<td>Konqureror 3.3</td>
					<td>KDE 3.3</td>
					<td>3.3</td>
					<td>A</td>
				</tr>
				<tr class="gradeA">
					<td>KHTML</td>
					<td>Konqureror 3.5</td>
					<td>KDE 3.5</td>
					<td>3.5</td>
					<td>A</td>
				</tr>
				<tr class="gradeX">
					<td>Tasman</td>
					<td>Internet Explorer 4.5</td>
					<td>Mac OS 8-9</td>
					<td>-</td>
					<td>X</td>
				</tr>
				<tr class="gradeC">
					<td>Tasman</td>
					<td>Internet Explorer 5.1</td>
					<td>Mac OS 7.6-9</td>
					<td>1</td>
					<td>C</td>
				</tr>
				<tr class="gradeC">
					<td>Tasman</td>
					<td>Internet Explorer 5.2</td>
					<td>Mac OS 8-X</td>
					<td>1</td>
					<td>C</td>
				</tr>
				<tr class="gradeA">
					<td>Misc</td>
					<td>NetFront 3.1</td>
					<td>Embedded devices</td>
					<td>-</td>
					<td>C</td>
				</tr>
				<tr class="gradeA">
					<td>Misc</td>
					<td>NetFront 3.4</td>
					<td>Embedded devices</td>
					<td>-</td>
					<td>A</td>
				</tr>
				<tr class="gradeX">
					<td>Misc</td>
					<td>Dillo 0.8</td>
					<td>Embedded devices</td>
					<td>-</td>
					<td>X</td>
				</tr>
				<tr class="gradeX">
					<td>Misc</td>
					<td>Links</td>
					<td>Text only</td>
					<td>-</td>
					<td>X</td>
				</tr>
				<tr class="gradeX">
					<td>Misc</td>
					<td>Lynx</td>
					<td>Text only</td>
					<td>-</td>
					<td>X</td>
				</tr>
				<tr class="gradeC">
					<td>Misc</td>
					<td>IE Mobile</td>
					<td>Windows Mobile 6</td>
					<td>-</td>
					<td>C</td>
				</tr>
				<tr class="gradeC">
					<td>Misc</td>
					<td>PSP browser</td>
					<td>PSP</td>
					<td>-</td>
					<td>C</td>
				</tr>
				<tr class="gradeU">
					<td>Other browsers</td>
					<td>All others</td>
					<td>-</td>
					<td>-</td>
					<td>U</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>


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
	<script src="${contextPath}/resources/plugins/DataTables/js/jquery.dataTables.js"></script>
	<script src="${contextPath}/resources/js/table-manage-default.demo.min.js"></script>
	<script src="${contextPath}/resources/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->

	<script>
		$(document).ready(function() {
			$("#visitCarPanel").css("background-color","white");
			App.init();
			TableManageDefault.init();
		});
	</script>

</body>
</html>