<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../vote/vote_include.jsp"></jsp:include>
<jsp:include page="../vote/vote_detail_include.jsp"></jsp:include>
<div>
					<table style="width:100%">
						<tr>
							<td style="width:80%"></td>
							<td style="width:10%"><h5>미완료</h5></td>
							<td style="width:10%"><a class="btn btn-white" style="width: 100%" id="realVote">투표하기</a></td>
						</tr>
					</table>
				</div>		
			</div>
			<hr>
			<br>
		</div>
			<!-- 후보정보 div -->
			<div style="width:95%; margin:0 auto">
				<h4>후보정보</h4>
				<h5>후보자의 이름을 클릭하면 상세정보를 확인할 수 있습니다.</h5>
				<br>
				<!-- 후보 개개인 정보 div -->
				<div>
					<table style="width:100%">
						<tr>
							<!-- 홀수기호 정보 div -->
							<td style="width:40%">
								<div>
									<table>
										<tr>
											<td rowspan="2">
												<img alt="" src="${contextPath }/resources/images/vote1.PNG" style="height:200px">
											</td>
											<td style="width:5%"></td>
											<td><a id="candidateDetail"><h4>기호1번 김은혜</h4></a></td>
										</tr>
										<tr>
											<td></td>
											<td>
												<h5>방지하는 소금이라 할지니 인생에 가치를 주는 방지하는 소금이라 할지니 인생에 가치를 주는 방지하는 소금이라 할지니 인생에 가치를 주는 방지하는 소금이라 할지니 인생에 가치를 주는 방지하는 소금이라 할지니 인생에 가치를 주는 방지하는 소금이라 할지니 인생에 가치를 주는 방지하는 소금이라 할지니 인생에 가치를 주는 방지하는 소금이라 할지니 인생에 가치를 주는 방지하는 소금이라 할지니 인생에 가치를 주는</h5>
											</td>
										</tr>
									</table>
								</div>
							</td>
							<td style="width:5%"></td>
							<!-- 짝수기호 정보 div -->
							<td style="width:40%">
								<div>
									<table>
										<tr>
											<td rowspan="2">
												<img alt="" src="${contextPath}/resources/images/vote2.PNG" style="height:200px">
											</td>
											<td style="width:5%"></td>
											<td><a><h4>기호2번 고동하</h4></a></td>
										</tr>
										<tr>
											<td></td>
											<td>
												<h5>방지하는 소금이라 할지니 인생에 가치를 주는 방지하는 소금이라 할지니 인생에 가치를 주는 방지하는 소금이라 할지니 인생에 가치를 주는 방지하는 소금이라 할지니 인생에 가치를 주는 방지하는 소금이라 할지니 인생에 가치를 주는 방지하는 소금이라 할지니 인생에 가치를 주는 방지하는 소금이라 할지니 인생에 가치를 주는 방지하는 소금이라 할지니 인생에 가치를 주는 방지하는 소금이라 할지니 인생에 가치를 주는</h5>
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
					</table>
					<br><br>
				</div>
			</div>
	<!-- end #content -->
</body>
</html>