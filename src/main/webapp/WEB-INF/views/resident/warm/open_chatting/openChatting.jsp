<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html>
<!--<![endif]-->
<head>
<style>
.format { display:none !important; }
.content {
	margin-left: 110px !important;
}

.alert.alert-success {
	background: #00acac !important;
	color: black !important;
	height: 66px !important;
	padding: 15px !important;
	margin: 0 25%;
	font-size: 1.3em !important;
	margin-bottom: 10px !important;
	width: 50%;
	display: inline-block;
}

.alert.alert-success:hover {
	background: #008a8a!important;
	-webkit-transition: background 0.2s;
}

.content {
	min-width: 800px;
	padding-bottom: 0px !important;
}

.content .nav-tabs {
	background: #00acac !important;
}

/* page-header */
.content>table.header button {
	margin-left: 20px;
	margin-bottom: 20px;
	    background: #00acac;
    border-color: #00acac;
}
.content>table.header button:hover {

	    background: #008a8a;
    border-color: #008a8a;
}

/* nav-tabs */
.content>#ioniconsTab {
	height: 40px;
}

.content>#ioniconsTab li.search-li {
	float: right;
}

.content>#ioniconsTab li.search-li form {
	margin-top: 5px;
}

.content>#ioniconsTab li.search-li form button {
	margin-top: -6px;
}

/* tab-content */
.content>.tab-content>div>div {
	overflow-y: auto;
	width: auto;
	height: 400px;
	text-align: center;
}

.content>.tab-content>div>div span {
	display: inline-block;
	left: 45%;
	position: relative;
}

/* custom-modal */
.custom-modal {
	transition-property: opacity;
	transition-duration: 0.5s;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	text-align: center;
	background-color: rgb(0, 0, 0, 0.7);
}

.custom-modal.modal-hide {
	opacity: 0;
	z-index: -10;
	transition-property: opacity;
	transition-duration: 0.5s;
}

.custom-modal>div {
	display: inline-block;
	width: 500px;
	margin-top: 10%;
	text-align: left;
	background-color: #d9e0e7;
}

.createRoomDiv .form-group>label {
	width: 100%;
	padding: 0 15px;
	text-align: left;
}

.createRoomDiv .form-group>div {
	width: 100%;
	padding: 0 15px;
}

.createRoomDiv .form-group>div.buttons {
	text-align: right;
}

.createRoomDiv .form-group>div.buttons .btn-cancel {
	background-color: #CCC;
}

.createRoomDiv .form-group>div.buttons .btn-cancel:hover {
	background-color: #BBB;
}
.roomDiv { cursor: pointer; }
</style>
</head>
<body>
	<!-- begin #content -->
	<div id="content" class="content">

		<!-- begin page-header -->
		<table class="header">
			<tr>
				<td>
					<h1 class="page-header">오픈채팅</h1>
				</td>
				<td>
					<button id="add-with-callbacks"
						class="btn btn-sm btn-warning modal-show"
						data-modal-id="createRoomDiv">방만들기</button>
				</td>
			</tr>
		</table>

		<!-- end page-header -->

		<!-- begin nav-tabs -->
		<ul id="ioniconsTab" class="nav nav-tabs">
			<li class="active"><a href="#leftTab" data-toggle="tab"> <span
					class="hidden-xs m-l-3">모든 채팅방<span
						class="badge badge-inverse m-l-3" id="allroom"></span></span>
			</a></li>
			<li><a href="#rightTab" data-toggle="tab"> <span
					class="hidden-xs m-l-3">참여중인 채팅방<span
						class="badge badge-inverse m-l-3" id="myroom"></span></span>
			</a></li>
			<li class="search-li">
				<form class="navbar-form full-width">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="채팅방 검색" />
						<button type="submit" class="btn btn-search">
							<span class="fa fa-search"></span>
						</button>
					</div>
				</form>
			</li>
		</ul>
		<!-- end nav-tabs -->

		<!-- begin tab-content -->
		<div id="ioniconsTabContent" class="tab-content" align="center">
			<!-- begin tab-pane -->
			<div class="tab-pane fade in active" id="leftTab">
				<div id="roomListLeftTab">
					<!-- 모든 채팅방 동적 생성 -->

				</div>

			</div>
			<!-- end tab-pane -->
			<!-- begin tab-pane -->
			<div class="tab-pane fade" id="rightTab">
				<div id="roomListRightTab">

				</div>
			</div>
			<!-- end tab-pane -->

		</div>
		<!-- end tab-content -->

		<div class="roomDiv LeftTab format alert alert-success fade in m-b-15">
			<strong class="roomNm"></strong>
			<br>
			<span class="currHead"></span><span>/</span><span class="maxHead"></span>

		</div>

		<div class="roomDiv RightTab format alert alert-success fade in m-b-15">
			<strong class="roomNm"></strong>
			<br>
			<span class="currHead"></span><span>/</span><span class="maxHead"></span>
		</div>

	</div>
	<!-- end #content -->
	<!-- end page container -->

	<!-- createRoom -->
	<div id="createRoomDiv" class="createRoomDiv custom-modal modal-hide">
		<div class="panel-body">
			<form id="createRoomForm" class="form-horizontal">
				<div class="form-group">
					<label class="control-label">방 제목</label>
					<div>
						<input id="openChatRoomNm" type="text" class="form-control"
							placeholder="방 제목을 입력하세요">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label">비밀번호 생성</label>
					<div class="input-group">
						<span class="input-group-addon"> <input type="checkbox" id="passwordMake">
						</span> <input id="openChatPwd" type="text" class="form-control"
							placeholder="비밀번호를 입력하세요.">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label">참여 인원</label>
					<div>
						<select id="openChatMaxHead" class="form-control">
							<c:forEach var="i" begin="2" end="50">
								<option value="${i}"><c:out value="${i}" /></option>
							</c:forEach>
						</select>
					</div>
				</div>

				<div class="form-group">
					<div class="buttons">
						<input type="button" class="btn btn-sm btn-cancel modal-hide-btn" value="취소"> <input type="submit"
							class="btn btn-sm btn-success" value="방생성">
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
<script>


	$("#passwordMake").change(function(){
		if($("#passwordMake").prop("checked")){
			$("#openChatPwd").attr("disabled", false);
		}else{
			$("#openChatPwd").attr("disabled", true);
		}
	});

</script>
<script>

	// 모달 창
	const CustomModal = (function() {
		function init() {
			displayInit();

		}

		function displayInit() {
			$('.custom-modal').addClass('modal-hide');
			$(document).on('click', '.modal-hide-btn', function() {
				$('.custom-modal').addClass('modal-hide');

			});
			$(document).on('click', '.modal-show', function() {
				const modalId = $(this).data('modal-id');
				$('#' + modalId).removeClass('modal-hide');
				$('#openChatRoomNm').val("");
				$('#openChatPwd').val("");
				$("#passwordMake").prop("checked", false)
				$("#openChatPwd").attr("disabled", true);
			});
		}
		return {
			'init' : init
		};
	})();

	// 방 만들기
	const OpenChatting = (function () {

		function init() {
			// 방 목록 불러오기
			getRoomListAll();

			// 방 참가
			$(document).on('click', '.roomDiv', function () {
				const openChatSeq = $(this).data('open-chat-seq');

				$.ajax({
					url : '/onepart/resident/maxCheck',
					type : 'get',
					dataType: 'json',
					data : {'openChatSeq': openChatSeq},
					success : function(data) {
						console.log(data.loginResident);
					if(data.loginResident != null){
							if(data.check){
								 let url = "${contextPath}/resident/menuOpenChatRoom/"+openChatSeq;
									window.open(url, "채팅방"+openChatSeq, "width=450px; height=600px;");
							}else if(data.OpenChatVO.openChatMaxHead > data.OpenChatVO.openChatCurrHead){
								 let url = "${contextPath}/resident/menuOpenChatRoom/"+openChatSeq;
								window.open(url, "채팅방"+openChatSeq, "width=450px; height=600px;");
							}else{
								alert("인원수 제한으로 채팅입장이 제한됩니다.");
							}
						}else{
							alert("로그인 후 이용해주세요.");
						}
					},error : function(err) {

					}
				});
			});


			// 방 만들기 처리
			$(document).on('submit', '#createRoomForm', function (e) {
				e.preventDefault();

				const data = {
					openChatRoomNm	: $('#openChatRoomNm').val(),					// 방제목
					openChatPwd		: $('#openChatPwd').val(),						// 비밀번호
					openChatMaxHead	: $('#openChatMaxHead option:selected').val(),	// 최대인원
				};

				$.ajax({
					url : '/onepart/resident/createChatRoom',
					type : 'post',
					data : data,
					dataType: 'json',
					success : function(data) {
						if(data.result == "failure") {
							alert(data.msg);
						}else {
							getRoomListAll();
							$('.modal-hide-btn').trigger('click'); // 모달창 닫기
						}
					},
					error : function(err) {
						alert('방 생성에 실패했습니다.');

					}
				});
			});
		}

		function getRoomListAll() {
			$.ajax({
				url : '/onepart/resident/getRoomListAll',
				type : 'get',
				data : {},
				dataType: 'json',
				success : function(data) {
					if(data.result == "success") {
						let roomList = data.openChatRoomList;
						let myRoomList = data.openChatMyRoomList;
						drawRoomList(roomList);
						drawMyRoomList(myRoomList)
						$("#allroom").text(data.countChatRoom);
						$("#myroom").text(data.countMyChatRoom);
						console.log(data.countMyChatRoom);
					}
					// 방 목록 불러오기
					OpenChatRoomListTimeoutManage = setTimeout(function(){
						if(OpenChatRoomListTimeoutEnable)
							getRoomListAll();
					}, 5000);
				},
				error : function(err) {
					alert('방 목록 가져오기에 실패했습니다.');
				}
			});
		}

		function drawRoomList(roomList) {
			let roomsDiv = $('#roomListLeftTab');
			roomsDiv.html('');

			roomList.forEach(roomInfo => {
				let roomDivFormat = $('.roomDiv.LeftTab.format').clone();
				roomDivFormat.removeClass('format');
				roomDivFormat.show();

				roomDivFormat.data('open-chat-seq', roomInfo.openChatSeq);
				roomDivFormat.find('.roomNm').text(roomInfo.openChatRoomNm);
				roomDivFormat.find('.currHead').text(roomInfo.openChatCurrHead);
				roomDivFormat.find('.maxHead').text(roomInfo.openChatMaxHead);

				roomsDiv.append(roomDivFormat);
			});
		}

		function drawMyRoomList(myRoomList) {
			let roomsDiv = $('#roomListRightTab');
			roomsDiv.html('');

			myRoomList.forEach(roomInfo => {
				let roomDivFormat = $('.roomDiv.RightTab.format').clone();
				roomDivFormat.removeClass('format');
				roomDivFormat.show();

				roomDivFormat.data('open-chat-seq', roomInfo.openChatSeq);
				roomDivFormat.find('.roomNm').text(roomInfo.openChatRoomNm);
				roomDivFormat.find('.currHead').text(roomInfo.openChatCurrHead);
				roomDivFormat.find('.maxHead').text(roomInfo.openChatMaxHead);

				roomsDiv.append(roomDivFormat);
			});
		}

		return {
			'init' : init,
			'getRoomListAll' : getRoomListAll
		};
	})();

	$(function() {
		CustomModal.init();
		OpenChatting.init();
		$("#openChatPwd").attr("disabled", true);
	});
</script>

</html>
