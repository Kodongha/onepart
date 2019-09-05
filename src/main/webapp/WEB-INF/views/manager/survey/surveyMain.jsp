<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${contextPath}/resources/plugins/switchery/switchery.min.css" rel="stylesheet" />
<link href="${contextPath}/resources/plugins/powerange/powerange.min.css" rel="stylesheet" />
<%--
<script type="text/javascript" src="${ contextPath }/resources/js/daterangepicker.js"></script>
<script type="text/javascript" src="${ contextPath }/resources/js/moment.min.js"></script>
<link rel="stylesheet" type="text/css" href="${ contextPath }/resources/css/daterangepicker.css" />
 --%>
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
		margin-bottom: 5%;
	}

	textarea {
		resize: none;
	}

	#surveySimpleIntroArea {
		padding-bottom: 5%;
	}

	#modal-message{
		height: 97%;
	}

	.addBtn {
	 background: #009900;
	}

	.defaultTemplate{
		display: none;
		margin-top: 1%;
	}

	input[name='checkboxOption']{
		border-left-width:0;
		border-right:0;
		border-top:0;
		boder-bottom:1px;
	}

	.table {
		text-align: center;
	}

	thead th {
		text-align: center;
	}




</style>
<script type="text/javascript">
	$(function(){

		/* 검색 관련 */
		// 리셋버튼 클릭시 입력 폼 초기화
		$('#resetBtn').click(function(){
			$('#surveyTitle').val('');
			$('#defaultOption').attr("selected", "selected");
		});

		$('#searchBtn').click(function(){



			var surveyTitleValue = $('#surveyTitle').val();
			var surveyStatusValue = $('#surveyStatus').val();

			$.ajax({
				url:'searchSurvey',
				type:'get',
				data:{'surveyTitle':surveyTitleValue, 'surveyStatus':surveyStatusValue},
				success:function(data){
					console.log("succ");
				},
				error:function(){
					console.log("fail");
				}
			});

		});

/*
		// 데이터 레인지 피커 사용
		$('input[name="surveyPeriod"]').daterangepicker({
		   opens: 'left'
		}, function(start, end, label) {
		   console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
		});
 */

 		$('#surveyList > tbody > tr').click(function(){
 			var surveySeq = $(this).children().eq(0).text();

 			$.ajax({
 				url:'surveyDetail',
 				type:'post',
 				data:{surveySeq:surveySeq},
 				success:function(result){
					console.log('succ');
					console.log(result);
					$("#content").html(result);
 				},
 				error:function(error){
 					console.log(error);
 				}

 			});
 		});

	});

	/* Paging 처리 */
	function paging(requestPage){
		console.log(requestPage + " click");
	}


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
							<option id="defaultOption" value="0">전체</option>
							<option value="1">진행 중</option>
							<option value="2">진행 예정</option>
							<option value="3">종료</option>
						</select>
					</div>

					<br clear="all">

					<div id="buttonArea">
						<p class="text-right m-b-0">
							<a href="javascript:;" class="btn btn-white m-r-5" id="resetBtn">초기화</a>
							<a class="btn btn-primary" id="searchBtn">검색</a>
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
			<table class="table" id="surveyList">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>상태</th>
						<th>설문 타입</th>
						<th>참여율</th>
						<th>종료 날짜</th>
						<th>비고</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="surveyVO" items="${surveyList }">
					<tr>
						<td>${surveyVO.surveySeq }</td>
						<td>${surveyVO.surveyTitle }</td>

						<!-- 상태 -->
						<c:if test="${surveyVO.surveyStatus == 1 }">
							<td>진행 예정</td>
						</c:if>
						<c:if test="${surveyVO.surveyStatus == 2 }">
							<td>진행 중</td>
						</c:if>
						<c:if test="${surveyVO.surveyStatus == 3 }">
							<td>종료</td>
						</c:if>

						<c:if test="${surveyVO.surveyType == 1 }">
							<td>일반 설문</td>
						</c:if>
						<c:if test="${surveyVO.surveyType == 2 }">
							<td>세대별 설문</td>
						</c:if>
						<td></td>
						<td>${surveyVO.surveyPeriod }</td>
						<td></td>
					</tr>

					</c:forEach>

				</tbody>
			</table>

			<div id="pageingBtnArea">
				<ul class="pagination m-t-0 m-b-10">
					<c:if test="${ pi.currentPage <= 1 }">
						<li class="disabled"><a href="javascript:;">«</a></li>
					</c:if>
					<c:if test="${ pi.currentPage > 1 }">
						<li><a href="javascript:paging(${ p });">«</a></li>
					</c:if>
					<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">

						<c:if test="${ p eq pi.currentPage }">
							<li class="active"><a>${ p }</a></li>
						</c:if>
						<c:if test="${ p ne pi.currentPage }">
							<li><a  href="javascript:paging(${ p });">${ p }</a></li>
						</c:if>
					</c:forEach>
					<c:if test="${ pi.currentPage < pi.maxPage }">
						<li><a href="javascript:paging(${ p });">»</a></li>
					</c:if>
					<c:if test="${ pi.currentPage >= pi.maxPage }">
						<li class="disabled"><a href="javascript:;">»</a></li>
					</c:if>
				</ul>
			</div>

			<div id="etcBtnArea">
				<a href="#modal-message" class="btn btn-info btn-block" data-toggle="modal">설문조사 만들기</a>
				<a href="javascript:;" class="btn btn-danger btn-block">선택 삭제</a>
			</div>
		</div>
	</div>
	<div class="col-md-1"></div>

	<!-- modal include -->
	<jsp:include page="surveyMainModal.jsp"/>



</body>
</html>