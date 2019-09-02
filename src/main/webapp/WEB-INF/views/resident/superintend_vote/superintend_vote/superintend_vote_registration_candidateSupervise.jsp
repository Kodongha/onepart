<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../superintend_vote/superintend_vote_include.jsp"></jsp:include>
<jsp:include page="../superintend_vote/superintend_vote_detail_include.jsp"></jsp:include>
<!-- 후보관리 및 후보등록 div -->
<div style="width:95%; margin:0 auto">
	<!-- title div -->
	<table style="width:95%">
		<tr>
			<td>
				<div class="form-group">
                    <h4>등록된 후보</h4>                   
                </div>
			</td>
		</tr>
	</table>
	<!-- 등록된 후보 리스트 div -->
	<div style="width:95%">
		<ul class="media-list media-list-with-divider">
			<!-- 한후보 정보 div -->
			<li>
				<table style="width:100%">
					<tr>
						<td style="width:30%"><h4>후보1 김은혜</h4></td>
						<td style="width:60%"><h4>은혜아파트 104동 601호 거주</h4></td>
						<td><a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a></td>
						<td><a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a></td>
					</tr>
				</table>
			</li>
			<li class="media media-lg" style="padding:10px">
				<a href="javascript:;" class="pull-left">
					<img class="media-object" src="${contextPath }/resources/images/vote1.PNG" alt="" style="height:250px; width:auto;">
				</a>
				<div class="media-body" style="padding-top:1%">
					<h4 class="media-heading">후보자 간단정보</h4>
					Nullam at risus metus. Quisque nisl purus, pulvinar ut mauris vel, elementum suscipit eros. Praesent ornare ante massa, egestas pellentesque orci convallis ut. Curabitur consequat convallis est, id luctus mauris lacinia vel. Nullam tristique lobortis mauris, ultricies fermentum lacus bibendum id. Proin non ante tortor. Suspendisse pulvinar ornare tellus nec pulvinar. 
					<br>
					<h4 class="media-heading">후보자 상세정보</h4>
					Nullam at risus metus. Quisque nisl purus, pulvinar ut mauris vel, elementum suscipit eros. Praesent ornare ante massa, egestas pellentesque orci convallis ut. Curabitur consequat convallis est, id luctus mauris lacinia vel. Nullam tristique lobortis mauris, ultricies fermentum lacus bibendum id. Proin non ante tortor. Suspendisse pulvinar ornare tellus nec pulvinar. 
					<br>
					<h4 class="media-heading">기타사항</h4>
					Nullam at risus metus. Quisque nisl purus, pulvinar ut mauris vel, elementum suscipit eros. Praesent ornare ante massa, egestas pellentesque orci convallis ut. Curabitur consequat convallis est, id luctus mauris lacinia vel. Nullam tristique lobortis mauris, ultricies fermentum lacus bibendum id. Proin non ante tortor. Suspendisse pulvinar ornare tellus nec pulvinar. 
				</div>
			</li>
			
			<li>
				<table style="width:100%">
					<tr>
						<td style="width:30%"><h4>후보2 고동하</h4></td>
						<td style="width:60%"><h4>은혜아파트 112동 1301호 거주</h4></td>
						<td><a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a></td>
						<td><a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a></td>
					</tr>
				</table>
			</li>
			<li class="media media-lg" style="padding:15px">
				<a href="javascript:;" class="pull-left">
					<img class="media-object" src="${contextPath }/resources/images/vote2.PNG" alt="" style="height:250px; width:auto;">
				</a>
				<div class="media-body" style="padding-top:1%">
					<h4 class="media-heading">후보자 간단정보</h4>
					Nullam at risus metus. Quisque nisl purus, pulvinar ut mauris vel, elementum suscipit eros. Praesent ornare ante massa, egestas pellentesque orci convallis ut. Curabitur consequat convallis est, id luctus mauris lacinia vel. Nullam tristique lobortis mauris, ultricies fermentum lacus bibendum id. Proin non ante tortor. Suspendisse pulvinar ornare tellus nec pulvinar. Nam pellentesque accumsan mi, non pellentesque sem convallis sed. Quisque rutrum erat id auctor gravida.
					<br>
					<h4 class="media-heading">후보자 상세정보</h4>
					Nullam at risus metus. Quisque nisl purus, pulvinar ut mauris vel, elementum suscipit eros. Praesent ornare ante massa, egestas pellentesque orci convallis ut. Curabitur consequat convallis est, id luctus mauris lacinia vel. Nullam tristique lobortis mauris, ultricies fermentum lacus bibendum id. Proin non ante tortor. Suspendisse pulvinar ornare tellus nec pulvinar. Nam pellentesque accumsan mi, non pellentesque sem convallis sed. Quisque rutrum erat id auctor gravida.
					<br>
					<h4 class="media-heading">기타사항</h4>
					Nullam at risus metus. Quisque nisl purus, pulvinar ut mauris vel, elementum suscipit eros. Praesent ornare ante massa, egestas pellentesque orci convallis ut. Curabitur consequat convallis est, id luctus mauris lacinia vel. Nullam tristique lobortis mauris, ultricies fermentum lacus bibendum id. Proin non ante tortor. Suspendisse pulvinar ornare tellus nec pulvinar. Nam pellentesque accumsan mi, non pellentesque sem convallis sed. Quisque rutrum erat id auctor gravida.
				</div>
		</ul>
	</div>
	<br><br>
	<!-- 후보추가 div -->
	<div style="width:95%">
		<table style="width:100%">
			<tr>
				<td>
					<div class="form-group" style="width:20%">
                        <a class="btn btn-white" style="width: 100%" id="buttonModal">새 후보 추가	</a>
                    </div>
				</td>
			</tr>
		</table>
	</div>
</div>
<!-- 후보등록 모달창 div -->
	<div class="panel panel-info" data-sortable-id="ui-widget-16" style="width:50%" id="dialog">
                      <div class="panel-heading">
                          <div class="panel-heading-btn">
                          </div>
                          <h4 class="panel-title">새 후보</h4>
                      </div>
                      <div class="panel-body">
                       	<table style="width:95%; margin:0 auto;">
                       		<tr>
                       			<td>
                       				 <label for="exampleInputEmail1" style="font-weight:bold;">후보정보</label>
                       			</td>
                       			<td style="width:10%"></td>
                       			<td style="width:75%">
                       				<input style="width:100%;" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                       			</td>
                       			<td>
                       				<a class="btn btn-white" style="width: 100%">추가</a>
                       			</td>
                       		</tr>
                       		<tr><td><br></td></tr>
                       		<tr>
                       			<td></td>
                       			<td colspan="3">
                       				<table style="width:100%; margin:0 auto;">
				                      	<tr>
				                      		<td>
				                      			<select class="form-control input-sm" id="compareSelect">
				                                  <c:forEach var="month" begin="101" end="113">
				                                  		<option value='<c:out value="month"></c:out>'>${ month }동</option>
				                                  </c:forEach>
				                           		</select>
				                      		</td>
				                      		<td style="width:3%"></td>
				                      		<td>
				                      			<select class="form-control input-sm" id="compareSelect">
				                                  <c:forEach var="month" begin="101" end="113">
				                                  		<option value='<c:out value="month"></c:out>'>${ month }동</option>
				                                  </c:forEach>
				                           		</select>
				                      		</td>
				                      		<td style="width:3%"></td>
				                      		<td>
				                      			<select class="form-control input-sm" id="compareSelect">
				                                  <c:forEach var="month" begin="101" end="113">
				                                  		<option value='<c:out value="month"></c:out>'>${ month }동</option>
				                                  </c:forEach>
				                           		</select>
				                      		</td>
				                      	</tr>
				                      	<tr>
				                      		<td>
				                      			<br><br><br><br>
				                      		</td>
				                      	</tr>
				                      </table>
                       			</td>
                       		</tr>
                       		<tr><td><br></td></tr>
                       		<tr>
								<td colspan="4">
									<div class="form-group">
		                                      <label for="exampleInputEmail1" style="font-weight:bold;">간단정보</label>
		                                      <textarea class="form-control" placeholder="Textarea" rows="5" style="margin: 0px 1px 0px 0px; width:100%; height: 141px;"></textarea>
		                                  </div>
								</td>
							</tr>
							<tr><td><br></td></tr>
							<tr>
								<td colspan="4">
									<div class="form-group">
		                                      <label for="exampleInputEmail1" style="font-weight:bold;">상세정보</label>
		                                      <textarea class="form-control" placeholder="Textarea" rows="5" style="margin: 0px 1px 0px 0px; width:100%; height: 141px;"></textarea>
		                                  </div>
								</td>
							</tr>
							<tr><td><br></td></tr>
							<tr>
								<td colspan="4">
									<div class="form-group">
		                                      <label for="exampleInputEmail1" style="font-weight:bold;">기타사항</label>
		                                      <textarea class="form-control" placeholder="Textarea" rows="5" style="margin: 0px 1px 0px 0px; width:100%; height: 141px;"></textarea>
		                                  </div>
								</td>
							</tr>
							<tr><td><br></td></tr>
						</table>
					<br><br>
					<table style="width:95%; margin:0 auto;">
						<tr>
							<td>
								<div class="form-group">
                                       <a class="btn btn-white" style="width: 100%" id=cancelName>등록</a>
                                   </div>
							</td>
							<td style="width:15%"></td>
							<td>
								<div class="form-group">
                                       <a class="btn btn-white" style="width: 100%" id="candidateApply">취소</a>
                                   </div>
							</td>
						</tr>
                         	</table>
                      </div>
                  </div>
       <!-- 모달창 띄우기 script -->
       <script type="text/javascript">
		       $(function(){
		  		 $( "#dialog" ).hide();
		  		 
		  		 $("#buttonModal").click(function(){
		  			 var test = $(this);
		  			 var testX = test.offset().left + 100;
		  			 var testY = test.offset().top + 20;
		  			 console.log(testX);
		  			 $( "#dialog" ).show().css({
		  				 "position": "absolute",
		  				 "top": testY,
		  			     "left": testX
		  			 }); 
		  		 });
		  		
		  		$("#cancelName").click(function(){
		  			$( "#dialog" ).hide();
		  		});
		  		 
		  	});
       </script>
</body>
</html>