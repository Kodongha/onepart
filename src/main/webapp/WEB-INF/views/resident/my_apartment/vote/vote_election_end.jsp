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
							<td style="width:10%"><h5>완료</h5></td>
							<td style="width:10%"></td>
						</tr>
					</table>
				</div>		
			</div>
			<hr>
			<br>
		</div>
		<!-- 후보 상세정보 div -->
			<div style="width:95%; margin:0 auto">
				<h4>투표결과</h4>
					<div>
						<table style="width:90%">
							<tr>
								<td style="width:50%">
									<!-- 짝수번 후보 정보 -->
									<div>
										<table style="width:100%">
											<tr>
												<td style="width:40%"><h3>기호1번 김은혜</h3></td>
												<td>당선</td>
												<td style="width:50%"></td>
											</tr>
											<tr>
												<td colspan="3"><div style="background:skyblue; height:20px; width:87%"></div></td>
											</tr>
											<tr>
												<td><p>58%</p></td>
												<td></td>
												<td></td>
											</tr>
											<tr style="height:20px;">
												<td></td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td>선거 총 참여율 : 68.3%</td>
												<td></td>
												<td></td>
											</tr>
										</table>
									</div>
								</td>
								<td style="width:5%"></td>
								<td>
									<!-- 홀수번 후보 정보 -->
									<div>
										<table style="width:100%; text-align:right;">
											<tr>
												<td></td>
												<td style=""><h3>기호2번 고동하</h3></td>
												<td></td>
											</tr>
											<tr align="right">
												<td colspan="3"><div style="background:skyblue; height:20px; width:60%"></div></td>
											</tr>
											<tr>
												<td></td>
												<td><p>40%</p></td>
												<td></td>
											</tr>
											<tr style="height:20px;">
												<td></td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td></td>
												<td>무효표 : 2%</td>
												<td></td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
						</table>
					</div>
				<br><br><br><br>
				<p>
					공동주택 선거관리위원회가 주최한 제 28회 입대의 선거 결과를 바탕으로 총 68.3% 입주민 분들이 참여하여 주셨으며, <br>기호1번 김은혜 후보가 총 득표율 58%로 당선되었음을 공고합니다 . 입주민 분들의 참여 감사 드립니다.
					<br><br>
					선거관리위원장 김영준 
				</p>
				<br><br>
			</div>
		<!-- end #content -->
</body>
</html>