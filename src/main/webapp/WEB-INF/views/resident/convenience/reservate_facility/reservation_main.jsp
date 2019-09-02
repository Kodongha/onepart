<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.content {
    margin-left: 110px;
    padding: 20px 25px;
}
</style>
</head>
<body>
<!-- 화면 ajax처리 script -->
<script type="text/javascript">
$(document).ready(function() {

	/* 일반시설물 예약진행 */
	$("#reservateGeneral").data("menu-url", "/onepart/resident/reservateGeneral");
	/* 좌석시설물 예약진행 */
	$("#reservatenSeat").data("menu-url", "/onepart/resident/reservatenSeat");
	
	/* 일반시설물 예약진행 */
	$("#reservateGeneral").click(function(){
		var voteUrl = $(this).data("menu-url");
		$.ajax({
			url:voteUrl,
			dataType:"html",
			success:function(result){
				$("#content").html(result);
			}
		});
	});
	/* 좌석시설물 예약진행 */
	$("#reservatenSeat").click(function(){
		var voteUrl = $(this).data("menu-url");
		$.ajax({
			url:voteUrl,
			dataType:"html",
			success:function(result){
				$("#content").html(result);
			}
		});
	});
});
</script>
<!-- begin #content -->
		<div id="content" class="content"> 
			<!-- 타이틀 -->
			<h2>시설물 예약하기</h2>
			<br><br><br>
			<!-- 전체 div -->
			<div>
				<!-- 나의 예약현황 div -->
				<div>
					<h4>나의 예약현황</h4>
					<div class="panel-body">
                            <table class="table table-hover" style="text-align:center;">
                                <thead>
                                    <tr>
                                        <td style="font-weight:bold;">예약번호</td>
                                        <td style="font-weight:bold;">시설명</td>
                                        <td style="font-weight:bold;">이용날짜</td>
                                        <td style="font-weight:bold;">이용시간</td>
                                        <td style="font-weight:bold;">신청일</td>
                                        <td style="font-weight:bold;">현황</td>
                                        <td style="font-weight:bold;">예약취소</td>
                                    </tr>
                                </thead>
                                <tbody>
                                   <tr>
                                   		<td>1</td>
                                   		<td>은혜아파트 공동 대 강당</td>
                                   		<td>2019-08-30</td>
                                   		<td>09:00~12:00</td>
                                   		<td>2019-08-28</td>
                                   		<td>예약대기</td>
                                   		<td><a class="btn btn-danger btn-icon btn-circle btn-xs cancelBtn"><i class="fa fa-times"></i></a></td>
                                   </tr>
                                    <tr>
                                   		<td>2</td>
                                   		<td>은혜아파트 공동 대 강당</td>
                                   		<td>2019-08-30</td>
                                   		<td>09:00~12:00</td>
                                   		<td>2019-08-28</td>
                                   		<td>예약완료</td>
                                   		<td></td>
                                   </tr>
                                    <tr>
                                   		<td>3</td>
                                   		<td>은혜아파트 공동 대 강당</td>
                                   		<td>2019-08-30</td>
                                   		<td>09:00~12:00</td>
                                   		<td>2019-08-28</td>
                                   		<td>예약반려</td>
                                   		<td></td>
                                   </tr>
                                </tbody>
                            </table>
                        </div>
				</div>
				<!-- 취소처리 모달 -->
				<div class="panel panel-danger cancelModal" data-sortable-id="ui-widget-13" style="width:30%">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove" data-original-title="" title=""><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">예약 취소하기</h4>
                        </div>
                        <div class="panel-body" style="text-align:center;">
                            <p>해당 예약 내역을 취소하시겠습니까?</p>
                            <br>
                            <a href="javascript:;" class="btn btn-white btn-xs">확인</a>
                            <a href="javascript:;" class="btn btn-white btn-xs">취소</a>
                        </div>
               </div>
               <!-- 스크립트 -->
               <script type="text/javascript">

               </script>
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
                                    <a id="reservateGeneral" class="btn btn-inverse btn-block">예약하기</a>
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
                                    <a id="reservatenSeat" class="btn btn-inverse btn-block">예약하기</a>
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
                                    <a href="reservation.me" class="btn btn-inverse btn-block">예약하기</a>
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
                                    <a href="reservation.me" class="btn btn-inverse btn-block">예약하기</a>
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
                                    <a href="reservation.me" class="btn btn-inverse btn-block">예약하기</a>
                                </div>
                            </li>
                            </ul>
					</div>
				</div>
			</div>
		</div>
		<!-- end #content -->
</body>
</html>