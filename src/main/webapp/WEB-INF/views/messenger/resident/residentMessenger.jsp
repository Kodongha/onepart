<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
	<link href="${contextPath}/resources/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="${contextPath}/resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="${contextPath}/resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="${contextPath}/resources/css/animate.min.css" rel="stylesheet" />
	<link href="${contextPath}/resources/css/style.min.css" rel="stylesheet" />
	<link href="${contextPath}/resources/css/style-responsive.min.css" rel="stylesheet" />
	<link href="${contextPath}/resources/css/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->

	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="${contextPath}/resources/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" />
	<link href="${contextPath}/resources/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
	<link href="${contextPath}/resources/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
    <link href="${contextPath}/resources/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->

	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${contextPath}/resources/plugins/pace/pace.min.js"></script>

	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${contextPath}/resources/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="${contextPath}/resources/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="${contextPath}/resources/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="${contextPath}/resources/plugins/bootstrap/js/bootstrap.min.js"></script>

	<script src="${contextPath}/resources/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${contextPath}/resources/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->

	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="${contextPath}/resources/plugins/gritter/js/jquery.gritter.js"></script>
	<script src="${contextPath}/resources/plugins/flot/jquery.flot.min.js"></script>
	<script src="${contextPath}/resources/plugins/flot/jquery.flot.time.min.js"></script>
	<script src="${contextPath}/resources/plugins/flot/jquery.flot.resize.min.js"></script>
	<script src="${contextPath}/resources/plugins/flot/jquery.flot.pie.min.js"></script>
	<script src="${contextPath}/resources/plugins/sparkline/jquery.sparkline.js"></script>
	<script src="${contextPath}/resources/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="${contextPath}/resources/plugins/jquery-jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script src="${contextPath}/resources/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="${contextPath}/resources/js/dashboard.min.js"></script>
	<script src="${contextPath}/resources/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->

	<script type="text/javascript">
		$(function(){
			loadMessenger();

			$('.messengerBtn').click(function(){
				$('.nav-inbox li').removeClass('active');
				$(this).parent().addClass('active');

				var btnId = $(this).attr('id');
				var type = 1;
				if(btnId == 'messengerType1') {
					type = 1;
				} else if(btnId == 'messengerType2') {
					type = 2;
				} else if(btnId == 'messengerType3') {
					type = 3;
				} else {
					type = 4;
				}

				// 페이지 호출
				loadMessenger(type, null);

			});

		});


		function loadMessenger(type, currentPage) {
			/*
			type 1 : 읽지 않은 쪽지
			type 2 : 받은 쪽지
			type 3 : 보낸 쪽지
			type 4 : 보관함
			*/
			if(!currentPage){
				currentPage = 1;
			}

			console.log('type :: ' + type);
			console.log('currentPage :: ' + currentPage);

			$.ajax({
				url : 'loadMessenger',
				type : 'post',
				data : {
					type : type,
					currentPage : currentPage
				},
				success : function(data){
					console.log('succ');
				},
				error : function(error){
					console.log('error');
				}

			});
		}

	</script>

</head>
<body>
	<div class="p-20">
	<!-- begin row -->
	<div class="row">
	    <!-- begin col-2 -->
	    <div class="col-md-2">
	        <div class="hidden-sm hidden-xs">
                      <h5 class="m-t-20">쪽지</h5>
                      <ul class="nav nav-pills nav-stacked nav-inbox">
                          <li class="active">
                              <a class='messengerBtn' id="messengerType1"><i class="fa fa-inbox fa-fw m-r-5"></i> 읽지 않은 쪽지</a>
                          </li>
                          <li><a class='messengerBtn' id="messengerType2"><i class="fa fa-inbox fa-fw m-r-5"></i> 받은 쪽지</a></li>
                          <li><a class='messengerBtn' id="messengerType3"><i class="fa fa-pencil fa-fw m-r-5"></i> 보낸 쪽지</a></li>
                          <li><a class='messengerBtn' id="messengerType4"><i class="fa fa-star fa-fw m-r-5"></i> 보관함</a></li>
                      </ul>
                  </div>
              </div>
	    <!-- end col-2 -->
	    <!-- begin col-10 -->
	    <div class="col-md-10">
                  <div class="email-btn-row hidden-xs">
                      <a href="writeMessengerForm" class="btn btn-sm btn-inverse"><i class="fa fa-plus m-r-5"></i> 쪽지 보내기</a>
                      <a href="#" class="btn btn-sm btn-inverse"><i class="fa fa-star-o m-r-5"></i> 보관함으로</a>
                      <a href="#" class="btn btn-sm btn-inverse"><i class="fa fa-times-circle m-r-5"></i> 선택 삭제</a>
                  </div>
	        <div class="email-content">
                      <table class="table table-email">
                          <thead>
                              <tr>
                                  <th class="email-select"><a href="#" data-click="email-select-all"><i class="fa fa-square-o fa-fw"></i></a></th>
                                  <th>Sender</th>
                                  <th>Content</th>
	                              <th>Date</th>
                              </tr>
                          </thead>
                          <tbody>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      Leap Motion
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Maecenas ultrices interdum leo, eu aliquam diam mattis sed.
                                  </td>
                                  <td class="email-date">11/4/2014</td>
                              </tr>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      Leap Motion
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Ut tristique dapibus nibh, sed scelerisque magna vehicula a.
                                  </td>
                                  <td class="email-date">11/4/2014</td>
                              </tr>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      Stefie Chin
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Etiam pretium neque vitae vulputate fermentum.
                                  </td>
                                  <td class="email-date">11/4/2014</td>
                              </tr>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      Alan Tan
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Duis et justo in nisl tristique lobortis id at ligula.
                                  </td>
                                  <td class="email-date">11/4/2014</td>
                              </tr>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      Yu Ming Tan
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Sed dapibus nec velit eget pulvinar. Etiam id erat in eros imperdiet tempus.
                                  </td>
                                  <td class="email-date">11/4/2014</td>
                              </tr>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      Harvinder Signh
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Aliquam diam risus, condimentum ut diam in, fermentum euismod sem.
                                  </td>
                                  <td class="email-date">12/4/2014</td>
                              </tr>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      Fiona Loh
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Praesent dapibus ultricies magna, ac laoreet ante pellentesque nec.
                                  </td>
                                  <td class="email-date">11/4/2014</td>
                              </tr>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      Derrick Tew
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Nullam eget nibh et dui vestibulum aliquam vitae a lacus.
                                  </td>
                                  <td class="email-date">10/4/2014</td>
                              </tr>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      Terry Dew
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Nulla eget placerat ante, sed hendrerit felis. Praesent vitae convallis erat.
                                  </td>
                                  <td class="email-date">09/4/2014</td>
                              </tr>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      John Doe
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Sed dapibus nec velit eget pulvinar. Etiam id erat in eros imperdiet tempus.
                                  </td>
                                  <td class="email-date">08/4/2014</td>
                              </tr>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      Leap Motion
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Ut tristique dapibus nibh, sed scelerisque magna vehicula a.
                                  </td>
                                  <td class="email-date">11/4/2014</td>
                              </tr>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      Stefie Chin
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Etiam pretium neque vitae vulputate fermentum.
                                  </td>
                                  <td class="email-date">11/4/2014</td>
                              </tr>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      Alan Tan
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Duis et justo in nisl tristique lobortis id at ligula.
                                  </td>
                                  <td class="email-date">11/4/2014</td>
                              </tr>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      Yu Ming Tan
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Sed dapibus nec velit eget pulvinar. Etiam id erat in eros imperdiet tempus.
                                  </td>
                                  <td class="email-date">11/4/2014</td>
                              </tr>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      Fiona Loh
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Praesent dapibus ultricies magna, ac laoreet ante pellentesque nec.
                                  </td>
                                  <td class="email-date">11/4/2014</td>
                              </tr>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      Derrick Tew
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Nullam eget nibh et dui vestibulum aliquam vitae a lacus.
                                  </td>
                                  <td class="email-date">10/4/2014</td>
                              </tr>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      Terry Dew
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Nulla eget placerat ante, sed hendrerit felis. Praesent vitae convallis erat.
                                  </td>
                                  <td class="email-date">09/4/2014</td>
                              </tr>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      John Doe
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Sed dapibus nec velit eget pulvinar. Etiam id erat in eros imperdiet tempus.
                                  </td>
                                  <td class="email-date">08/4/2014</td>
                              </tr>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      Leap Motion
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Ut tristique dapibus nibh, sed scelerisque magna vehicula a.
                                  </td>
                                  <td class="email-date">11/4/2014</td>
                              </tr>
                              <tr>
                                  <td class="email-select"><a href="#" data-click="email-select-single"><i class="fa fa-square-o fa-fw"></i></a></td>
                                  <td class="email-sender">
                                      Stefie Chin
                                  </td>
                                  <td class="email-subject">
                                      <a href="#" class="email-btn" data-click="email-archive"><i class="fa fa-folder-open"></i></a>
                                      <a href="#" class="email-btn" data-click="email-remove"><i class="fa fa-trash-o"></i></a>
                                      <a href="#" class="email-btn" data-click="email-highlight"><i class="fa fa-flag"></i></a>
                                      Etiam pretium neque vitae vulputate fermentum.
                                  </td>
                                  <td class="email-date">11/4/2014</td>
                              </tr>
                          </tbody>
                      </table>
                      <div class="email-footer clearfix">
                          737 messages
                          <ul class="pagination pagination-sm m-t-0 m-b-0 pull-right">
                              <li class="disabled"><a href="javascript:;"><i class="fa fa-angle-double-left"></i></a></li>
                              <li class="disabled"><a href="javascript:;"><i class="fa fa-angle-left"></i></a></li>
                              <li><a href="javascript:;"><i class="fa fa-angle-right"></i></a></li>
                              <li><a href="javascript:;"><i class="fa fa-angle-double-right"></i></a></li>
                          </ul>
                      </div>
	        </div>
	    </div>
	    <!-- end col-10 -->
	</div>
	<!-- end row -->
	</div>














</body>
</html>