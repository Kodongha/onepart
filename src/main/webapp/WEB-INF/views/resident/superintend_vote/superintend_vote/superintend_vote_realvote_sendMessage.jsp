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
<jsp:include page="../superintend_vote/superintend_vote_detail_include_2.jsp"></jsp:include>
<!-- 문자발송 div -->
<div style="width:95%; margin:0 auto">
	<!-- title div -->
	<table style="width:95%">
		<tr>
			<td>
				<div class="form-group">
                    <h4>문자발송</h4>                   
                </div>
			</td>
			<td></td>			
			<td style="width:15%">
			</td>
		</tr>
	</table>
	<!-- 선거인명부 div -->
	<div style="width:95%">
	<hr>
	<table style="width:95%">
		<tr>
			<td style="width:80%">
				<div class="form-group">
                    <h4>선거인명부</h4>                   
                </div>
			</td>
			<td>
      			<select class="form-control input-sm" id="compareSelect">
	                  <c:forEach var="month" begin="101" end="113">
	                  		<option value='<c:out value="month"></c:out>'>${ month }동</option>
	                  </c:forEach>
           		</select>
      		</td>
		</tr>
	</table>
		<div class="panel-body">
			<table class="table table-hover" style="text-align: center;">
				<thead>
					<tr>
						<td style="font-weight: bold;">동</td>
						<td style="font-weight: bold;">호수</td>
						<td style="font-weight: bold;">세대주 명</td>
						<td style="font-weight: bold;">현황</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>101동</td>
						<td>101호</td>
						<td>박성래</td>
						<td>투표완료</td>
					</tr>
					<tr>
						<td>101동</td>
						<td>101호</td>
						<td>박성래</td>
						<td>투표완료</td>
					</tr>
					<tr>
						<td>101동</td>
						<td>101호</td>
						<td>박성래</td>
						<td>투표완료</td>
					</tr>
					<tr>
						<td>101동</td>
						<td>101호</td>
						<td>민경현</td>
						<td></td>						
					</tr>
					<tr>
						<td>101동</td>
						<td>101호</td>
						<td>민경현</td>
						<td></td>	
					</tr>
					<tr>
						<td>101동</td>
						<td>101호</td>
						<td>박성래</td>
						<td>투표완료</td>
					</tr>
					<tr>
						<td>101동</td>
						<td>101호</td>
						<td>박성래</td>
						<td>투표완료</td>
					</tr>
					<tr>
						<td>101동</td>
						<td>101호</td>
						<td>박성래</td>
						<td>투표완료</td>
					</tr>
					<tr>
						<td>101동</td>
						<td>101호</td>
						<td>민경현</td>
						<td></td>	
					</tr>
					<tr>
						<td>101동</td>
						<td>101호</td>
						<td>민경현</td>
						<td></td>	
					</tr>
					<tr>
						<td>101동</td>
						<td>101호</td>
						<td>박성래</td>
						<td>투표완료</td>
					</tr><tr>
						<td>101동</td>
						<td>101호</td>
						<td>박성래</td>
						<td>투표완료</td>
					</tr>
				</tbody>
			</table>
			<br>
		</div>
		<!-- 문자발송인 설정 및 내용입력 div -->
		<div>
			<table style="width:95%">
				<tr>
					<td>
						<input type='checkbox'>
					</td>
					<td>
						<h4>미투표자에게</h4>
					</td>
					<td>
						<input type='checkbox'>
					</td>
					<td>
						<h4>모든 투표자에게</h4>
					</td>
					<td style="width:50%"></td>
					<td style="width:20%">
						<a class="btn btn-white" style="width:100%" id="">문자발송</a>
					</td>
				</tr>
				<tr>
					<td><br></td>
				</tr>
				<tr>
					<td colspan="6">
						<textarea class="form-control" placeholder="Textarea" rows="5" style="margin: 0px 1px 0px 0px; width:100%; height: 141px;"></textarea>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>
</body>
</html>