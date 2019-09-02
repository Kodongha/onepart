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
<jsp:include page="../maintenance_cost/maintenance_include.jsp"></jsp:include>
<!-- begin #content -->
	<div id="content" class="content" style="margin:0 auto;"> 
					<div align="center">
						<form action="">
							<table style="width:100%">
								<tr>
									<td><h4>우리집 관리비 비교</h4></td>
									<td style="width:30%">
										<select class="form-control input-sm" id="compareSelect">
	                                            <option value="month">전월 관리비와 비교</option>
	                                            <option value="year" selected>전년도 동월 관리비와 비교</option>
	                                            <option value="m2">동일 평수 관리비와 비교</option>
	                                    </select>
									</td>
								</tr>
								<tr>
									<td><br><br><br></td>
								</tr>
								<tr>
									<td></td>
									<td>
										<select class="form-control input-sm" id="compareSelect">
	                                           <c:forEach var="month" begin="1" end="12">
	                                           		<option value='<c:out value="month"></c:out>'>${ month }월</option>
	                                           </c:forEach>
	                                    </select>
									</td>
								</tr>
							</table>
						</form>
						<br>
						<!-- 실제 비교표 div -->
						<div class="panel panel-inverse overflow-hidden">
							<div class="panel-heading">
								<h3 class="panel-title">
									<a class="accordion-toggle accordion-toggle-styled collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false">
									    <i class="fa fa-plus-circle pull-right"></i> 
										공용 관리비
									</a>
								</h3>
							</div>
							<div id="collapseOne" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
								<div class="panel-body">
									<div class="panel-body">
			                            <table class="table table-hover" style="text-align:center;">
			                                <thead>
			                                    <tr>
			                                        <td style="font-weight:bold;">상세분류</td>
			                                        <td style="font-weight:bold;">3월</td>
			                                        <td style="font-weight:bold;">4월</td>
			                                        <td style="font-weight:bold;">5월</td>
			                                        <td style="font-weight:bold;">6월</td>
			                                        <td style="font-weight:bold;">7월</td>
			                                        <td style="font-weight:bold;">8월</td>
			                                    </tr>
			                                </thead>
			                                <tbody>
			                                   <tr>
			                                   		<td>인건비</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>제사무비</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>제세공과금</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>피복비</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>교육훈련비</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>차량유지비</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>그 외 부대비용</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>청소비</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>경비비</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>소독비</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>승강기유지비</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>수선비</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>시설유지비</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>안전점검비</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>재해예방비</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>위탁관리수수료</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                </tbody>
			                            </table>
			                        </div>
								</div>
							</div>
						</div>
						<div class="panel panel-inverse overflow-hidden">
							<div class="panel-heading">
								<h3 class="panel-title">
									<a class="accordion-toggle accordion-toggle-styled collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false">
									    <i class="fa fa-plus-circle pull-right"></i> 
										개별사용료
									</a>
								</h3>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
								<div class="panel-body">
									<div class="panel-body">
			                            <table class="table table-hover" style="text-align:center;">
			                                <thead>
			                                    <tr>
			                                        <td style="font-weight:bold;">상세분류</td>
			                                        <td style="font-weight:bold;">3월</td>
			                                        <td style="font-weight:bold;">4월</td>
			                                        <td style="font-weight:bold;">5월</td>
			                                        <td style="font-weight:bold;">6월</td>
			                                        <td style="font-weight:bold;">7월</td>
			                                        <td style="font-weight:bold;">8월</td>
			                                    </tr>
			                                </thead>
			                                <tbody>
			                                   <tr>
			                                   		<td>난방비</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>급탕비</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>가스사용료</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>전기료</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>수도료</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>정화조오물 수수료</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>생활폐기물 수수료</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>입대의 운영비</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>건물보험료</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>선관위 운영비</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                </tbody>
			                            </table>
			                        </div>
								</div>
							</div>
						</div>
						<div class="panel panel-inverse overflow-hidden">
							<div class="panel-heading">
								<h3 class="panel-title">
									<a class="accordion-toggle accordion-toggle-styled collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false">
									    <i class="fa fa-plus-circle pull-right"></i> 
										장기수선충담금 월 부과액
									</a>
								</h3>
							</div>
							<div id="collapseThree" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
								<div class="panel-body">
									<div class="panel-body">
			                            <table class="table table-hover" style="text-align:center;">
			                                <thead>
			                                    <tr>
			                                        <td style="font-weight:bold;">상세분류</td>
			                                        <td style="font-weight:bold;">3월</td>
			                                        <td style="font-weight:bold;">4월</td>
			                                        <td style="font-weight:bold;">5월</td>
			                                        <td style="font-weight:bold;">6월</td>
			                                        <td style="font-weight:bold;">7월</td>
			                                        <td style="font-weight:bold;">8월</td>
			                                    </tr>
			                                </thead>
			                                <tbody>
			                                   <tr>
			                                   		<td>월 사용액</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>충당금 잔액</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                    <tr>
			                                   		<td>적립요율</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>			                                   
			                                </tbody>
			                            </table>
			                        </div>
								</div>
							</div>
						</div>
						<div class="panel panel-inverse overflow-hidden">
							<div class="panel-heading">
								<h3 class="panel-title">
									<a class="accordion-toggle accordion-toggle-styled collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false">
									    <i class="fa fa-plus-circle pull-right"></i> 
										잡수입
									</a>
								</h3>
							</div>
							<div id="collapseFour" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
								<div class="panel-body">
									<div class="panel-body">
			                            <table class="table table-hover" style="text-align:center;">
			                                <thead>
			                                    <tr>
			                                        <td style="font-weight:bold;">상세분류</td>
			                                        <td style="font-weight:bold;">3월</td>
			                                        <td style="font-weight:bold;">4월</td>
			                                        <td style="font-weight:bold;">5월</td>
			                                        <td style="font-weight:bold;">6월</td>
			                                        <td style="font-weight:bold;">7월</td>
			                                        <td style="font-weight:bold;">8월</td>
			                                    </tr>
			                                </thead>
			                                <tbody>
			                                   <tr>
			                                   		<td>잡수입</td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   		<td></td>
			                                   </tr>
			                                </tbody>
			                            </table>
			                        </div>
								</div>
							</div>
						</div>
					</div>
					<!-- 그래프비교 div -->
					<br>
					<hr>
					<br>
					<br>
					<!-- 공용관리비 / 개별사용료 그래프 div -->
					<div class="col-md-6 ui-sortable">
	                    <div class="panel panel-inverse" data-sortable-id="flot-chart-2">
	                        <div class="panel-heading">
	                            <div class="panel-heading-btn">
	                            </div>
	                            <h4 class="panel-title">공용관리비 / 개별사용료</h4>
	                        </div>
	                        <div class="panel-body">
								<div id="interactive-chart" class="height-sm"
									style="padding: 0px; position: relative;">
									<canvas class="flot-base" width="685" height="450"
										style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 457px; height: 300px;"></canvas>
									<div class="flot-text"
										style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);">
										<div class="flot-x-axis flot-x1-axis xAxis x1Axis"
											style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
											<div class="flot-tick-label tickLabel"
												style="position: absolute; max-width: 57px; top: 284px; left: 22px; text-align: center;">0</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; max-width: 57px; top: 284px; left: 87px; text-align: center;">2</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; max-width: 57px; top: 284px; left: 151px; text-align: center;">4</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; max-width: 57px; top: 284px; left: 216px; text-align: center;">6</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; max-width: 57px; top: 284px; left: 280px; text-align: center;">8</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; max-width: 57px; top: 284px; left: 342px; text-align: center;">10</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; max-width: 57px; top: 284px; left: 406px; text-align: center;">12</div>
										</div>
										<div class="flot-y-axis flot-y1-axis yAxis y1Axis"
											style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
											<div class="flot-tick-label tickLabel"
												style="position: absolute; top: 272px; left: 14px; text-align: right;">0</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; top: 218px; left: 7px; text-align: right;">20</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; top: 165px; left: 7px; text-align: right;">40</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; top: 111px; left: 7px; text-align: right;">60</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; top: 58px; left: 7px; text-align: right;">80</div>
											<div class="flot-tick-label tickLabel"
												style="position: absolute; top: 5px; left: 1px; text-align: right;">100</div>
										</div>
									</div>
									<canvas class="flot-overlay" width="685" height="450"
										style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 457px; height: 300px;"></canvas>
									<div class="legend">
										<div
											style="position: absolute; width: 87px; height: 44px; top: 12px; right: 12px; background-color: rgb(255, 255, 255); opacity: 0.85;">
										</div>
										<table
											style="position: absolute; top: 12px; right: 12px;; font-size: smaller; color: #545454">
											<tbody>
												<tr>
													<td class="legendColorBox"><div
															style="border: 1px solid #ddd; padding: 1px">
															<div
																style="width: 4px; height: 0; border: 5px solid #727cb6; overflow: hidden"></div>
														</div></td>
													<td class="legendLabel">공용관리비</td>
												</tr>
												<tr>
													<td class="legendColorBox"><div
															style="border: 1px solid #ddd; padding: 1px">
															<div
																style="width: 4px; height: 0; border: 5px solid #00acac; overflow: hidden"></div>
														</div></td>
													<td class="legendLabel">개별사용료</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
	                    </div>
			        </div>
			        <!-- 장충금 / 잡수입 그래프 div -->
					
				</div>
		<!-- end #content -->
</body>
</html>