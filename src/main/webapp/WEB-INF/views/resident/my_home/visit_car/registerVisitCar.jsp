<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>


<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<title>Color Admin | Managed Tables - ColVis</title>
<meta
   content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"
   name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- ================== BEGIN BASE CSS STYLE ================== -->
<link
   href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
   rel="stylesheet">
<link
   href="${contextPath}/resources/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css"
   rel="stylesheet" />
<link
   href="${contextPath}/resources/plugins/bootstrap/css/bootstrap.min.css"
   rel="stylesheet" />
<link
   href="${contextPath}/resources/plugins/font-awesome/css/font-awesome.min.css"
   rel="stylesheet" />
<link href="${contextPath}/resources/css/animate.min.css"
   rel="stylesheet" />
<link href="${contextPath}/resources/css/style.min.css" rel="stylesheet" />
<link href="${contextPath}/resources/css/style-responsive.min.css"
   rel="stylesheet" />
<link href="${contextPath}/resources/css/theme/default.css"
   rel="stylesheet" id="theme" />
<!-- ================== END BASE CSS STYLE ================== -->

<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
<link
   href="${contextPath}/resources/plugins/DataTables/css/data-table.css"
   rel="stylesheet" />
<!-- ================== END PAGE LEVEL STYLE ================== -->
<!-- ================== BEGIN BASE JS ================== -->
<script src="${contextPath}/resources/plugins/pace/pace.min.js"></script>
<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- ================== END BASE JS ================== -->
<style type="text/css">
.form-control {
    width: 90% !important;
    }
.btn.btn-warning { color: #fff; background: #00acac !important; border-color: #00acac !important; position: absolute; top: 130px; right: 50px; width: 10%; }
.btn.btn-warning:hover{ background: #008a8a !important; border-color: #008a8a !important; }
.row>[class*=col-].ui-sortable { width: 100%; padding:10px; height: 460px; }
.custom-modal>div { margin-top: 3% !important; }
#carre { text-align: center; }
.form-control { margin-right: 96px !important; margin: 7px; }
table#address tr td { width: 25%; text-align: center; }
table#address { width: 50%; margin-left: 132px; }
#btncar { text-align: center; width: 100%; }
@media ( min-width : 992px) { .col-md-3 { width: 18%; font-size: 15px; padding-top: 14px !important; } }
.btn { width: 20%; }
table.dataTable { margin-top: 40px !important; }
button#delete { position: absolute; left: 29px; top: 130px; width: 8%; }
button#maderoom { position: absolute; right: 44px; top: 126px; width: 8%; }
table.dataTable thead th:nth-child(1) { text-align: center; }
table.dataTable tbody td:nth-child(1) { text-align: center; padding-bottom: 0px; }
table.dataTable tbody td { padding: 10px 5px; }
input[type=checkbox] { margin: 0; -webkit-transform: scale(1.3); }
.custom-modal { transition-property: opacity; transition-duration: 0.5s; position: fixed; top: 0; left: 0; width: 100%; height: 100%; text-align: center; background-color: rgb(0, 0, 0, 0.7); }
.custom-modal.modal-hide { opacity: 0; z-index: -10; transition-property: opacity; transition-duration: 0.5s; }
.custom-modal>div { display: inline-block; width: 500px; margin-top: 10%; text-align: left; background-color: #d9e0e7; }
.createRoomDiv .form-group>div { padding: 0 15px; }
.createRoomDiv .form-group>div.buttons { text-align: right; }
.createRoomDiv .form-group>div.buttons .btn-cancel { background-color: #CCC; }
.createRoomDiv .form-group>div.buttons .btn-cancel:hover { background-color: #BBB; }
</style>
<script type="text/javascript">
   $(".table-bordered tr th").click(function() {
      $("th").parent().children().eq(0).removeAttr("class");
   });
</script>

</head>
<body>

   <!-- begin #content -->
   <div id="content" class="content" style="margin-left: 0px;">

      <!-- end col-2 -->
      <!-- begin col-10 -->
      <div class="col-md-10">
         <h1>차량관리</h1>
         <br>
	         <button type="button" id="delete" class="btn btn-sm btn-warning modal-show">삭제</button>
	         <button id="add-with-callbacks" class="btn btn-sm btn-warning modal-show"
	            data-modal-id="createRoomDiv">차량등록</button>
	     <br>
         <div class="panel panel-inverse">
            <div class="panel-body">
               <div class="table-responsive">
                  <table id="data-table" class="table table-striped table-bordered">
                     <thead>
                        <tr>
                           <th>선택</th>
                           <th>차량번호</th>
                           <th>주소</th>
                           <th>차주</th>
                           <th>차종</th>
                           <th>차명</th>
                           <th>용도</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr>
                        <tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr><tr class="odd gradeX">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>

                        </tr>
                        <tr class="even gradeC">
                           <td><input type="checkbox"></td>
                           <td>60구 7638</td>
                           <td>105동306호</td>
                           <td>김영준</td>
                           <td>승용차</td>
                           <td>sm3</td>
                           <td>자차</td>
                        </tr>


                     </tbody>
                  </table>


               </div>
            </div>
         </div>
         <!-- end panel -->
      </div>
      <!-- end col-10 -->
   </div>
   <div id="createRoomDiv" class="createRoomDiv custom-modal modal-hide">
      <div class="row">
                <!-- begin col-6 -->
             <div class="col-md-6">
                 <!-- begin panel -->
                    <div class="panel panel-inverse" data-sortable-id="form-stuff-1">

                        <div class="panel-body">
                        <h2 id="carre">차량등록</h2>
                            <form class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-md-3 control-label">차량 번호</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" placeholder="차량 번호를 입력하세요." />
                                    </div>
                                    <label class="col-md-3 control-label">주소</label>
                                    <table id="address">
                                       <tr>
                                          <td>
                                        <input type="text" class="form-control"  placeholder="동수를 입력하시오."/>
                                   </td>
                                          <td><h5>동</h5></td>
                                          <td>
                                        <input type="text" class="form-control"  placeholder="호수를 입력하시오."/>
                                </td>
                                          <td><h5>호</h5></td>
                                       </tr>
                                    </table>




                                    <label class="col-md-3 control-label">차주</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" placeholder="차주를 입력하세요." />
                                    </div>
                                    <label class="col-md-3 control-label">차종</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" placeholder="차종을 입력하세요." />
                                    </div>
                                    <label class="col-md-3 control-label">차명</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" placeholder="차명을 입력하세요." />
                                    </div>
                                    <label class="col-md-3 control-label">용도</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" placeholder="용도를 입력하세요." />
                                    </div>

                                </div>


                                <div class="form-group">
                                        <div class="col-md-9" id="btncar">
                                       <button type="submit" class="btn btn-sm btn-success">등록</button>
                           <button type="button" class="btn btn-sm btn-cancel modal-hide-btn">취소</button>
                        </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- end panel -->
                </div>
   </div>
   </div>
   <!-- end pag

   <a href="javascript:;"
      class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade"
      data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
   <!-- end scroll to top btn -->

   <!-- end page container -->

   <!-- ================== BEGIN BASE JS ================== -->
   <script
      src="${contextPath}/resources/plugins/jquery/jquery-1.9.1.min.js"></script>
   <script
      src="${contextPath}/resources/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
   <script
      src="${contextPath}/resources/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
   <script
      src="${contextPath}/resources/plugins/bootstrap/js/bootstrap.min.js"></script>
   <!--[if lt IE 9]>
      <script src="${contextPath}/resources/crossbrowserjs/html5shiv.js"></script>
      <script src="${contextPath}/resources/crossbrowserjs/respond.min.js"></script>
      <script src="${contextPath}/resources/crossbrowserjs/excanvas.min.js"></script>
   <![endif]-->
   <script
      src="${contextPath}/resources/plugins/slimscroll/jquery.slimscroll.min.js"></script>
   <script
      src="${contextPath}/resources/plugins/jquery-cookie/jquery.cookie.js"></script>
   <!-- ================== END BASE JS ================== -->

   <!-- ================== BEGIN PAGE LEVEL JS ================== -->
   <script
      src="${contextPath}/resources/plugins/DataTables/js/jquery.dataTables.js"></script>
   <script
      src="${contextPath}/resources/plugins/DataTables/js/dataTables.colVis.js"></script>
   <script
      src="${contextPath}/resources/js/table-manage-colvis.demo.min.js"></script>
   <script src="${contextPath}/resources/js/apps.min.js"></script>
      <!-- ================== END PAGE LEVEL JS ================== -->

   <script>
      $(document).ready(function() {
         App.init();
         TableManageColVis.init();
         $("th").parent().children().eq(0).removeAttr("class");
         $("th").parent().children().eq(0).removeAttr("class");
         $("th").parent().children().eq(0).removeAttr("class");
      });
   </script>
   <script type="text/javascript">
      $(function() {
         CustomModal.init();
      });
   </script></body>

</html>