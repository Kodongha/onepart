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
						<tr onclick="detailAllTypeVote(${ingVoteList.voteSeq}, '${ ingVoteList.voteKind }', '${ ingVoteList.voteStatus }')" data-toggle="modal">
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
						<tr onclick="detailAllTypeVote(${noVoteList.voteSeq}, '${ noVoteList.voteKind }', '${ noVoteList.voteStatus }')" data-toggle="modal">
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
							<td>${ endVoteList.voteStatus }</td>
							<td>${ endVoteList.userStatus }</td>
							<td>${fn:substring(endVoteList.realEndDt,0,10)}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<!-- 상세보기 불가 안내 modal -->
<div class="modal fade" id="modal-dialog_test">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">★ 안 내 ★</h4>
			</div>
			<div class="modal-body">
				<h5>
					현재 선택하신 선거는 상세보기가 불가능합니다.<br>
				</h5>
				<h6>
					투표가 진행중인 선거에 한에서 상세보기를 하실 수 있습니다.
				</h6>
			</div>
			<div class="modal-footer">
				<a href="javascript:;" class="btn btn-sm btn-danger" data-dismiss="modal">닫기</a>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	/* 선거 및 투표 상세보기 (투표기간) function */
	function detailAllTypeVote(voteSeq, voteKind, voteStatus) {
		var voteSeq = voteSeq;
		if(voteKind == '일반투표' && voteStatus == '투표기간'){
			$.ajax({
				url:"/onepart/resident/general",
				type:"get",
				dataType:"html",
				data:{
						voteSeq:voteSeq,
						voteKind:voteKind,
						voteStatus:voteStatus
					},
				success:function(result){
					$("#content").html(result);
				}
			});
			console.log("a");
		}else if(voteKind == '일반투표' && voteStatus == '완료'){

		}else if(voteKind == '선거' && voteStatus == '투표기간'){
			$.ajax({
				url:"/onepart/resident/election",
				type:"get",
				dataType:"html",
				data:{
						voteSeq:voteSeq,
						voteKind:voteKind,
						voteStatus:voteStatus
					},
				success:function(result){
					$("#content").html(result);
				}
			});
		}else if(voteKind == '선거' && voteStatus == '완료'){
			console.log("d");
		}else{
			alert("현재 선택하신 선거는 상세보기가 불가능합니다. \n투표가 진행중인 선거만 상세보기를 하실 수 있습니다.")
		}
	}
</script>
</body>
</html>