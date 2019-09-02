<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 화면 ajax처리 script -->
<script type="text/javascript">
$(document).ready(function() {
	
	/* 후보신청서 제출 */
	$("#candidateApply").data("menu-url", "/onepart/resident/candidateApply");
	/* 선거 상세보기 */
	$("#election").data("menu-url", "/onepart/resident/election");
	/* 투표 상세보기 */
	$("#general").data("menu-url", "/onepart/resident/general");
	/* 선거 완료내역 상세보기 */
	$("#endElection").data("menu-url", "/onepart/resident/endElection");
	/* 투표 완료내역 상세보기 */
	$("#endGeneral").data("menu-url", "/onepart/resident/endGeneral");
	/* 후보신청서 제출 완료 */
	$("#applyCandidate").data("menu-url", "/onepart/resident/menuVote");
	/* 후보신청서 제출 취소 */
	$("#cancelCandidate").data("menu-url", "/onepart/resident/menuVote");
	/* 후보 정보 상세보기 */
	$("#candidateDetail").data("menu-url", "/onepart/resident/candidateDetail");
	/* 투표 진행하기 */
	$("#realVote").data("menu-url", "/onepart/resident/realVote");
	/* 투표 진행하기 */
	$("#realVote").data("menu-url", "/onepart/resident/realVote");
	/* 수정완료 버튼 */
	$("#modyfyGeneralOk").data("menu-url", "/onepart/resident/general");
	/* 투표내역 수정하기 */
	$("#modifyGeneral").data("menu-url", "/onepart/resident/modifyGeneral");
	
	/* 후보신청서 제출 */
	$("#candidateApply").click(function(){
		var voteUrl = $(this).data("menu-url");
		$.ajax({
			url:voteUrl,
			dataType:"html",
			success:function(result){
				$("#content").html(result);
			}
		});
	});
	/* 선거 상세보기 */
	$("#election").click(function(){
		var voteUrl = $(this).data("menu-url");
		$.ajax({
			url:voteUrl,
			dataType:"html",
			success:function(result){
				$("#content").html(result);
			}
		});
	});
	/* 투표 상세보기 */
	$("#general").click(function(){
		var voteUrl = $(this).data("menu-url");
		$.ajax({
			url:voteUrl,
			dataType:"html",
			success:function(result){
				$("#content").html(result);
			}
		});
	});
	/* 선거 완료내역 상세보기 */
	$("#endElection").click(function(){
		var voteUrl = $(this).data("menu-url");
		$.ajax({
			url:voteUrl,
			dataType:"html",
			success:function(result){
				$("#content").html(result);
			}
		});
	});
	/* 투표 완료내역 상세보기 */
	$("#endGeneral").click(function(){
		var voteUrl = $(this).data("menu-url");
		$.ajax({
			url:voteUrl,
			dataType:"html",
			success:function(result){
				$("#content").html(result);
			}
		});
	});
	/* 후보신청서 제출 완료 */
	$("#applyCandidate").click(function(){
		var voteUrl = $(this).data("menu-url");
		$.ajax({
			url:voteUrl,
			dataType:"html",
			success:function(result){
				$("#content").html(result);
			}
		});
	});
	
	/* 후보신청서 제출 취소 */
	$("#cancelCandidate").click(function(){
		var voteUrl = $(this).data("menu-url");
		$.ajax({
			url:voteUrl,
			dataType:"html",
			success:function(result){
				$("#content").html(result);
			}
		});
	});
	/* 후보 정보 상세보기 */
	$("#candidateDetail").click(function(){
		var voteUrl = $(this).data("menu-url");
		$.ajax({
			url:voteUrl,
			dataType:"html",
			success:function(result){
				$("#content").html(result);
			}
		});
	});
	/* 투표 진행하기 */
	$("#realVote").click(function(){
		var voteUrl = $(this).data("menu-url");
		$.ajax({
			url:voteUrl,
			dataType:"html",
			success:function(result){
				$("#content").html(result);
			}
		});
	});
	/* 투표 진행하기 */
	$("#realVote").click(function(){
		var voteUrl = $(this).data("menu-url");
		$.ajax({
			url:voteUrl,
			dataType:"html",
			success:function(result){
				$("#content").html(result);
			}
		});
	});
	/* 수정완료 버튼 */
	$("#modyfyGeneralOk").click(function(){
		var voteUrl = $(this).data("menu-url");
		$.ajax({
			url:voteUrl,
			dataType:"html",
			success:function(result){
				$("#content").html(result);
			}
		});
	});
	/* 투표내역 수정하기 */
	$("#modifyGeneral").click(function(){
		var voteUrl = $(this).data("menu-url");
		$.ajax({
			url:voteUrl,
			dataType:"html",
			success:function(result){
				$("#content").html(result);
			}
		});
	});
});
</script>
<!-- 타이틀 -->
<div style="width:95%; margin:0 auto">
	<h2>우리아파트 투표</h2>
	<table style="width:100%">
		<tr>
			<td><h5>입주민 여러분들의 활발한 투표가 우리아파트를 더 성장 시킵니다.</h5></td>
			<td style="width:20%"><a class="btn btn-white" style="width: 100%" id="candidateApply">후보 신청서 제출</a></td>
		</tr>
	</table>
	<br><br><br>
</div>
</body>
</html>