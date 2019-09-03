<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function(){
		/* 질문 추가 삭제 관련 */
 		// + 버튼 클릭 시 폼 추가
		$('.addBtn').click(function(){

			var clone = $('.defaultTemplate').clone(true);
			clone.removeClass("defaultTemplate");
			clone.addClass("questionArea");

			$(this).before(clone);
		});

		// - 버튼 클릭 시 질문 삭제
		$('.delteBtn').click(function(){
			$(this).parents('.questionArea').remove();
		});


		// surveyType 변경 시 폼 변경
		$('select[name="surveyType"]').change(function(){

			$(this).parents('.questionArea').children('.questionDetailArea').eq(0).children().remove();

			var optionValue = $(this).val();


			// 단답형
			if(optionValue == 1){
				$(this).parents('.questionArea').children('.questionDetailArea').eq(0).prepend('<input type="text" class="form-control" placeholder="단답형의 질문입니다.">');

			// 장문형
			} else if(optionValue == 2){
				$(this).parents('.questionArea').children('.questionDetailArea').eq(0).prepend('<textarea class="form-control" placeholder="장문형의 질문입니다." rows="5"></textarea>');

			// 객관식
			} else if(optionValue == 3){
				/*
				<div class="col-md-1">
					<h4><i class="fa fa-dot-circle-o"></i></h4>
				</div>
				<div class="col-md-11">
					<input type="text" class="form-control" placeholder="옵션을 입력해주세요." name="radioOption">
				</div>
				<br clear="all"/>

				<!-- 옵션 관리 -->
				<div class="col-md-1">
					<h4><i class="fa fa-dot-circle-o"></i></h4>
				</div>
				<div class="col-md-11">
					<button type="button" class="btn btn-success btn-block" name="addRadioOptionBtn">옵션 추가</button>
				</div>
				 */

				var $divClassColMd1 = $('<div>', {class:'col-md-1'});
				var $h4 = $('<h4>');
				var $iCircle = $('<i>', {class:'fa fa-dot-circle-o'});
				var $divClassColMd11 = $('<div>', {class:'col-md-11'});
				var $inputCheckboxOption = $('<input>', {type:'text', class:'form-control', placeholder:'옵션을 입력해주세요.', name:'option'});
				var $brClearAll = $('<br>', {clear:'all'});

				var $divClassColMd1_2 = $('<div>', {class:'col-md-1'});
				var $h4_2 = $('<h4>');
				var $iCircle_2 = $('<i>', {class:'fa fa-dot-circle-o'});
				var $divClassColMd11_2 = $('<div>', {class:'col-md-11'});
				var $buttonAddOptionBtn = $('<button>', {type:'button', class:'btn btn-success btn-block', name:'addRadioOption'});

				//
				$h4.append($iCircle);
				$divClassColMd1.append($h4);

				$divClassColMd11.append($inputCheckboxOption);

				$h4_2.append($iCircle_2);
				$divClassColMd1_2.append($h4_2);
				$buttonAddOptionBtn.text('옵션 추가');
				$divClassColMd11_2.append($buttonAddOptionBtn);

				$(this).parents('.questionArea').children('.questionDetailArea').eq(0).append($divClassColMd1);
				$(this).parents('.questionArea').children('.questionDetailArea').eq(0).append($divClassColMd11);

				$(this).parents('.questionArea').children('.questionDetailArea').eq(0).append($brClearAll);

				$(this).parents('.questionArea').children('.questionDetailArea').eq(0).append($divClassColMd1_2);
				$(this).parents('.questionArea').children('.questionDetailArea').eq(0).append($divClassColMd11_2);

			// 체크박스
			} else if(optionValue == 4){

				var $divClassColMd1 = $('<div>', {class:'col-md-1'});
				var $h4 = $('<h4>');
				var $iCheck = $('<i>', {class:'fa fa-check-circle-o'});
				var $divClassColMd11 = $('<div>', {class:'col-md-11'});
				var $inputCheckboxOption = $('<input>', {type:'text', class:'form-control', placeholder:'옵션을 입력해주세요.', name:'option'});
				var $brClearAll = $('<br>', {clear:'all'});

				var $divClassColMd1_2 = $('<div>', {class:'col-md-1'});
				var $h4_2 = $('<h4>');
				var $iCheck_2 = $('<i>', {class:'fa fa-check-circle-o'});
				var $divClassColMd11_2 = $('<div>', {class:'col-md-11'});
				var $buttonAddOptionBtn = $('<button>', {type:'button', class:'btn btn-success btn-block', name:'addCheckOption'});

				//
				$h4.append($iCheck);
				$divClassColMd1.append($h4);

				$divClassColMd11.append($inputCheckboxOption);

				$h4_2.append($iCheck_2);
				$divClassColMd1_2.append($h4_2);
				$buttonAddOptionBtn.text('옵션 추가');
				$divClassColMd11_2.append($buttonAddOptionBtn);

				$(this).parents('.questionArea').children('.questionDetailArea').eq(0).append($divClassColMd1);
				$(this).parents('.questionArea').children('.questionDetailArea').eq(0).append($divClassColMd11);

				$(this).parents('.questionArea').children('.questionDetailArea').eq(0).append($brClearAll);

				$(this).parents('.questionArea').children('.questionDetailArea').eq(0).append($divClassColMd1_2);
				$(this).parents('.questionArea').children('.questionDetailArea').eq(0).append($divClassColMd11_2);
			}

		});


		/* 등록버튼 클릭 */
		$('#enrollBtn').click(function(){

			var inputSurveyTitle = $('#inputSurveyTitle').val();
			var surveyPeriod = $('#surveyPeriod').val();
			var surveySimpleIntro = $('#surveySimpleIntro').val();

			console.log("inputSurveyTitle::" + inputSurveyTitle);
			console.log("surveyPeriod::" + surveyPeriod);

			var surveyQstnTitle = "";
			var surveyType = "";

			$("input[name='surveyQstnTitle']").each(function(){
				surveyQstnTitle += $(this).val() + "§§"
			});

			$("select[name='surveyType']").each(function(){
				surveyType += $(this).val() + "§§"
			});

			console.log("surveyQstnTitle::" + surveyQstnTitle);
			console.log("surveyType::" + surveyType);

		});


 	});

	// 라디오 옵션 추가
	$(document).on('click', "button[name='addRadioOption']", function(){
		/*
		<br clear="all"/>
		<div class="col-md-1">
		<h4><i class="fa fa-dot-circle-o"></i></h4>
		</div>
		<div class="col-md-11">
			<input type="text" class="form-control" placeholder="옵션을 입력해주세요." name="radioOption">
		</div>
		 */

		var $divClassColMd1 = $('<div>', {class:'col-md-1'});
		var $h4 = $('<h4>');
		var $iCircle = $('<i>', {class:'fa fa-dot-circle-o'});
		var $divClassColMd11 = $('<div>', {class:'col-md-11'});
		var $inputCheckboxOption = $('<input>', {type:'text', class:'form-control', placeholder:'옵션을 입력해주세요.', name:'option'});
		var $brClearAll = $('<br>', {clear:'all'});

		$h4.append($iCircle);
		$divClassColMd1.append($h4);

		$divClassColMd11.append($inputCheckboxOption);

		$(this).parents('.col-md-11').prev().before($brClearAll);
		$(this).parents('.col-md-11').prev().before($divClassColMd1);
		$(this).parents('.col-md-11').prev().before($divClassColMd11);
		$(this).parents('.col-md-11').prev().before($brClearAll);

	});

	// 체크박스 옵션 추가
	$(document).on('click', "button[name='addCheckOption']", function(){
		/*
		<br clear="all"/>
		<div class="col-md-1">
		<h4><i class="fa fa-dot-circle-o"></i></h4>
		</div>
		<div class="col-md-11">
			<input type="text" class="form-control" placeholder="옵션을 입력해주세요." name="radioOption">
		</div>
		 */

		var $divClassColMd1 = $('<div>', {class:'col-md-1'});
		var $h4 = $('<h4>');
		var $iCircle = $('<i>', {class:'fa fa-check-circle-o'});
		var $divClassColMd11 = $('<div>', {class:'col-md-11'});
		var $inputCheckboxOption = $('<input>', {type:'text', class:'form-control', placeholder:'옵션을 입력해주세요.', name:'option'});
		var $brClearAll = $('<br>', {clear:'all'});

		$h4.append($iCircle);
		$divClassColMd1.append($h4);

		$divClassColMd11.append($inputCheckboxOption);

		$(this).parents('.col-md-11').prev().before($brClearAll);
		$(this).parents('.col-md-11').prev().before($divClassColMd1);
		$(this).parents('.col-md-11').prev().before($divClassColMd11);
		$(this).parents('.col-md-11').prev().before($brClearAll);
	});



</script>
</head>
<body>

	<!-- #modal-message -->
	<div class="modal fade" id="modal-message">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<div id="writeSurvey">
						<h3 class="modal-title">설문조사 작성</h3>
					</div>
					<h4>설문조사 제목</h4>
					<input type="text" class="form-control" placeholder="설문의 제목을 입력해주세요." id="inputSurveyTitle" name="inputSurveyTitle">

					<h4><i class="fa fa-calendar"></i> 설문기간 설정</h4>
					<input type="text" class="form-control" placeholder="설문 기간을 설정해주세요." id="surveyPeriod" name="surveyPeriod">
				</div>

				<!-- Body -->
				<div class="modal-body">
					<div id="surveySimpleIntroArea">
						<h4>간단설명</h4>
						<textarea class="form-control" placeholder="설문조사에 대한 간단한 설명을 입력해주세요." rows="5" name="surveySimpleIntro" id="surveySimpleIntro"></textarea>
						<hr>
					</div>

					<!-- Default Template -->
					<div class="defaultTemplate">
						<div class="col-md-9">
							<input type="text" class="form-control" placeholder="설문조사 항목의 타이틀을 입력해주세요." id="surveyQstnTitle" name="surveyQstnTitle">
						</div>
						<div class="col-md-3">
							<select class="form-control selectpicker" data-size="10" data-live-search="true" data-style="btn-inverse" name="surveyType" id="surveyType">
							    <option value="1" selected="selected">단답형</option>
							    <option value="2">장문형</option>
							    <option value="3">객관식</option>
							    <option value="4">체크박스</option>
							</select>
						</div>
						<br clear="all"><br>

						<div class="col-md-9 questionDetailArea">
							<input type="text" class="form-control" placeholder="질문 내용을 입력해주세요." id="surveyPeriod" name="surveyPeriod">



						</div>
						<div class="col-md-3">
							<div class="panel-body">
							<input type="checkbox" data-render="switchery" data-theme="default" checked />
							</div>
						</div>
						<br clear="all"><br>
						<a href="javascript:;" class="btn btn-danger btn-block delteBtn"><i class="fa fa-minus-square"></i></a>
						<hr>
					</div>

					<a class="btn btn-info btn-block addBtn" data-toggle="modal"><i class="fa fa-plus-square"></i></a>

				</div>
				<div class="modal-footer">
					<a href="javascript:;" class="btn btn-sm btn-white" data-dismiss="modal">닫기</a>
					<a class="btn btn-sm btn-primary" id="enrollBtn">설문 등록</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>