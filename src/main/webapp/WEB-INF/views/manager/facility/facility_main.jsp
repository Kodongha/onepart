<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<!-- 나의 예약현황 div -->
				<div>
					<h4>시설물 예약신청 리스트</h4>
					<div class="panel-body">
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
                                   <tr id="facility_reservationDetail">
                                   		<td>1</td>
                                   		<td>은혜아파트 공동 대 강당</td>
                                   		<td>2019-08-30</td>
                                   		<td>09:00~12:00</td>
                                   		<td>2019-08-28</td>
                                   		<td>김은혜</td>
                                   		<td>예약대기</td>
                                   </tr>
                                    <tr>
                                   		<td>2</td>
                                   		<td>은혜아파트 공동 대 강당</td>
                                   		<td>2019-08-30</td>
                                   		<td>09:00~12:00</td>
                                   		<td>2019-08-28</td>
                                   		<td>고동하</td>
                                   		<td>예약반려</td>
                                   </tr>
                                    <tr>
                                   		<td>3</td>
                                   		<td>은혜아파트 공동 대 강당</td>
                                   		<td>2019-08-30</td>
                                   		<td>09:00~12:00</td>
                                   		<td>2019-08-28</td>
                                   		<td>김영준</td>
                                   		<td>예약완료</td>
                                   </tr>
                                </tbody>
                            </table>
                        </div>
				</div>
				<br><br>
				<!-- 시설물 등록 버튼 div -->
				<div>
					<table style="width:100%; margin:0 auto;">
						<tr>
							<td><a id="newFacility_general" class="btn btn-white" style="width:90%">새 시설물 등록(예약)</a></td>
							<td><a id="newFacility_seat" class="btn btn-white" style="width:90%">새 시설물 등록(좌석)</a></td>
						</tr>
					</table>
				</div>
				<br><br>
				<!-- 우리아파트 공공시설물 div -->
				<div>
					<h4>우리아파트 공공시설물</h4>
					<br>
					<!-- 공공시설물 리스트 div -->
					<div style="width:100%">

                            <ul class="result-list">
                            <li>
                                <div class="result-image">
                                    <a href="javascript:;"><img src="${ contextPath }/resources/images/gangdang.PNG" alt="" /></a>
                                </div>
                                <div class="result-info" style="width:50%">
                                	<br>
                                    <h4 class="title"><a href="javascript:;">은혜아파트 공동 대 강당</a></h4>
                                    <br>
                                    <p class="desc">
                                       	 위치 : 102동 관리사무소 옆 이벤트 홀 B1
                                    </p>
                                    <p class="desc">
                                        	이용시간 : 월 ~ 금 09:00 ~ 21: 00 / 주말 및 공휴일 예약 불가
                                    </p>
                                    <p class="desc">
                                        	이용료 : 시간당 10,000원
                                    </p>
                                </div>
                                <div class="result-price" align="center">
                                	<table>
                                		<tr>
                                			<td><a id="facility_modify_general" class="btn btn-inverse btn-block">수정</a></td>
                                			<td style="width:10%"></td>
                                			<td><a href="#" class="btn btn-inverse btn-block">삭제</a></td>
                                		</tr>
                                	</table>
                                </div>
                            </li>
                            <li>
                                <div class="result-image">
                                    <a href="javascript:;"><img src="${ contextPath }/resources/images/gangdang.PNG" alt="" /></a>
                                </div>
                                <div class="result-info" style="width:50%">
                                	<br>
                                    <h4 class="title"><a href="javascript:;">은혜아파트 독서실</a></h4>
                                    <br>
                                    <p class="desc">
                                       	위치 : 아파트 후문 옆 OO문화체험관 F층
                                    </p>
                                    <p class="desc">
                                        	이용시간 : 월 ~ 금 09:00 ~ 23: 00 / 토~일 09~00 ~ 21:00
                                    </p>
                                    <p class="desc">
                                        	이용료 : 무료
                                    </p>
                                </div>
                                <div class="result-price" align="center">
                                    <table>
                                		<tr>
                                			<td><a id="facility_modify_seat" class="btn btn-inverse btn-block">수정</a></td>
                                			<td style="width:10%"></td>
                                			<td><a href="#" class="btn btn-inverse btn-block">삭제</a></td>
                                		</tr>
                                	</table>
                                </div>
                            </li>
                            <li>
                                <div class="result-image">
                                    <a href="javascript:;"><img src="${ contextPath }/resources/images/gangdang.PNG" alt="" /></a>
                                </div>
                                <div class="result-info" style="width:50%">
                                	<br>
                                    <h4 class="title"><a href="javascript:;">은혜아파트 공동 대 강당</a></h4>
                                    <br>
                                    <p class="desc">
                                       	 위치 : 102동 관리사무소 옆 이벤트 홀 B1
                                    </p>
                                    <p class="desc">
                                        	이용시간 : 월 ~ 금 09:00 ~ 21: 00 / 주말 및 공휴일 예약 불가
                                    </p>
                                    <p class="desc">
                                        	이용료 : 시간당 10,000원
                                    </p>
                                </div>
                                <div class="result-price" align="center">
                                    <table>
                                		<tr>
                                			<td><a href="#" class="btn btn-inverse btn-block">수정</a></td>
                                			<td style="width:10%"></td>
                                			<td><a href="#" class="btn btn-inverse btn-block">삭제</a></td>
                                		</tr>
                                	</table>
                                </div>
                            </li>
                            <li>
                                <div class="result-image">
                                    <a href="javascript:;"><img src="${ contextPath }/resources/images/gangdang.PNG" alt="" /></a>
                                </div>
                                <div class="result-info" style="width:50%">
                                	<br>
                                    <h4 class="title"><a href="javascript:;">은혜아파트 공동 대 강당</a></h4>
                                    <br>
                                    <p class="desc">
                                       	 위치 : 102동 관리사무소 옆 이벤트 홀 B1
                                    </p>
                                    <p class="desc">
                                        	이용시간 : 월 ~ 금 09:00 ~ 21: 00 / 주말 및 공휴일 예약 불가
                                    </p>
                                    <p class="desc">
                                        	이용료 : 시간당 10,000원
                                    </p>
                                </div>
                                <div class="result-price" align="center">
                                    <table>
                                		<tr>
                                			<td><a href="#" class="btn btn-inverse btn-block">수정</a></td>
                                			<td style="width:10%"></td>
                                			<td><a href="#" class="btn btn-inverse btn-block">삭제</a></td>
                                		</tr>
                                	</table>
                                </div>
                            </li>
                            <li>
                                <div class="result-image">
                                    <a href="javascript:;"><img src="${ contextPath }/resources/images/gangdang.PNG" alt="" /></a>
                                </div>
                                <div class="result-info" style="width:50%">
                                	<br>
                                    <h4 class="title"><a href="javascript:;">은혜아파트 공동 대 강당</a></h4>
                                    <br>
                                    <p class="desc">
                                       	 위치 : 102동 관리사무소 옆 이벤트 홀 B1
                                    </p>
                                    <p class="desc">
                                        	이용시간 : 월 ~ 금 09:00 ~ 21: 00 / 주말 및 공휴일 예약 불가
                                    </p>
                                    <p class="desc">
                                        	이용료 : 시간당 10,000원
                                    </p>
                                </div>
                                <div class="result-price" align="center">
                                    <table>
                                		<tr>
                                			<td><a href="#" class="btn btn-inverse btn-block">수정</a></td>
                                			<td style="width:10%"></td>
                                			<td><a href="#" class="btn btn-inverse btn-block">삭제</a></td>
                                		</tr>
                                	</table>
                                </div>
                            </li>
                            </ul>
					</div>
				</div>
			</div>
</div>
</body>
</html>