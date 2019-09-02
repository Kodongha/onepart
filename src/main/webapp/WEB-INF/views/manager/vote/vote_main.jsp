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
<div style="width:95%; margin:0 auto">
<div class="panel-body">
	<!-- 타이틀 및 버튼 div -->
	<table style="width:100%">
		<tr>
			<td><h4>진행중인 투표</h4></td>
			<td></td>
			<td style="width:20%"><a id="delegationSuperintend" class="btn btn-white" style="width:100%">선관위 선임 및 해임</a></td>
		</tr>
	</table>
	<hr>
		<table class="table table-hover" style="text-align: center;">
			<thead>
				<tr>
					<td style="font-weight: bold;">투표번호</td>
					<td style="font-weight: bold;">투표종류</td>
					<td style="font-weight: bold;">투표 명</td>
					<td style="font-weight: bold;">현황</td>
					<td style="font-weight: bold;">종료날짜</td>
				</tr>
			</thead>
			<tbody>
				<tr id="detailvote_candidate">
					<td>vote</td>
					<td>vote</td>
					<td>vote</td>
					<td>vote</td>
					<td>vote</td>
				</tr>
				<tr id="detailvote_general">
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
	<!-- 선거결과보기 및 정렬 div -->
	<br> <br>
	<h4>최근 완료 된 투표</h4>
	<hr>
	<!-- 선거결과보기 표 div -->
	<div class="panel-body">
		<table class="table table-hover" style="text-align: center;">
			<thead>
				<tr>
					<td style="font-weight: bold;">투표번호</td>
					<td style="font-weight: bold;">투표종류</td>
					<td style="font-weight: bold;">투표 명</td>
					<td style="font-weight: bold;">현황</td>
					<td style="font-weight: bold;">종료날짜</td>
				</tr>
			</thead>
			<tbody>
				<tr id="endvote_candidate">
					<td>vote</td>
					<td>vote</td>
					<td>vote</td>
					<td>vote</td>
					<td>vote</td>
				</tr>
				<tr id="endvote_general">
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
</body>
</html>