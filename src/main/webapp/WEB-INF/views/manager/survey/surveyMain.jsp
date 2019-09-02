<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${contextPath}/resources/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet" />
<script type="text/javascript" src="${ contextPath }/resources/js/daterangepicker.js"></script>
<script type="text/javascript" src="${ contextPath }/resources/js/moment.min.js"></script>
<link rel="stylesheet" type="text/css" href="${ contextPath }/resources/css/daterangepicker.css" />
<style type="text/css">
	#buttonArea{
		margin-top: 2%;
	}

	#tableArea{
		background:white;
	}

	tbody > tr:hover{
		background:#00acac;
	}

	#pageingBtnArea {
		text-align: center;
	}

	#writeSurvey {
		margin-bottom: 2%;
	}

	textarea {
		resize: none;
	}

	#surveySimpleIntroArea {
		padding-bottom: 5%;
	}

</style>
<script type="text/javascript">
	$(function(){

		// 리셋버튼 클릭시 입력 폼 초기화
		$('#resetBtn').click(function(){
			$('#surveyTitle').val('');
			$('#defaultOption').attr("selected", "selected");
		});


		// 데이터 레인지 피커 사용
		$('input[name="surveyPeriod"]').daterangepicker({
		   opens: 'left'
		}, function(start, end, label) {
		   console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
		});

		// surveyType 변경 시 폼 변경
		$('input[name="surveyType"]').changed(function(){
			console.log("change");
			$('.modal-body').append("abc");

		});

	});



</script>

</head>
<body>


	<!-- begin row -->
	<div class="row">
	    <div class="col-md-1"></div>
	    <div class="col-md-10">
			<h3>설문조사</h3>
			<br>
			<div class="tab-content">
				<div class="tab-pane fade active in" id="default-tab-1">
					<h3 class="m-t-10"><i class="fa fa-search"></i> 검색 </h3>
					<br>

					<div class="col-md-6">
						<h4 class="m-t-10">제목</h4>
						<input type="text" class="form-control" placeholder="제목을 입력해주세요." id="surveyTitle" name="surveyTitle">
					</div>

					<div class="col-md-6">
						<h4 class="m-t-10">상태</h4>
						<select class="form-control" id="surveyStatus" name="surveyStatus">
							<option selected="selected" disabled="disabled" id="defaultOption">상태를 입력하세요.</option>
							<option value="1">진행 중</option>
							<option value="2">진행 예정</option>
							<option value="3">종료</option>
						</select>
					</div>

					<br clear="all">

					<div id="buttonArea">
						<p class="text-right m-b-0">
							<a href="javascript:;" class="btn btn-white m-r-5" id="resetBtn">초기화</a>
							<a href="javascript:;" class="btn btn-primary">검색</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-1"></div>
   	</div>

	<div class="col-md-1"></div>

	<div class="col-md-10" id="tableArea">
		<div class="panel-body">
			<table class="table">
				<thead>
					<tr>
						<th>제목</th>
						<th>상태</th>
						<th>설문 타입</th>
						<th>참여율</th>
						<th>종료 날짜</th>
						<th>비고</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Nicky Almera</td>
						<td>nicky@hotmail.com</td>
						<td>nicky@hotmail.com</td>
						<td>nicky@hotmail.com</td>
						<td>nicky@hotmail.com</td>
					</tr>
					<tr>
						<td>1</td>
						<td>Nicky Almera</td>
						<td>nicky@hotmail.com</td>
						<td>nicky@hotmail.com</td>
						<td>nicky@hotmail.com</td>
						<td>nicky@hotmail.com</td>
					</tr>
					<tr>
						<td>1</td>
						<td>Nicky Almera</td>
						<td>nicky@hotmail.com</td>
						<td>nicky@hotmail.com</td>
						<td>nicky@hotmail.com</td>
						<td>nicky@hotmail.com</td>
					</tr>
				</tbody>
			</table>

			<div id="pageingBtnArea">
				<ul class="pagination m-t-0 m-b-10">
					<li class="disabled"><a href="javascript:;">«</a></li>
					<li class="active"><a href="javascript:;">1</a></li>
					<li><a href="javascript:;">2</a></li>
					<li><a href="javascript:;">3</a></li>
					<li><a href="javascript:;">4</a></li>
					<li><a href="javascript:;">5</a></li>
					<li><a href="javascript:;">»</a></li>
				</ul>
			</div>

			<div id="etcBtnArea">
				<a href="#modal-message" class="btn btn-info btn-block" data-toggle="modal">설문조사 만들기</a>
				<a href="javascript:;" class="btn btn-danger btn-block">선택 삭제</a>
			</div>
		</div>
	</div>
	<div class="col-md-1"></div>


	<!-- #modal-message -->
	<div class="modal modal-message fade" id="modal-message">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<div id="writeSurvey">
						<h3 class="modal-title">설문조사 작성</h3>
					</div>

					<h4><i class="fa fa-calendar"></i> 설문기간 설정</h4>

					<input type="text" class="form-control" placeholder="설문 기간을 설정해주세요." id="surveyPeriod" name="surveyPeriod">


				</div>
				<div class="modal-body">
					<div id="surveySimpleIntroArea">
						<h4>간단설명</h4>
						<textarea class="form-control" placeholder="Textarea" rows="5" name="surveySimpleIntro" id="surveySimpleIntro"></textarea>
						<hr>
					</div>

					<div id="questionArea">

						<div class="col-md-6">
							<input type="text" class="form-control" placeholder="1번 문제의 제목을 입력해주세요." id="surveyPeriod" name="surveyPeriod">
						</div>

						<div class="col-md-6">
							<select class="form-control selectpicker" data-size="10" data-live-search="true" data-style="btn-inverse" name="surveyType" id="surveyType">
							    <option value="1" selected="selected">단답형</option>
							    <option value="2">장문형</option>
							    <option value="3">객관식</option>
							    <option value="4">체크박스</option>
							</select>
						</div>

						<hr>


					</div>


				</div>
				<div class="modal-footer">
					<a href="javascript:;" class="btn btn-sm btn-white" data-dismiss="modal">Close</a>
					<a href="javascript:;" class="btn btn-sm btn-primary">Save Changes</a>
				</div>
			</div>
		</div>
	</div>


</body>
</html>