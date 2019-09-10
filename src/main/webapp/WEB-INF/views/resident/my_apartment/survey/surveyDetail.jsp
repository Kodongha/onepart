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
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<link href="${contextPath}/resources/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
<link href="${contextPath}/resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="${contextPath}/resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
<link href="${contextPath}/resources/css/animate.min.css" rel="stylesheet" />
<link href="${contextPath}/resources/css/style.min.css" rel="stylesheet" />
<link href="${contextPath}/resources/css/style-responsive.min.css" rel="stylesheet" />
<link href="${contextPath}/resources/css/theme/default.css" rel="stylesheet" id="theme" />
<script src="${contextPath }/resources/plugins/pace/pace.min.js"></script>
</head>
<body>

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
									<div class="progress-bar progress-bar-success" style="width: ${ prtcptPercentStr }%;">${ prtcptPercentStr } %</div>
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
						<c:forEach var="surveyQstn" items="${surveyQstnList }">
							<h3>${surveyQstn.surveyQstnTitle }

							<c:if test="${surveyQstn.surveyQstnType == 1 }">
								(단답형)
							</c:if>
							<c:if test="${surveyQstn.surveyQstnType == 2 }">
								(장문형)
							</c:if>
							<c:if test="${surveyQstn.surveyQstnType == 3 }">
								(객관식)



                            <h4 class="text-center">Phone CPU benchmarks</h4>
									<div id="morris-bar-chart" class="height-sm"
										style="position: relative; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
										<svg height="300" version="1.1" width="777" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative; left: -0.5px;">
											<desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with RaphaÃ«l 2.1.2</desc>
											<defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs>
											<text x="41.953125" y="230.4185603705" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal">
											<tspan dy="4.004497870499989" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan></text>
											<path fill="none" stroke="#aaaaaa" d="M54.453125,230.4185603705H752" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
											<text x="41.953125" y="179.06392027787498" text-anchor="end"
												font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal">
											<tspan dy="3.9936077778749848"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">500</tspan></text>
											<path fill="none" stroke="#aaaaaa"
												d="M54.453125,179.06392027787498H752" stroke-width="0.5"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
											<text x="41.953125" y="127.70928018525" text-anchor="end"
												font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal">
											<tspan dy="3.9983426852499946"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">1,000</tspan></text>
											<path fill="none" stroke="#aaaaaa"
												d="M54.453125,127.70928018525H752" stroke-width="0.5"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
											<text x="41.953125" y="76.354640092625" text-anchor="end"
												font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal">
											<tspan dy="4.003077592625004"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">1,500</tspan></text>
											<path fill="none" stroke="#aaaaaa"
												d="M54.453125,76.354640092625H752" stroke-width="0.5"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
											<text x="41.953125" y="25" text-anchor="end"
												font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal">
											<tspan dy="4"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2,000</tspan></text>
											<path fill="none" stroke="#aaaaaa" d="M54.453125,25H752"
												stroke-width="0.5"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
											<text x="693.87109375" y="242.9185603705"
												text-anchor="middle" font="10px &quot;Arial&quot;"
												stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal"
												transform="matrix(0.8192,-0.5736,0.5736,0.8192,-33.1226,462.3282)">
											<tspan dy="4.004497870499989"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">iPhone 5</tspan></text>
											<text x="577.61328125" y="242.9185603705"
												text-anchor="middle" font="10px &quot;Arial&quot;"
												stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal"
												transform="matrix(0.8192,-0.5736,0.5736,0.8192,-56.8462,397.5678)">
											<tspan dy="4.004497870499989"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">iPhone 4S</tspan></text>
											<text x="461.35546875" y="242.9185603705"
												text-anchor="middle" font="10px &quot;Arial&quot;"
												stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal"
												transform="matrix(0.8192,-0.5736,0.5736,0.8192,-75.1726,328.9627)">
											<tspan dy="4.004497870499989"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">iPhone 4</tspan></text>
											<text x="345.09765625" y="242.9185603705"
												text-anchor="middle" font="10px &quot;Arial&quot;"
												stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal"
												transform="matrix(0.8192,-0.5736,0.5736,0.8192,-102.3441,266.6221)">
											<tspan dy="4.004497870499989"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">iPhone 3GS</tspan></text>
											<text x="228.83984375" y="242.9185603705"
												text-anchor="middle" font="10px &quot;Arial&quot;"
												stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal"
												transform="matrix(0.8192,-0.5736,0.5736,0.8192,-120.5459,197.7929)">
											<tspan dy="4.004497870499989"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">iPhone 3G</tspan></text>
											<text x="112.58203125" y="242.9185603705"
												text-anchor="middle" font="10px &quot;Arial&quot;"
												stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal"
												transform="matrix(0.8192,-0.5736,0.5736,0.8192,-133.8725,125.9166)">
											<tspan dy="4.004497870499989"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">iPhone</tspan></text>
											<rect x="68.9853515625" y="216.450098265306"
												width="87.193359375" height="13.968462105193993" r="0"
												rx="0" ry="0" fill="#2d353c" stroke="none" fill-opacity="1"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
											<rect x="185.2431640625" y="216.34738898512074"
												width="87.193359375" height="14.071171385379245" r="0"
												rx="0" ry="0" fill="#2d353c" stroke="none" fill-opacity="1"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
											<rect x="301.5009765625" y="202.17350831955625"
												width="87.193359375" height="28.24505205094374" r="0" rx="0"
												ry="0" fill="#2d353c" stroke="none" fill-opacity="1"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
											<rect x="417.7587890625" y="191.389033900105"
												width="87.193359375" height="39.029526470394984" r="0"
												rx="0" ry="0" fill="#2d353c" stroke="none" fill-opacity="1"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
											<rect x="534.0166015625" y="163.14398184916124"
												width="87.193359375" height="67.27457852133875" r="0" rx="0"
												ry="0" fill="#2d353c" stroke="none" fill-opacity="1"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
											<rect x="650.2744140625" y="69.06228119947224"
												width="87.193359375" height="161.35627917102775" r="0"
												rx="0" ry="0" fill="#2d353c" stroke="none" fill-opacity="1"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect></svg>
										<div class="morris-hover morris-default-style"
											style="left: 61.082px; top: 121px; display: none;">
											<div class="morris-hover-row-label">iPhone</div>
											<div class="morris-hover-point" style="color: #2d353c">
												Geekbench: 136</div>
										</div>
									</div>

								</c:if>
							<c:if test="${surveyQstn.surveyQstnType == 4 }">
								(체크박스)
							</c:if>
							</h3>

						</c:forEach>
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