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
	<!-- 전체 div -->
	<div style="width:95%; margin:0 auto">
		<!-- 현재 진행중인 투표 div -->
		<div>
		<h4>현재 진행중인 투표</h4>
		<div class="panel-body">
				<table class="table table-hover" style="background:white; text-align: center;">
					<thead>
                        <tr>
                            <th class="text-center">투표번호</th>
                            <th class="text-center">투표종류</th>
                            <th class="text-center">투표명</th>
                            <th class="text-center">투표종료날짜</th>
                            <th class="text-center">내 현황</th>
                        </tr>
                    </thead>
					<tbody>
						<tr id="election">
							<td>vote</td>
							<td>vote</td>
							<td>vote</td>
							<td>vote</td>
							<td>vote</td>
						</tr>
						<tr id="general">
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
		<br>
		<hr>
		<br>
		<!-- 참여하지 않은 투표 div -->
		<div>
		<h4>참여하지 않은 투표</h4>
		<div class="panel-body">
				<table class="table table-hover" style="background:white; text-align: center;">
					<thead>
                        <tr>
                            <th class="text-center">투표번호</th>
                            <th class="text-center">투표종류</th>
                            <th class="text-center">투표명</th>
                            <th class="text-center">투표종료날짜</th>
                            <th class="text-center">내 현황</th>
                        </tr>
                    </thead>
					<tbody>
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
		<br>
		<hr>
		<br>
		<!-- 최근 완료된 투표 div -->
		<div>
		<h4>최근 완료된 투표</h4>
		<h5>일주일 이내에 완료된 투표 내역입니다.</h5>
		<div class="panel-body">
				<table class="table table-hover" style="background:white; text-align: center;">
					<thead>
                        <tr>
                            <th class="text-center">투표번호</th>
                            <th class="text-center">투표종류</th>
                            <th class="text-center">투표명</th>
                            <th class="text-center">투표종료날짜</th>
                            <th class="text-center">내 현황</th>
                        </tr>
                    </thead>
					<tbody>
						<tr id="endElection">
							<td>vote</td>
							<td>vote</td>
							<td>vote</td>
							<td>vote</td>
							<td>vote</td>
						</tr>
						<tr id="endGeneral">
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