<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../facility/facility_include.jsp"></jsp:include>
<div style="width:85%; margin:0 auto">
			<!-- 전체 div -->
			<div>
				<!-- 나의 예약현황 div -->
				<div>
					<h4>시설물 예약신청 리스트</h4>
					<div class="panel-body" style="background:white">
                            <table class="table table-hover" style="text-align:center;">
                                <thead>
                                    <tr>
                                        <td style="font-weight:bold;">예약번호</td>
                                        <td style="font-weight:bold;">시설명</td>
                                        <td style="font-weight:bold;">이용날짜</td>
                                        <td style="font-weight:bold;">이용시간</td>
                                        <td style="font-weight:bold;">신청일</td>
                                        <td style="font-weight:bold;">신청인 명</td>
                                        <td style="font-weight:bold;">현황</td>
                                    </tr>
                                </thead>
                                <tbody>
									<c:forEach var="reservationList" items="${ reservationList }">
									<tr onclick="detailReservation(${ reservationList.facRsrvSeq });">
										<td>${ reservationList.facRsrvSeq }</td>
										<td>${ reservationList.facNm }</td>
										<td>${ reservationList.propUseDt }</td>
										<td>${ reservationList.propUseTm }</td>
										<td>${ reservationList.enrollDt }</td>
										<td>${ reservationList.residentNm }</td>
										<td>
											<c:if test="${ reservationList.propStatus == 1}">
												예약대기
											</c:if>
											<c:if test="${ reservationList.propStatus == 2}">
												예약완료
											</c:if>
											<c:if test="${ reservationList.propStatus == 3}">
												예약반려
											</c:if>
										</td>
									</tr>
                                	</c:forEach>
                                </tbody>
                            </table>
                        </div>
				</div>
				<br><br><br>
				<!-- 시설물 등록 버튼 div -->
				<div>
					<table style="width:100%; margin:0 auto;">
						<tr>
							<td style="width:47%"><a id="newFacility_general" class="btn btn-white" style="width:100%">새 시설물 등록&nbsp;(예약)</a></td>
							<td></td>
							<td style="width:47%"><a id="newFacility_seat" class="btn btn-white" style="width:100%">새 시설물 등록&nbsp;(좌석)</a></td>
						</tr>
					</table>
				</div>
				<br><br>
				<!-- 우리아파트 공공시설물 div -->
				<div>
					<h4>우리아파트 공공시설물</h4>
					<!-- 공공시설물 리스트 div -->
					<div style="width:100%">

                            <ul class="result-list">
                            <c:forEach var="list" items="${ list }">
                            	<li>
                            		<div class="result-image" style="width:20%">
                                    	<a href="javascript:;"><img src="${ contextPath }/resources/uploadFiles/reservation/${ list.changeNm }" alt="" /></a>
	                                </div>
	                                <div class="result-info" style="width:65%">
	                                	<br>
	                                    <h4 class="title"><a href="javascript:;">${ list.facNm }</a></h4>
	                                    <br>
	                                    <p class="desc">
	                                       	 위치 : ${ list.facPosition }
	                                    </p>
	                                    <p class="desc">
	                                        	이용시간 : ${ list.facAvailWeekOfDay } ${ list.facAvailTm }
	                                    </p>
	                                    <p class="desc">
	                                        	이용료 : 시간당 ${ list.facDefaultFee }원
	                                    </p>
	                                </div>
	                                <div class="result-price" align="center">
	                                	<c:if test="${ list.facType == 2}">
	                                    <a onclick="modifyGeneral(${list.facSeq});" class="btn btn-inverse btn-block" style="margin:0 auto; margin-top:85%">수정</a>
	                                    <a onclick="deleteGeneral(${list.facSeq});" class="btn btn-inverse btn-block" style="margin:0 auto; margin-top:10%">삭제</a>
	                                    </c:if>
	                                    <c:if test="${ list.facType == 1}">
	                                    <a onclick="modifySeat(${list.facSeq});" class="btn btn-inverse btn-block" style="margin:0 auto; margin-top:85%">수정</a>
	                                    <a onclick="deleteSeat(${list.facSeq});" class="btn btn-inverse btn-block" style="margin:0 auto; margin-top:10%">삭제</a>
	                                    </c:if>
	                                </div>
                            	</li>
                            </c:forEach>
                            </ul>
					</div>
				</div>
			</div>
</div>
</body>
</html>