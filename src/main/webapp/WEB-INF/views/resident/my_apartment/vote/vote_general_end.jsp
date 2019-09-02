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
				<!-- 투표결과 div -->
				<div style="width:95%; margin:0 auto;">
					<h4>투표결과</h4>
					<br>
					<div>
						<table style="width:100%">
							<tr>
								<td colspan="2"><h3>후보1. 지용이네 페인트</h3></td>
							</tr>
							<tr>
								<td style="width:37.5%"><div style="background:skyblue; height:20px; width:100%"></div></td>
								<td>&nbsp;&nbsp;&nbsp;25%</td>
							</tr>
							<tr>
								<td style="height:20px" colspan="2"></td>
							</tr>
						</table>
						<table style="width:100%">
							<tr>
								<td colspan="2"><h3>후보2. Vi-fi 페인트공장</h3></td>
							</tr>
							<tr>
								<td style="width:67.5%"><div style="background:skyblue; height:20px; width:100%"></div></td>
								<td>&nbsp;&nbsp;&nbsp;45%</td>
							</tr>
							<tr>
								<td style="height:20px" colspan="2"></td>
							</tr>
						</table>
						<table style="width:100%">
							<tr>
								<td colspan="2"><h3>후보3. KH 페인트</h3></td>
							</tr>
							<tr>
								<td style="width:45%"><div style="background:skyblue; height:20px; width:100%"></div></td>
								<td>&nbsp;&nbsp;&nbsp;30%</td>
							</tr>
							<tr>
								<td style="height:20px" colspan="2"></td>
							</tr>
						</table>
					</div>
					
					<br>
					<br>
				</div>
			</div>
		</div>
		<!-- end #content -->
</body>
</html>