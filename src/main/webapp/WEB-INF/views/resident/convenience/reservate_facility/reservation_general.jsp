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
<!-- begin #content -->
	<div id="content" class="content">
			<!-- begin page-header -->
			<h2>시설물 예약하기</h2>
			<!-- end page-header -->
			<br><br><br>
			<!-- 시설물 정보 div -->
				<div>
					 <ul class="result-list">
                            <li>
                                <div class="result-image">
                                    <a href="javascript:;"><img src="${ contextPath }/resources/images/gangdang.PNG" alt="" /></a>
                                </div>
                                <div class="result-info" style="width:50%">
                                	<br>
                                    <h4 class="title"><a href="javascript:;">은혜아파트 공동 대 강당</a></h4>
                                    <br>
                                    <p class="desc" style="margin-bottom:5px">
                                       	 위치 : 102동 관리사무소 옆 이벤트 홀 B1
                                    </p>
                                    <p class="desc" style="margin-bottom:5px">
                                        	이용시간 : 월 ~ 금 09:00 ~ 21: 00 / 주말 및 공휴일 예약 불가
                                    </p>
                                    <p class="desc" style="margin-bottom:5px">
                                        	이용료 : 시간당 10,000원
                                    </p>
                                    <p class="desc" style="margin-bottom:5px">
                                        	수용인원 : 50명
                                    </p>
                                    <p class="desc" style="margin-bottom:5px">
                                        	면적 : 100m^
                                    </p>
                                    <br>
                                </div>
                                <div class="result-price" align="center">
                                	<div style="margin:auto auto;">
                                	<h4>상세보기 QR code</h4>
                                    <img src="${ contextPath }/resources/images/QR Code.PNG" alt="" style="width:50%" />
                                    </div>
                                </div>
                            </li>
                      </ul>
				</div>
			<!-- 예약하기 Wizards -->
			<br><br>
			<div class="row">
                <!-- begin col-12 -->
			    <div class="col-md-12 ui-sortable">
			        <!-- begin panel -->
                    <div class="panel panel-inverse" style="">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">예약 진행하기</h4>
                        </div>
                        <div class="panel-body">
                            <form action="/" method="POST" data-parsley-validate="true" name="form-wizard" novalidate="">
								<div id="wizard" class="bwizard clearfix">
							<ol class="bwizard-steps clearfix clickable" role="tablist"
								style="padding-left: 0;">
								<li role="tab" aria-selected="true" class="active" style="z-index: 4; width: 25%">
									<span class="label badge-inverse">1</span>
									<a href="#step1" class="hidden-phone"> 공공시설 상세정보 </a>
									<a href="#step1" class="hidden-phone"><small>공공시설물의 상세정보를 확인하고 원하는
										시간이나 좌석을 선택합니다.</small>
									</a>
									<a href="#step1" class="hidden-phone"> </a>
								</li>
								<li role="tab" aria-selected="false" style="z-index: 3; width: 25%">
									<span class="label">2</span>
									<a href="#step2" class="hidden-phone"> 약관동의 </a>
									<a href="#step2" class="hidden-phone"><small>공공시설물을 예약하기 위한 약관동의와
											주의사항을 확인합니다.</small></a>
									<a href="#step2" class="hidden-phone"> </a>
								</li>
								<li role="tab" aria-selected="false" style="z-index: 2; width: 25%">
									<span class="label">3</span>
									<a href="#step3" class="hidden-phone"> 상세 예약사항 </a>
									<a href="#step3" class="hidden-phone"><small>상세 예약사항을
											작성합니다.</small></a><a href="#step3" class="hidden-phone"> </a>
								</li>
								<li role="tab" aria-selected="false" style="z-index: 1; width: 25%">
									<span class="label">4</span>
									<a href="#step4" class="hidden-phone"> 신청인 정보 </a>
									<a href="#step4" class="hidden-phone"><small>신청인 정보를 작성합니다.</small></a>
									<a href="#step4" class="hidden-phone"> </a>
								</li>
							</ol>

							<div class="well">
                                    <!-- 공공시설 상세정보  div -->
									<!-- <div class="wizard-step-1 bwizard-activated" id="step1" role="tabpanel" aria-hidden="false">
                                    	예약날짜 설정 div
                                    	<h5>예약날짜 설정</h5>
										<div class="form-group">
											<div id="datepicker-inline">
												<div></div>
												<div class="datepicker datepicker-inline">
													<div class="datepicker-days">
														<table class=" table-condensed">
															<thead>
																<tr>
																	<th class="prev" style="visibility: visible;">«</th>
																	<th colspan="5" class="datepicker-switch">August
																		2019</th>
																	<th class="next" style="visibility: visible;">»</th>
																</tr>
																<tr>
																	<th class="dow">Su</th>
																	<th class="dow">Mo</th>
																	<th class="dow">Tu</th>
																	<th class="dow">We</th>
																	<th class="dow">Th</th>
																	<th class="dow">Fr</th>
																	<th class="dow">Sa</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td class="old day">28</td>
																	<td class="old day">29</td>
																	<td class="old day">30</td>
																	<td class="old day">31</td>
																	<td class="day">1</td>
																	<td class="day">2</td>
																	<td class="day">3</td>
																</tr>
																<tr>
																	<td class="day">4</td>
																	<td class="day">5</td>
																	<td class="active day">6</td>
																	<td class="day">7</td>
																	<td class="day">8</td>
																	<td class="day">9</td>
																	<td class="day">10</td>
																</tr>
																<tr>
																	<td class="day">11</td>
																	<td class="day">12</td>
																	<td class="day">13</td>
																	<td class="day">14</td>
																	<td class="day">15</td>
																	<td class="day">16</td>
																	<td class="day">17</td>
																</tr>
																<tr>
																	<td class="day">18</td>
																	<td class="day">19</td>
																	<td class="day">20</td>
																	<td class="day">21</td>
																	<td class="day">22</td>
																	<td class="today day">23</td>
																	<td class="day">24</td>
																</tr>
																<tr>
																	<td class="day">25</td>
																	<td class="day">26</td>
																	<td class="day">27</td>
																	<td class="day">28</td>
																	<td class="day">29</td>
																	<td class="day">30</td>
																	<td class="day">31</td>
																</tr>
																<tr>
																	<td class="new day">1</td>
																	<td class="new day">2</td>
																	<td class="new day">3</td>
																	<td class="new day">4</td>
																	<td class="new day">5</td>
																	<td class="new day">6</td>
																	<td class="new day">7</td>
																</tr>
															</tbody>
															<tfoot>
																<tr>
																	<th colspan="7" class="today" style="display: none;">Today</th>
																</tr>
																<tr>
																	<th colspan="7" class="clear" style="display: none;">Clear</th>
																</tr>
															</tfoot>
														</table>
													</div>
													<div class="datepicker-months" style="display: none;">
														<table class="table-condensed">
															<thead>
																<tr>
																	<th class="prev" style="visibility: visible;">«</th>
																	<th colspan="5" class="datepicker-switch">2019</th>
																	<th class="next" style="visibility: visible;">»</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td colspan="7"><span class="month">Jan</span><span
																		class="month">Feb</span><span class="month">Mar</span><span
																		class="month">Apr</span><span class="month">May</span><span
																		class="month">Jun</span><span class="month">Jul</span><span
																		class="month active">Aug</span><span class="month">Sep</span><span
																		class="month">Oct</span><span class="month">Nov</span><span
																		class="month">Dec</span></td>
																</tr>
															</tbody>
															<tfoot>
																<tr>
																	<th colspan="7" class="today" style="display: none;">Today</th>
																</tr>
																<tr>
																	<th colspan="7" class="clear" style="display: none;">Clear</th>
																</tr>
															</tfoot>
														</table>
													</div>
													<div class="datepicker-years" style="display: none;">
														<table class="table-condensed">
															<thead>
																<tr>
																	<th class="prev" style="visibility: visible;">«</th>
																	<th colspan="5" class="datepicker-switch">2010-2019</th>
																	<th class="next" style="visibility: visible;">»</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td colspan="7"><span class="year old">2009</span><span
																		class="year">2010</span><span class="year">2011</span><span
																		class="year">2012</span><span class="year">2013</span><span
																		class="year">2014</span><span class="year">2015</span><span
																		class="year">2016</span><span class="year">2017</span><span
																		class="year">2018</span><span class="year active">2019</span><span
																		class="year new">2020</span></td>
																</tr>
															</tbody>
															<tfoot>
																<tr>
																	<th colspan="7" class="today" style="display: none;">Today</th>
																</tr>
																<tr>
																	<th colspan="7" class="clear" style="display: none;">Clear</th>
																</tr>
															</tfoot>
														</table>
													</div>
												</div>
											</div>
										</div>
										<hr>
										상세정보 div
                                    	<h5>상세정보</h5>
                                    	<div>
                                    		<p>
                                    			불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지
                                    		</p>
                                    	</div>
                                    	<hr>
										예약안내 div
                                    	<h5>예약안내</h5>
                                    	<div>
                                    		<p>
                                    			불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지
                                    		</p>
                                    	</div>
                                    	<hr>
										이용안내 div
                                    	<h5>이용안내</h5>
                                    	<div>
                                    		<p>
                                    			불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지
                                    		</p>
                                    	</div>
									</div> -->
									<!-- 약관동의 div -->
									<!-- <div>
										<h5>개인정보 수집</h5>
                                    	<div>
                                    		<p>
                                    			불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지
                                    		</p>
                                    	</div>
                                    	<hr>
                                    	<h5>시설이용시 주의사항</h5>
                                    	<div>
                                    		<p>
                                    			불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지
                                    		</p>
                                    	</div>
                                    	<hr>
                                    	<span style="font-weight:bold;">
                                    		위  내용을 충분히 숙지하셨으며 약관 동의 후 예약을 진행하시겠습니까?
                                    	</span>
                                    	&nbsp;&nbsp;
                                    	<input type="checkbox"><span style="font-weight:bold;">&nbsp;예</span>
                                    	&nbsp;&nbsp;
                                    	<input type="checkbox"><span style="font-weight:bold;">&nbsp;아니요</span>
									</div> -->
									<!-- 상세 예약사항 div -->
									<!-- <div>
									<h5>상세 예약사항</h5>
									<div>
										<table style="width:90%; margin:0 auto;">
											<tr>
												<td style="width:15%">이용날짜</td>
												<td>
													<input type="text" class="form-control" placeholder="Default input">
												</td>
											</tr>
											<tr>
												<td><br></td>
											</tr>
											<tr>
												<td>이용시간</td>
												<td>
													<input type="text" class="form-control" placeholder="Default input">
												</td>
											</tr>
											<tr>
												<td><br></td>
											</tr>
											<tr>
												<td>총 사용시간</td>
												<td>
													<input type="text" class="form-control" placeholder="Default input">
												</td>
											</tr>
											<tr>
												<td><br></td>
											</tr>
											<tr>
												<td>사용료(원)</td>
												<td>
													<input type="text" class="form-control" placeholder="Default input">
												</td>
											</tr>
											<tr>
												<td><br></td>
											</tr>
											<tr>
												<td>사용목적</td>
												<td></td>
											</tr>
											<tr>
												<td colspan="2">
													<textarea class="form-control" placeholder="Textarea" rows="5" style="margin: 0px 1px 0px 0px; width:100%; height: 141px;"></textarea>
												</td>
											</tr>
											<tr>
												<td><br></td>
											</tr>
											<tr>
												<td>기타사항</td>
												<td></td>
											</tr>
											<tr>
												<td colspan="2">
													<textarea class="form-control" placeholder="Textarea" rows="5" style="margin: 0px 1px 0px 0px; width:100%; height: 141px;"></textarea>
												</td>
											</tr>
										</table>
									</div>
								</div> -->
								<!-- 신청인정보 div -->
								<div>
									<h5>상세 예약사항</h5>
									<div>
										<table style="width:90%; margin:0 auto;">
											<tr>
												<td style="width:25%; height:35px">개인 / 단체</td>
												<td align="center">
													<input type="checkbox"><span style="font-weight:bold;">&nbsp;개인</span>
												</td>
												<td align="center">
													<input type="checkbox"><span style="font-weight:bold;">&nbsp;단체</span>
												</td>
											</tr>
											<tr>
												<td><br></td>
											</tr>
											<tr>
												<td>사용인원 (명)</td>
												<td colspan="2">
													<input type="text" class="form-control" placeholder="Default input">
												</td>
											</tr>
											<tr>
												<td><br></td>
											</tr>
											<tr>
												<td>신청인 / 신청단체 명</td>
												<td colspan="2">
													<input type="text" class="form-control" placeholder="Default input">
												</td>
											</tr>
											<tr>
												<td><br></td>
											</tr>
											<tr>
												<td>연락처</td>
												<td colspan="2">
													<input type="text" class="form-control" placeholder="Default input">
												</td>
											</tr>
											<tr>
												<td><br></td>
											</tr>
											<tr>
												<td>동</td>
												<td colspan="2">
													<input type="text" class="form-control" placeholder="Default input">
												</td>
											</tr>
											<tr>
												<td><br></td>
											</tr>
											<tr>
												<td>호수</td>
												<td colspan="2">
													<input type="text" class="form-control" placeholder="Default input">
												</td>
											</tr>
										</table>
									</div>
								</div>
								
								<div class="wizard-step-2 hide" id="step2" role="tabpanel" aria-hidden="true">
										<fieldset>
											<legend class="pull-left width-full">Contact Information</legend>
                                            <!-- begin row -->
                                            <div class="row">
                                                <!-- begin col-6 -->
                                                <div class="col-md-6">
													<div class="form-group">
														<label>Phone Number</label>
														<input type="text" name="phone" placeholder="1234567890" class="form-control" data-parsley-group="wizard-step-2" data-parsley-type="number" required="" data-parsley-id="5965"><ul class="parsley-errors-list" id="parsley-id-5965"></ul>
													</div>
                                                </div>
                                                <!-- end col-6 -->
                                                <!-- begin col-6 -->
                                                <div class="col-md-6">
													<div class="form-group">
														<label>Email Address</label>
														<input type="email" name="email" placeholder="someone@example.com" class="form-control" data-parsley-group="wizard-step-2" data-parsley-type="email" required="" data-parsley-id="6059"><ul class="parsley-errors-list" id="parsley-id-6059"></ul>
													</div>
                                                </div>
                                                <!-- end col-6 -->
                                            </div>
                                            <!-- end row -->
										</fieldset>
									</div><div class="wizard-step-3 hide" id="step3" role="tabpanel" aria-hidden="true">
										<fieldset>
											<legend class="pull-left width-full">Login</legend>
                                            <!-- begin row -->
                                            <div class="row">
                                                <!-- begin col-4 -->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Username</label>
                                                        <div class="controls">
                                                            <input type="text" name="username" placeholder="johnsmithy" class="form-control" data-parsley-group="wizard-step-3" required="" data-parsley-id="3389"><ul class="parsley-errors-list" id="parsley-id-3389"></ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- end col-4 -->
                                                <!-- begin col-4 -->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Pasword</label>
                                                        <div class="controls">
                                                            <input type="password" name="password" placeholder="Your password" class="form-control" data-parsley-group="wizard-step-3" required="" data-parsley-id="9577"><ul class="parsley-errors-list" id="parsley-id-9577"></ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- end col-4 -->
                                                <!-- begin col-4 -->
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Confirm Pasword</label>
                                                        <div class="controls">
                                                            <input type="password" name="password2" placeholder="Confirmed password" class="form-control" data-parsley-id="9376"><ul class="parsley-errors-list" id="parsley-id-9376"></ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- end col-6 -->
                                            </div>
                                            <!-- end row -->
                                        </fieldset>
									</div><div id="step4" role="tabpanel" class="hide" aria-hidden="true">
									    <div class="jumbotron m-b-0 text-center">
                                            <h1>Login Successfully</h1>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris consequat commodo porttitor. Vivamus eleifend, arcu in tincidunt semper, lorem odio molestie lacus, sed malesuada est lacus ac ligula. Aliquam bibendum felis id purus ullamcorper, quis luctus leo sollicitudin. </p>
                                            <p><a class="btn btn-success btn-lg" role="button">Proceed to User Profile</a></p>
                                        </div>
									</div></div><ul class="pager bwizard-buttons"><li class="previous disabled" role="button" aria-disabled="true"><a href="#">← Previous</a></li><li class="next" role="button" aria-disabled="false"><a href="#">Next →</a></li></ul></div>
							</form>
                        </div>
                    </div>
                    <!-- end panel -->
                </div>
                <!-- end col-12 -->
            </div>
            <!-- end row -->
		</div>
		<!-- end #content -->
</body>
</html>