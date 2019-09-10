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