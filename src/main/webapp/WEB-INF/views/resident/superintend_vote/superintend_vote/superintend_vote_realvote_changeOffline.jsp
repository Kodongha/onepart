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
<!-- 오프라인 투표모드 div -->
<div style="width:95%; margin:0 auto">
	<!-- title div -->
	<table style="width:95%">
		<tr>
			<td>
				<div class="form-group">
                    <h4>오프라인 투표하기</h4>                   
                </div>
			</td>
			<td></td>			
			<td style="width:15%">
			</td>
		</tr>
	</table>
	<!-- 오프라인 투표하기 div -->
	<div style="width:95%">
	<hr>
	<br>
	<table style="width:95%">
		<tr style="text-align:center;">
			<td>
				<h6 style="color:red; font-weight:bold;">
					현 투표는 1세대 1투표권으로 세대주 명으로만 투표가 가능하며<br>
					신분증, 운전면허증, 여권등 자신의 신분을 증명할 서류가 없을 시 투표권을 행사하실 수 없습니다.<br>
					또한, 거주하지 않는 세대에 대해서 투표권을 행사하고 적발될 시 선거규정상 벌금형에 처해질 수 있음을 공지합니다.
				</h6>
			</td>
		</tr>
	</table>
	<br><br><br><br><br><br>
	<table style="width:95%">
		<tr>
			<td style="width:25%">
				<input style="width:100%;" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
			</td>
			<td style="width:5%">
				<h6 style="font-weight:bold">&nbsp;&nbsp;&nbsp;동</h6>
			</td>
			<td style="width:25%">
				<input style="width:100%;" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
			</td>
			<td style="width:5%">
				<h6 style="font-weight:bold">&nbsp;&nbsp;&nbsp;호</h6>
			</td>
			<td style="width:5%">
				<h6 style="font-weight:bold">&nbsp;&nbsp;&nbsp;성함</h6>
			</td>
			<td style="width:25%">
				<input style="width:100%;" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
			</td>
		</tr>
	</table>
	<br><br>
	<table style="width:95%">
		<tr>
			<td>
				<table style="margin:0 auto">
					<tr>
						<td><h2>기호1번 김은혜</h2></td>
					</tr>
					<tr>
						<td><a class="btn btn-white" style="width: 100%" id="">해당후보 선택</a></td>
					</tr>
				</table>
			</td>
			<td>
				<table style="margin:0 auto">
					<tr>
						<td><h2>기호2번 고동하</h2></td>
					</tr>
					<tr>
						<td><a class="btn btn-white" style="width: 100%" id="">해당후보 선택</a></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<br><br><br><br><br><br>
	<table style="width:95%; margin:0 auto;">
		<tr>
			<td><a class="btn btn-white" style="width: 100%" id="">투표하기</a></td>
		</tr>
	</table>
	</div>
	<br><br>
</div>
</body>
</html>