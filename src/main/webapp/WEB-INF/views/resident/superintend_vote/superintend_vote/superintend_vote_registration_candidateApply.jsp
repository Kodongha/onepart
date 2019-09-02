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
<jsp:include page="../superintend_vote/superintend_vote_detail_include.jsp"></jsp:include>
<!-- 후보신청서 관리 div -->
<div style="width:95%; margin:0 auto">
	<!-- title div -->
	<table style="width:95%">
		<tr>
			<td>
				<div class="form-group">
                    <h4>후보신청서 관리</h4>                   
                </div>
			</td>
		</tr>
	</table>
	<!-- 신청서 리스트 div -->
	<div style="width:95%">
	<hr>
			<div class="panel-body">
						<table class="table table-hover" style="text-align: center;">
							<thead>
								<tr>
									<td style="font-weight: bold;">No</td>
									<td style="font-weight: bold;">제목</td>
									<td style="font-weight: bold;">후보구분</td>
									<td style="font-weight: bold;">작성자</td>
									<td style="font-weight: bold;">제출일</td>
								</tr>
							</thead>
							<tbody>
								<tr id="candApplyDetail">
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
								</tr>
								<tr>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
								</tr>
								<tr>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
								</tr>
								<tr>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
								</tr>
								<tr>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
								</tr>
							</tbody>
						</table>
					</div>
	</div>
</div>
</body>
</html>