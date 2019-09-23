<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../vote/vote_include.jsp"></jsp:include>
<jsp:include page="../vote/vote_detail_include.jsp"></jsp:include>
<div style="width:85%; margin:0 auto">
	<table style="width:100%">
		<tr>
			<td>
				<div class="form-group">
                    <h4>후보정보</h4>
                </div>
			</td>
			<td style="width:15%" align="center">
				<c:if test="${ voteUser.voteSeq == null }">
					<span class="badge badge-danger" style="height:28px; font-size:1.25em;">미완료</span>
				</c:if>
				<c:if test="${ voteUser.voteSeq != null }">
					<span class="badge badge-success" style="height:28px; font-size:1.25em;">완료</span>
				</c:if>
			</td>
		</tr>
	</table>
	<!-- 후보정보 div -->
	<div class="panel-body" style="background:white" align="center">
		<!-- 각 후보정보 div -->
		<div>
			<br>
			<c:if test="${ voteUser.candidateSeq == null }">
				<table style="width:95%">
					<c:forEach var="candidateList" items="${ candidateList }" varStatus="status">
						<tr>
							<td style="width:85%; text-align:center;">
								<hr>
								<h4>${ candidateList.cndtNm }</h4>
								<hr>
							</td>
							<td>
								<span class="badge badge-inverse" style="font-size:1.25em">총  ${ candidatePercentList[status.index].candidatePercent }%</span>
							</td>
						</tr>
						<tr>
							<td style="width:95%; text-align:center;" >
								<h5>상세정보</h5>
								<p>
									${ candidateList.cndtDetail }
								</p>
							</td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
			<c:if test="${ voteUser.candidateSeq != null }">
				<table style="width:95%">
					<c:forEach var="candidateList" items="${ candidateList }">
						<tr>
							<td style="width:40%; text-align:center;">
								<hr>
								<h4>${ candidateList.cndtNm }</h4>
								<hr>
							</td>
							<td>
								<c:if test="${ voteUser.candidateSeq == candidateList.gnrVoteCndtEnrollSeq }">
									<span class="badge badge-success" style="height:28px; font-size:1.25em;">선택</span>
								</c:if>
							</td>
						</tr>
						<tr>
							<td style="width:95%; text-align:center;" >
								<h5>상세정보</h5>
								<p>
									${ candidateList.cndtDetail }
								</p>
							</td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>
		<br>
		<br>
	</div>
</div>
</body>
</html>