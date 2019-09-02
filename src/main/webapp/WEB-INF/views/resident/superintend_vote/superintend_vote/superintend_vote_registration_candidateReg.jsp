<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<head>
	<meta charset="utf-8">
	<title>Color Admin | Compose</title>
</head>
</head>
<body>
<jsp:include page="../superintend_vote/superintend_vote_include.jsp"></jsp:include>
<jsp:include page="../superintend_vote/superintend_vote_detail_include.jsp"></jsp:include>
<!-- 후보등록 요청 div -->
<div style="width:95%; margin:0 auto">
	<!-- title div -->
	<table style="width:95%">
		<tr>
			<td>
				<div class="form-group">
                    <h4>후보등록 요청</h4>                   
                </div>
			</td>
		</tr>
	</table>
	<!-- 전송내용 작성 div -->
	<div style="width:95%">
	<hr>
		<table style="width:100%">
			<tr>
				<td colspan="3">
					<div class="form-group">
                        <label for="exampleInputEmail1" style="font-weight:bold;">전송내용</label>
                        <textarea class="form-control" placeholder="Textarea" rows="5" style="margin: 0px 1px 0px 0px; width:100%; height: 200px;"></textarea>
                    </div>
				</td>
			</tr>
			<tr>
				<td><br><br></td>
			</tr>
			<tr>
				<td style='width:5%'>
					<label for="exampleInputEmail1" style="font-weight:bold;">전송인</label>
				</td>
				<td style="width:10%">
					 <a class="btn btn-white" style="width:100%" id="buttonModal">추가</a>
				</td>
				<td>
					<input style="width:100%;" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
				</td>
			</tr>
		</table>
		<br><br><br><br><br><br><br><br>
		<table style="width:100%; margin:0 auto;">
			<tr>
				<td>
					<div class="form-group">
                                    <a class="btn btn-white" style="width: 100%" id="applyGo">전송</a>
                                </div>
				</td>
				<td style="width:15%"></td>
				<td>
					<div class="form-group">
                                    <a class="btn btn-white" style="width: 100%" id="votingCandidate">취소</a>
                                </div>
				</td>
			</tr>
		</table>
	</div>
</div>
<br><br><br>
<!-- 전송인 추가 모달창 div -->
	<div class="panel panel-info" data-sortable-id="ui-widget-16" style="width:30%" id="dialog">
                      <div class="panel-heading">
                          <div class="panel-heading-btn">
                          </div>
                          <h4 class="panel-title">전송인 추가</h4>
                      </div>
                      <div class="panel-body">
                      <table style="width:90%; margin:0 auto;">
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
                      <table style="width:90%; margin:0 auto;">
                      	<tr>
                      		<td>
                      			<div class="form-group">
                                    <a class="btn btn-white" style="width: 100%" id="candidateApply">추가</a>
                                </div>
                      		</td>
                      		<td style="width:5%"></td>
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
		  			 var testX = test.offset().left + 50;
		  			 var testY = test.offset().top + 20;
		  			 console.log(testX);
		  			 $( "#dialog" ).show().css({
		  				 "position": "absolute",
		  				 "top": testY,
		  			     "left": testX
		  			 }); 
		  		 });
		  		
		  		$("#candidateApply").click(function(){
		  			$( "#dialog" ).hide();
		  		});
		  		 
		  	});
       </script>
       </body>
</html>