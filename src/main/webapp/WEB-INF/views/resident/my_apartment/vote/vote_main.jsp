<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../vote/vote_include.jsp"></jsp:include>
<!-- 전체 div -->
<div style="width:85%; margin:0 auto">
	<!-- 현재 진행중인 투표 div -->
	<table style="width:100%">
		<tr>
			<td>
				<div class="form-group">
                    <h4>현재 진행중인 투표</h4>
                </div>
			</td>
			<td></td>
			<td style="width:15%">
				<a class="btn btn-success" style="width:100%" id="candidateApply">후보 신청서 제출</a>
			</td>
		</tr>
	</table>
	<div>
	<div class="panel-body" style="background:white" align="center">
			<table class="table table-hover" style="text-align: center; width:100%">
				<thead>
                       <tr>
                           <th class="text-center">투표번호</th>
                           <th class="text-center">투표종류</th>
                           <th class="text-center">투표명</th>
                           <th class="text-center">투표현황</th>
                           <th class="text-center">내 현황</th>
                           <th class="text-center">투표종료날짜</th>
                       </tr>
                   </thead>
				<tbody>
					<c:forEach var="ingVoteList" items="${ ingVoteList }">
						<tr onclick="detailAllTypeVote(${ingVoteList.voteSeq}, '${ ingVoteList.voteKind }', '${ ingVoteList.voteStatus }')">
							<td>${ ingVoteList.voteSeq }</td>
							<td>${ ingVoteList.voteKind }</td>
							<td>${ ingVoteList.voteNm }</td>
							<td>${ ingVoteList.voteStatus }</td>
							<td>${ ingVoteList.userStatus }</td>
							<td>${ ingVoteList.endDt }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<br>
	<br>
	<!-- 참여하지 않은 투표 div -->
	<div>
	<h4>참여하지 않은 투표</h4>
	<div class="panel-body" style="background:white" align="center">
			<table class="table table-hover" style="text-align: center; width:100%">
				<thead>
                       <tr>
                           <th class="text-center">투표번호</th>
                           <th class="text-center">투표종류</th>
                           <th class="text-center">투표명</th>
                           <th class="text-center">투표현황</th>
                           <th class="text-center">내 현황</th>
                           <th class="text-center">투표종료날짜</th>
                       </tr>
                   </thead>
				<tbody>
					<c:forEach var="noVoteList" items="${ noVoteList }">
						<tr onclick="detailAllTypeVote(${noVoteList.voteSeq}, '${ noVoteList.voteKind }', '${ noVoteList.voteStatus }')">
							<td>${ noVoteList.voteSeq }</td>
							<td>${ noVoteList.voteKind }</td>
							<td>${ noVoteList.voteNm }</td>
							<td>${ noVoteList.voteStatus }</td>
							<td>${ noVoteList.userStatus }</td>
							<td>${ noVoteList.endDt }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<br>
	<br>
	<!-- 최근 완료된 투표 div -->
	<div>
	<h4>최근 완료된 투표</h4>
	<h5>일주일 이내에 완료된 투표 내역입니다.</h5>
	<div class="panel-body" style="background:white" align="center">
			<table class="table table-hover" style="text-align: center; width:100%">
				<thead>
                       <tr>
                           <th class="text-center">투표번호</th>
                           <th class="text-center">투표종류</th>
                           <th class="text-center">투표명</th>
                           <th class="text-center">투표현황</th>
                           <th class="text-center">내 현황</th>
                           <th class="text-center">투표종료날짜</th>
                       </tr>
                   </thead>
				<tbody>
					<c:forEach var="endVoteList" items="${ endVoteList }">
						<tr onclick="detailAllTypeVote(${endVoteList.voteSeq}, '${ endVoteList.voteKind }', '${ endVoteList.voteStatus }')">
							<td>${ endVoteList.voteSeq }</td>
							<td>${ endVoteList.voteKind }</td>
							<td>${ endVoteList.voteNm }</td>
							<td>완료</td>
							<td>${ endVoteList.userStatus }</td>
							<td>${fn:substring(endVoteList.realEndDt,0,10)}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>