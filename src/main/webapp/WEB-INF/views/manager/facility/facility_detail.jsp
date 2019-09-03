<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../facility/facility_include.jsp"></jsp:include>
<div style="width:95%; margin:0 auto">
			<!-- 전체 div -->
			<div>
			<!-- 시설물예약 상세보기 div -->
			<div>
				<h4>시설물 예약 신청 상세보기</h4>
				<hr>
				<br>
				<h2>예약 No. ${ fr.facRsrvSeq }</h2>
				<div class="panel-body">
                     <table class="table table-hover" style="text-align:center;">
                         <tbody>
                            <tr>
                            		<td style="font-weight:bold; width:30%">시설명</td>
                            		<c:set var="result" value="${ fr.propUseDt }"></c:set>
                            		<c:set var="propUseDt2" value="${fn:substring(result,0,10) }"></c:set>
                                 <td>${ fr.facNm }</td>
                            </tr>
                             <tr>
                            		<td style="font-weight:bold;">이용날짜</td>
                                 <td>${ propUseDt2 }</td>
                            </tr>
                             <tr>
                            		<td style="font-weight:bold;">이용시간</td>
                                 <td>${ fr.propUseTm }</td>
                            </tr>
                            <tr>
                            		<td style="font-weight:bold;">신청일</td>
                                 <td>${ fr.enrollDt }</td>
                            </tr>
                            <tr>
                            		<td style="font-weight:bold;">사용료</td>
                                 <td>${ fr.toalFee }원</td>
                            </tr>
                            <tr>
                            		<td style="font-weight:bold;">사용인원</td>
                                 <td>${ fr.useHeadCount }명</td>
                            </tr>
                            <tr>
                            		<td style="font-weight:bold;">사용목적</td>
                                 <td>${ fr.usePurpose }</td>
                            </tr>
                            <tr>
                            		<td style="font-weight:bold;">기타사항</td>
                                 <td>${ fr.etc }</td>
                            </tr>
                            <tr>
                            		<td style="font-weight:bold;">개인 / 단체</td>
                            		<c:if test="${ fr.rsrvGroupType == 1}">
                            			<td>개인</td>
                            		</c:if>
                            		<c:if test="${ fr.rsrvGroupType == 2}">
                            			<td>딘체</td>
                            		</c:if>
                            </tr>
                            <tr>
                            		<td style="font-weight:bold;">신청자 명</td>
                                 <td>${ fr.residentNm }</td>
                            </tr>
                            <tr>
                            		<td style="font-weight:bold;">연락처</td>
                                <td>${ fr.rsrvPhone }</td>
                            </tr>
                            <tr>
                            		<td style="font-weight:bold;">신청현황</td>
                            		<c:if test="${ fr.propStatus == 1}">
                            			<td>예약대기</td>
                            		</c:if>
                                 	<c:if test="${ fr.propStatus == 2}">
                            			<td>예약완료</td>
                            		</c:if>
                            		<c:if test="${ fr.propStatus == 3}">
                            			<td>예약반려</td>
                            		</c:if>
                            </tr>
                         </tbody>
                     </table>
                </div>
                <!-- 예약처리 버튼 div -->
                <div>
                	<table style="width:100%; margin:0 auto;">
						<tr>
							<td><a  class="btn btn-white" style="width:90%">예약 완료처리</a></td>
							<td><a  class="btn btn-white" style="width:90%">예약 반료처리</a></td>
						</tr>
					</table>
                </div>
			</div>
			</div>
			</div>
</body>
</html>