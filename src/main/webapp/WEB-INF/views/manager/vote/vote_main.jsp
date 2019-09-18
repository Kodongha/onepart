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
<div style="width:85%; margin:0 auto; background:white">
	<br>
	<!-- 현재 진행중인 투표 div -->
	<table style="width:95%; margin:0 auto;">
		<tr>
			<td>
				<div class="form-group">
                    <h4>현재 진행중인 투표</h4>
                </div>
			</td>
			<td></td>
			<td style="width:15%">
				<a class="btn btn-success" style="width:100%" id="superintendApply">선관위 선임 및 해임</a>
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
							<td>${ ingVoteList.endDt }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<br>
<br>
<div style="width:85%; margin:0 auto; background:white">
<br>
	<!-- 최근 완료된 투표 div -->
	<div>
		<table style="width:95%; margin:0 auto;">
		<tr>
			<td>
				<div class="form-group">
                    <h4>최근 완료된 투표</h4>
                </div>
			</td>
		</tr>
	</table>
		<div class="panel-body" style="background:white" align="center">
			<table class="table table-hover" style="text-align: center; width:100%">
				<thead>
                       <tr>
                           <th class="text-center">투표번호</th>
                           <th class="text-center">투표종류</th>
                           <th class="text-center">투표명</th>
                           <th class="text-center">투표현황</th>
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
							<td>${fn:substring(endVoteList.endDt,0,10)}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<br>
<script type="text/javascript">
	/* 선거 및 투표 상세보기 (투표기간) function */
	function detailAllTypeVote(voteSeq, voteKind, voteStatus) {
		var voteSeq = voteSeq;
		if(voteKind == '일반투표' && voteStatus == '투표기간'){
			$.ajax({
				url:"/onepart/manager/detailvote_general",
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
				url:"/onepart/manager/detailvote_candidate",
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

	$(function(){
		/* 선관위 선임 및 해임 페이지 이동 function */
		$("#superintendApply").click(function(){
			$.ajax({
				url:"/onepart/manager/delegationSuperintend",
				type:"get",
				dataType:"html",
				success:function(result){
					$("#content").html(result);
				}
			});
		});
	});
</script>
</body>
</html>