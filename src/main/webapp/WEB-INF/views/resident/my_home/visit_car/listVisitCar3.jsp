<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="${contextPath}/resources/plugins/DataTables/css/data-table.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->


</head>
<body>
	<div id="visitCarPanel" class="panel-body">
		<h1>방문차량관리</h1>
		<div class="table-responsive">
		<table id="data-table" class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>선택</th>
					<th>상태</th>
					<th>방문차량번호</th>
					<th>방문일</th>
					<th>비상연락처</th>
					<th>방문목적</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="myVisitcarList" items="${ myVisitcarList }">
				<tr class="odd gradeX">
					<td>
					<c:if test="${ myVisitcarList.status == 1}">
						<input type="checkbox" value="${myVisitcarList.visitCarSeq }" name="timeCheckbox">
					</c:if>
					<c:if test="${ myVisitcarList.status == 2}">
						<input type="checkbox" disabled=true>
					</c:if>
					<c:if test="${ myVisitcarList.status == 3}">
						<input type="checkbox" disabled=true>
					</c:if>
					</td>
					<td>
					<c:if test="${ myVisitcarList.status == 1}">
						등록대기
					</c:if>
					<c:if test="${ myVisitcarList.status == 2}">
						등록완료
					</c:if>
					<c:if test="${ myVisitcarList.status == 3}">
						거절
					</c:if>
					</td>
					<td>${myVisitcarList.visitCarNum}</td>
					<td>${myVisitcarList.visitDt}</td>
					<td>${myVisitcarList.subPhone}</td>
					<td>${myVisitcarList.visitPurpose}</td>
				</tr>
			</c:forEach>

				<!-- <tr class="even gradeC">
					<td><input type="checkbox"></td>
					<td>승인</td>
					<td>32서4698</td>
					<td>2019.09.10</td>
					<td>010-4445-8565</td>
					<td>친척방문</td>
				</tr> -->

			</tbody>
		</table>
	</div>
</div>


	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="${contextPath}/resources/plugins/DataTables/js/jquery.dataTables.js"></script>
	<script src="${contextPath}/resources/js/table-manage-default.demo.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->

	<script>


		$(document).ready(function() {

			console.log("로딩");

			var time = new Array();
			$("input[type='checkbox'][name='timeCheckbox']").change(function(){
				console.log($(this).val())

				//선택된값 시간대 배열에 담아 input에 출력
				if($(this).is(":checked")){
					console.log("checked!!");
					//time.push($(this).val())
					//$("#propUseTm").val(time);
				}else{
					console.log("unchecked!!")
					//var remove = $(this).val();
					//time.splice(time.indexOf($(this).val()), 1);
					//$("#propUseTm").val(time);
				}
				//총사용시간 input에 출력
				//$("#allUserTm").val(time.length);
				//이용금액 input에 출력
				//var price = time.length * $("#facDefaultFee").val();
				//$("#toalFee").val(price);
			});




			$("#visitCarPanel").css("background-color","white");
			TableManageDefault.init();

			var button1 = $("<button id='delete' class='btn btn-sm btn-danger'>").text("삭제");
			var button2 = $("<button id='add-with-callbacks' class='btn btn-sm btn-info' data-modal-id='createRoomDiv' onclick='return moveRegisterVisitCar()' style='float: right'>").text("차량 등록하기");
			var btnTable = $("<table class='table'>").css({'width':'10%', 'margin-bottom':'0px'});
			var tableTr = $("<tr>");
			var tableTd1 = $("<td>").css('padding','0px 5px');
			var tableTd2 = $("<td>").css('padding','0px 5px');

			tableTd1.append(button1);
			tableTd2.append(button2);
			tableTr.append(tableTd1);
			tableTr.append(tableTd2);
			btnTable.append(tableTr);

			$(btnTable).insertBefore("#data-table");
		});

		function moveRegisterVisitCar(){
			$.ajax({
				url:"/onepart/resident/menuVisitCar",
				type:"GET",
				dataType:"html",
				success:function(data){
					$("#content").html(data);
				},
			});
			return false;
		}


	</script>

</body>
</html>