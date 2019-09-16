<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#titleH1 {
		display: inline-block;
		margin-right: 2%;
	}

	#surveyStatus {
		font-size: 1.5em;
	}

	#TbsurveyInfo {
		width: 50%;
	}

	#endSurvey:hover {
		background: #ff5b57;
		cursor:no-drop;
	}
</style>
<script src="${contextPath}/resources/plugins/DataTables/js/jquery.dataTables.js"></script>
<script src="${contextPath}/resources/js/table-manage-default.demo.min.js"></script>\
<script src="${contextPath}/resources/js/apps.min.js"></script>
<link href="${contextPath}/resources/plugins/DataTables/css/data-table.css" rel="stylesheet" />
<!-- chart -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- chart -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.js" integrity="sha256-qSIshlknROr4J8GMHRlW3fGKrPki733tLq+qeMCR05Q=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js" integrity="sha256-xKeoJ50pzbUGkpQxDYHD7o7hxe0LaOGeguUidbq6vis=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.css" integrity="sha256-IvM9nJf/b5l2RoebiFno92E5ONttVyaEEsdemDC6iQA=" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.js" integrity="sha256-arMsf+3JJK2LoTGqxfnuJPFTU4hAK57MtIPdFpiHXOU=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.css" integrity="sha256-aa0xaJgmK/X74WM224KMQeNQC2xYKwlAt08oZqjeF0E=" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" integrity="sha256-Uv9BNBucvCPipKQ2NS9wYpJmi8DTOEfTA/nH2aoJALw=" crossorigin="anonymous"></script>



<script type="text/javascript">

	$(function(){
		// 설문 통계 정보 세팅
		getSelectedInfo();
	});

	// 설문 통계 정보 세팅
	function getSelectedInfo(){

		var surveySeq = '${surveyVO.surveySeq}';
		console.log('surveySeq::' + surveySeq);

		$.ajax({
			url : 'getSelectedInfo',
			type : 'post',
			/* contentType : "application/json", */
			async: false,
			data : {surveySeq:surveySeq},
			success : function(data) {
				console.log('succ');
				var surveyQstnList = data.surveyQstnList;
				var surveyQstnOptionList = data.surveyQstnOptionList;
				console.log(surveyQstnList);
				console.log(surveyQstnOptionList);

				var surveyInfoBody = $('#surveyInfoBody');

				for(var i in surveyQstnList){

					var surveyQstnNum = surveyQstnList[i].surveyQstnNum;
					var surveyQstnTitle = surveyQstnList[i].surveyQstnTitle;
					var surveyQstnType = surveyQstnList[i].surveyQstnType;
					console.log(surveyQstnNum + ":" + surveyQstnTitle + ":" + surveyQstnType);

					var surveyQstnTypeStr = '';
					if(surveyQstnType == 1){
						surveyQstnTypeStr = "단답형";
					} else if(surveyQstnType == 2){
						surveyQstnTypeStr = "장문형";
					} else if(surveyQstnType == 3){
						surveyQstnTypeStr = "객관식";
					} else if(surveyQstnType == 4){
						surveyQstnTypeStr = "체크박스";
					}

					var title = '[' + surveyQstnNum + '] ' + surveyQstnTitle + '(' + surveyQstnTypeStr + ')';
					console.log('title ::' + title);
					var $h3 = $('<h3>', {text:surveyQstnNum + title});
					surveyInfoBody.append($h3);

					var $hr = $('<hr>');
					// 타입별 통계 정보 가져오기
					// 단답형
					if(surveyQstnType == 1 || surveyQstnType == 2){
						getSelectedStatisticsType1(surveySeq, surveyQstnType, surveyInfoBody, surveyQstnNum);
					}
					surveyInfoBody.append($hr);
				}
			},
			error : function(error) {
				console.log('error');
			}
		});
	}

	// 단답형 && 장문형
	function getSelectedStatisticsType1(surveySeq, surveyQstnType, surveyInfoBody, surveyQstnNum) {
		$.ajax({
			url : 'getSelectedStatisticsType1',
			type : 'post',
			async: false,
			data : {
				surveySeq : surveySeq,
				surveyQstnType : surveyQstnType,
				surveyQstnNum : surveyQstnNum
				},
			success : function(data){
				console.log(data);
				var tableId = "dataTable"+surveyQstnNum;
				var surveyArr = data.surveyStatisticsVOList
				var $table_responsiveDiv = $('<div>', {class:'table-responsive'});
				var $data_tableTable =  $('<table>', {id:tableId, class:"table table-striped table-bordered"});

				$table_responsiveDiv.append($data_tableTable);
				surveyInfoBody.append($table_responsiveDiv);

				var dataSet = [];

				for(var i in surveyArr){
					var data = [];
					var surveyData = surveyArr[i];

					data.push(surveyData.bdNm);
					data.push(surveyData.rmNm);
					data.push(surveyData.selectedAnswer);
					dataSet.push(data);
				}
				$('#'+tableId).DataTable( {
			        data: dataSet,
			        columns: [
			            { title: "동" },
			            { title: "호" },
			            { title: "답변" },
			        ]
			    });
			}
		});
	}



</script>
<script type="text/javascript">

	$(function(){
		var ctx = document.getElementById('myChart');
		var myChart = new Chart(ctx, {
		    type: 'bar',
		    data: {
		        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
		        datasets: [{
		            label: '# of Votes',
		            data: [12, 19, 3, 5, 2, 3],
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255, 99, 132, 1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
		                'rgba(153, 102, 255, 1)',
		                'rgba(255, 159, 64, 1)'
		            ],
		            borderWidth: 1
		        }]
		    },
		    options: {
		        scales: {
		            yAxes: [{
		                ticks: {
		                    beginAtZero: true
		                }
		            }]
		        }
		    }
		});
	});
</script>
</head>
<body>
	<canvas id="myChart" width="400" height="400"></canvas>

	<div class="row">
	    <div class="col-md-1"></div>
	    <div class="col-md-10">
			<h3>설문조사</h3>
			<br>

			<div class="tab-content">
				<div class="tab-pane fade active in" id="default-tab-1">
					<div id="surveyInfoHeader">

						<h2 id="titleH1">${ surveyVO.surveyTitle }</h2>

						<c:if test="${ surveyVO.surveyStatus == 1}">
							<span class="badge badge-inverse" id="surveyStatus">
								진행 예정
							</span>
						</c:if>
						<c:if test="${ surveyVO.surveyStatus == 2}">
							<span class="badge badge-Primary" id="surveyStatus">
								진행 중
							</span>
						</c:if>
						<c:if test="${ surveyVO.surveyStatus == 3}">
							<span class="badge badge-Danger" id="surveyStatus">
								종료
							</span>
						</c:if>

						<c:if test="${ surveyVO.residentSeq == 0}">
							<span class="label label-danger" id="surveyStatus">
								미참여
							</span>
						</c:if>

						<c:if test="${ surveyVO.residentSeq != 0}">
							<span class="label label-primary" id="surveyStatus">
								참여 완료
							</span>
						</c:if>

						<table class="table" id="TbsurveyInfo">
							<tr>
								<td><h4>${ surveyVO.surveySimpleIntro }</h4></td>
							</tr>
							<tr>
								<td>설문 기간</td>
								<td>${ surveyVO.surveyPeriod }</td>
							</tr>
							<tr>
								<td>참여율</td>
								<td>
									${ prtcptPercentStr } %
									<%-- <div class="progress-bar progress-bar-success" style="width: ${ prtcptPercentStr }%;">${ prtcptPercentStr } %</div> --%>
								</td>
							</tr>
						</table>
						<!-- 설문에 참여를 안했을 때, -->
						<c:if test="${surveyVO.residentSeq == 0 }">

							<!-- 설문 타입이 세대주, 로그인 유저가 세대주일 때 -->
							<c:if test="${ surveyVO.surveyType == 2 && sessionScope.loginUser.householdAuthType == 2 }">
								<a href="#modal-dialog" class="btn btn-info btn-block" data-toggle="modal">[ 설문조사 참여하기 ]</a>
							</c:if>
							<!-- 설문 타입이 일반, 모두 -->
							<c:if test="${ surveyVO.surveyType == 1 }">
								<a href="#modal-dialog" class="btn btn-info btn-block" data-toggle="modal">[ 설문조사 참여하기 ]</a>
							</c:if>
						</c:if>

						<!-- 설문에 참여할 수 없는 경우 -->
						<!-- 설문을 완료했을 때, -->
						<c:if test="${surveyVO.residentSeq != 0 }">
							<a class="btn btn-danger btn-block" data-toggle="modal" id="endSurvey">[ 설문조사에 참여하셨습니다. ]</a>
						</c:if>
						<c:if test="${ surveyVO.surveyType == 2 && sessionScope.loginUser.householdAuthType != 2 }">
							<a class="btn btn-danger btn-block" data-toggle="modal" id="endSurvey">[ 본 설문은 세대주만 참여 가능합니다. ]</a>
						</c:if>

					</div>
				</div>
			</div>
			<br>
			<div class="tab-content">
				<div class="tab-pane fade active in" id="default-tab-1">
					<div id="surveyInfoBody">
	                    <div class="table-responsive">

	                    </div>
					</div>
				</div>
			</div>

		</div>
		<div class="col-md-1"></div>
	</div>

	<!-- modal include -->
	<jsp:include page="surveyDetailModal.jsp"/>

</body>
</html>