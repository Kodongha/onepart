<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function(){
		$('#minutesChangeBtn').click(function(){
			var $minutesTextarea = $('<textarea>', {cols:'80', rows:'5', id:'meetingMinutes'});
			var $minutesEnrollBtn = $('<a>', {class:'btn btn-block btn-primary', id:'minutesEnrollBtn', text:'저장하기', style:'width:503px;'});

			$(this).before($minutesTextarea);
			$(this).before($minutesEnrollBtn);
			$(this).remove();
		});

		$("#deleteBtn").click(function(){

			var residentsMeetingSeq = $('#residentsMeetingSeq').val();
			console.log("residentsMeetingSeq : " + residentsMeetingSeq);

			$.ajax({
				url : 'removeResidentMeeting',
				type : 'post',
				data : {residentsMeetingSeq : residentsMeetingSeq},
				success : function(data){
					console.log("succ");
					$('#content').html(data);
				}
			});
		});

		$("#backBtn").click(function(){
			$.ajax({
				url : 'menuMeetingInfo',
				type : 'post',
				success : function(data){
					console.log("succ");
					$('#content').html(data);
				}
			});
		});

	});


	$(function() {
		  navigator.getUserMedia = navigator.getUserMedia ||
		  	navigator.webkitGetUserMedia || navigator.mozGetUserMedia;

		  /**
		   * getUserMedia 성공
		   * @param stream
		   */
		  function success(stream) {
		    console.log('success', arguments);

		    // 비디오 테그에 stream 바인딩
		    document.querySelector('video').srcObject = stream;

		    // do something...
		  }

		  /**
		   * getUserMedia 실패
		   * @param error
		   */
		  function error(error) {
		    console.log('error', arguments);

		    alert('카메라와 마이크를 허용해주세요');
		  }

		  /**
		   * 이벤트 바인딩
		   */
		  $('button').click(function() {
		    navigator.getUserMedia({ audio: true, video: true }, success, error);
		  });
		});


</script>
</head>
<body>
	<div class="col-md-12 bg-white">
		<h3>입주민 대표회의</h3>
		<hr>
		<div class="col-md-12 p-l-20 p-r-20">
			<div class="col-md-6">
				<table class="table">
					<tr>
						<td>회의 명(상태/일자)</td>
						<td>${responseResidentMeetingVO.meetingNm }</td>
					</tr>
					<tr>
						<td>회의 주제</td>
						<td>${ responseResidentMeetingVO.meetingTopic }</td>
					</tr>
					<tr>
						<td>회의 소개</td>
						<td>${ responseResidentMeetingVO.meetingIntro }</td>
					</tr>
					<tr>
						<td>회의 장소</td>
						<td>${ responseResidentMeetingVO.meetingPlace }</td>
					</tr>
					<tr>
						<td>회의록</td>
						<td>
							<textarea cols="70" rows="5">${ responseResidentMeetingVO.meetingMinutes }</textarea>
						</td>
					</tr>
					<tr>
						<td>등록 일자</td>
						<td>${ responseResidentMeetingVO.meetingEnrollDt }</td>
					</tr>
				</table>
			</div>

			<div class="col-md-6">
				<c:if test=""></c:if>
				<video autoplay style="height: 300px; width: 100%;"></video>
				<video id="remoteVideo" autoplay style="height: 300px; width: 100%;"></video>
			</div>
			<button>getUserMedia()</button>
		</div>

		<div class="col-md-12 p-0">
			<div class="col-md-4 p-l-0">
				<a class="btn btn-block btn-danger" id="deleteBtn">삭제</a>
			</div>
			<div class="col-md-4">
				<a class="btn btn-block btn-primary" id="modifyBtn">수정</a>
			</div>
			<div class="col-md-4 p-r-0">
				<a class="btn btn-block btn-success" id="backBtn">이전 페이지</a>
			</div>
			<input type="hidden" id="residentsMeetingSeq" name="residentsMeetingSeq" value="${responseResidentMeetingVO.residentsMeetingSeq}">

		</div>


	</div>
</body>
</html>