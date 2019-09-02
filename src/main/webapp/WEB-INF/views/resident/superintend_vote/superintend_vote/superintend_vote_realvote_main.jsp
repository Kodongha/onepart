<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../superintend_vote/superintend_vote_include.jsp"></jsp:include>
<jsp:include page="../superintend_vote/superintend_vote_detail_include_2.jsp"></jsp:include>
<!-- 후보정보 div -->
<div style="width:95%; margin:0 auto">
	<!-- title div -->
	<table style="width:95%">
		<tr>
			<td>
				<div class="form-group">
                    <h4>후보정보</h4>                   
                </div>
			</td>
			<td></td>			
			<td style="width:15%">
			</td>
		</tr>
	</table>
	<!-- 후보 상세정보 div -->
	<div style="width:95%">
	<hr>
		<ul class="media-list media-list-with-divider">
			<li class="media media-lg">
				<a href="javascript:;" class="pull-left">
					<img class="media-object" src="${contextPath }/resources/images/vote1.PNG" alt="" style="height:250px; width:auto;">
				</a>
				<div class="media-body">
					<br><br><br>
					<h4 class="media-heading">기호1번 김은혜</h4>
					Nullam at risus metus. Quisque nisl purus, pulvinar ut mauris vel, elementum suscipit eros. Praesent ornare ante massa, egestas pellentesque orci convallis ut. Curabitur consequat convallis est, id luctus mauris lacinia vel. Nullam tristique lobortis mauris, ultricies fermentum lacus bibendum id. Proin non ante tortor. Suspendisse pulvinar ornare tellus nec pulvinar. Nam pellentesque accumsan mi, non pellentesque sem convallis sed. Quisque rutrum erat id auctor gravida.
				</div>
			</li>
			<li class="media media-lg">
				<a href="javascript:;" class="pull-left">
					<img class="media-object" src="${contextPath }/resources/images/vote2.PNG" alt="" style="height:250px; width:auto;">
				</a>
				<div class="media-body">
					<br><br><br>
					<h4 class="media-heading">기호2번 임동호</h4>
					Fusce bibendum augue nec fermentum tempus. Sed laoreet dictum tempus. Aenean ac sem quis nulla malesuada volutpat. Nunc vitae urna pulvinar velit commodo cursus. Nullam eu felis quis diam adipiscing hendrerit vel ac turpis. Nam mattis fringilla euismod. Donec eu ipsum sit amet mauris iaculis aliquet. Quisque sit amet feugiat odio. Cras convallis lorem at libero lobortis, placerat lobortis sapien lacinia. Duis sit amet elit bibendum sapien dignissim bibendum.
				</div>
		</ul>
	</div>
</div>
<br><br>
</body>
</html>