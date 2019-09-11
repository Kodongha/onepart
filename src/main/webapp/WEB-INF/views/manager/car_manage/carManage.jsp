<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<title>Color Admin | Managed Tables - ColVis</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style type="text/css">
.buttonTable{
width:100%;
}
.form-control {
	width: 90% !important;
}

@media ( min-width : 992px) {
	.col-md-10 {
		width: 100% !important;
	}
}

.btn.btn-warning {
	color: #fff;
	background: #00acac !important;
	border-color: #00acac !important;
	width: 20%;
}

.btn.btn-warning:hover {
	background: #008a8a !important;
	border-color: #008a8a !important;
}

.row>[class*=col-].ui-sortable {
	width: 100%;
	padding: 10px;
	height: 460px;
}

#carre {
	text-align: center;
}

.form-control {
	margin-right: 96px !important;
	margin: 7px;
}

table#address tr td {
	width: 25%;
	text-align: center;
}

table#address {
	width: 50%;
	margin-left: 134px;
}

#btncar {
	text-align: center;
	width: 100%;
}

@media ( min-width : 992px) {
	.col-md-3 {
		font-size: 15px;
		padding-top: 14px !important;
	}
}

.btn {
	width: 20%;
}

table.dataTable {
	margin-top: 40px !important;
}

button#delete {
	width: 20%;
}

button#maderoom {
	position: absolute;
	right: 44px;
	top: 126px;
	width: 8%;
}

table.dataTable thead th:nth-child(1) {
	text-align: center;
}

table.dataTable tbody td:nth-child(1) {
	text-align: center;
	padding-bottom: 0px;
}

table.dataTable tbody td {
	padding: 10px 5px;
}

input[type=checkbox] {
	margin: 0;
	-webkit-transform: scale(1.3);
}

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

.createRoomDiv .form-group>div {
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
</style>
<script type="text/javascript">

</script>

</head>
<body>


	<!-- end col-2 -->
	<!-- begin col-10 -->
	<div class="col-md-10">
		<h1>차량관리</h1>
		<div class="panel panel-inverse">


			<div class="panel-body">
				<div class="table-responsive">



					<table id="data-table" class="table table-striped table-bordered">
						<thead>
							<tr>
								<td colspan="3" style="border-top:1px solid white; border-right:1px solid white; border-left:1px solid white"><button type="button" id="delete" class="btn btn-sm btn-warning modal-show">삭제</button></td>
								<td colspan="4" style="text-align:right; border-top:1px solid white; border-right:1px solid white; border-left:1px solid white"><button id="add-with-callbacks" class="btn btn-sm btn-warning modal-show" data-modal-id="createRoomDiv">차량등록</button></td>
							</tr>
							<tr>
								<th>선택</th>
								<th>차량번호</th>
								<th>주소</th>
								<th>차주</th>
								<th>차종</th>
								<th>차명</th>
								<th>용도</th>
							</tr>
						</thead>
						<tbody id="tbodyDiv">

						<c:forEach var="car" items="${residentCarList}" varStatus="status">

							<tr class="odd gradeX">
								<td><input type="checkbox"></td>
								<td class="carNum">${car.carNum }</td>
								<td class="bdrm">${car.bdNm }동 ${ car.rmNm }호</td>
								<td class="residentNm">${car.residentNm }</td>
								<td class="carType">${car.carType }</td>
								<td class="carNm">${car.carNm }</td>
								<td class="enrollPurpose">${car.enrollPurpose }</td>

							</tr>
						</c:forEach>
						</tbody>
					</table>



				</div>
			</div>
		</div>
		<!-- end panel -->
	</div>
	<!-- end col-10 -->

	<div id="createRoomDiv" class="createRoomDiv custom-modal modal-hide">
		<div class="row">
			<!-- begin col-6 -->
			<div class="col-md-6">
				<!-- begin panel -->
				<div class="panel panel-inverse" data-sortable-id="form-stuff-1">

					<div class="panel-body">
						<h2 id="carre">차량등록</h2>
						<form class="form-horizontal">
							<div class="form-group">
								<label class="col-md-3 control-label">차량 번호</label>
								<div class="col-md-9">
									<input type="text" class="form-control"
										placeholder="차량 번호를 입력하세요." />
								</div>
								<label class="col-md-3 control-label">주소</label>
								<table id="address">
									<tr>
										<td><input type="text" class="form-control"
											placeholder="동수를 입력하시오." /></td>
										<td><h5>동</h5></td>
										<td><input type="text" class="form-control"
											placeholder="호수를 입력하시오." /></td>
										<td><h5>호</h5></td>
									</tr>
								</table>




								<label class="col-md-3 control-label">차주</label>
								<div class="col-md-9">
									<input type="text" class="form-control"
										placeholder="차주를 입력하세요." />
								</div>
								<label class="col-md-3 control-label">차종</label>
								<div class="col-md-9">
									<input type="text" class="form-control"
										placeholder="차종을 입력하세요." />
								</div>
								<label class="col-md-3 control-label">차명</label>
								<div class="col-md-9">
									<input type="text" class="form-control"
										placeholder="차명을 입력하세요." />
								</div>
								<label class="col-md-3 control-label">용도</label>
								<div class="col-md-9">
									<input type="text" class="form-control"
										placeholder="용도를 입력하세요." />
								</div>

							</div>


							<div class="form-group">
								<div class="col-md-9" id="btncar">
									<button type="submit" class="btn btn-sm btn-success">등록</button>
									<button type="button"
										class="btn btn-sm btn-cancel modal-hide-btn">취소</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- end panel -->
			</div>
		</div>
	</div>


	<script>

/* function getResidentCarList() {
			$.ajax({
				url : '/onepart/resident/getResidentCarList',
				type : 'get',
				data : {},
				dataType: 'json',
				success : function(data) {

						console.log(data)
					if(data.result == "success") {
						let carList = data.residentCarList;
						drawResidentCarList(carList);
						console.log(carList);
					}
				},
				error : function(err) {
					alert('차량 목록 가져오기에 실패했습니다.');
				}
			});
		}


function drawResidentCarList(carList) {
	let listDiv = $('#tbodyDiv');
	console.log("carList:::" + carList);

	for(var a = 0; a<100; a++){


		for(var i = 0; i < carList.length; i++){

		if(i%2==1){
			var carDivFormat = $('.format').clone();
			carDivFormat.removeClass('format');
			carDivFormat.show();
		}else{
			var carDivFormat = $('.format2').clone();
			carDivFormat.removeClass('format2');
			carDivFormat.show();
		}


		carDivFormat.find('.carNum').text(carList[i].carNum);
		carDivFormat.find('.bdNm').text(carList[i].bdNm);
		carDivFormat.find('.rmNm').text(carList[i].rmNm);
		carDivFormat.find('.residentNm').text(carList[i].residentNm);
		carDivFormat.find('.carType').text(carList[i].carType);
		carDivFormat.find('.carNm').text(carList[i].carNm);
		carDivFormat.find('.enrollPurpose').text(carList[i].enrollPurpose);

		listDiv.append(carDivFormat);

		}
	}

} */

$(function() {
	//getResidentCarList();
	App.init();
	displayInit();
	TableManageColVis.init();
	$("th").parent().children().eq(0).removeAttr("class");
	$(".dataTables_info").remove();
	$("#data-table_previous").text("이전");
	$("#data-table_next").text("다음");
	$(".ColVis_MasterButton span").text("컬럼 보이기/숨기기")
	//$("#data-table_filter label").html('검색 : <input type="search" class="" placeholder="" aria-controls="data-table">')


	$(document).on('click', '.ColVis_MasterButton', function(){
		$("ul.ColVis_collection > li:first-child").remove();
	});
	$(document).on('click', 'th', function(){
		$("th").parent().children().eq(0).removeAttr("class");
	});

});


			function displayInit() {
				$('.custom-modal').addClass('modal-hide');
				$(document).on('click', '.modal-hide-btn', function(){
					$('.custom-modal').addClass('modal-hide');
				});
				$(document).on('click', '.modal-show', function(){
					const modalId = $(this).data('modal-id');
					$('#'+modalId).removeClass('modal-hide');
				});
			};


</script>


</body>

</html>
