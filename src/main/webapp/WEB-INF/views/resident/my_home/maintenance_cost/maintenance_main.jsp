<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="../maintenance_cost/maintenance_include.jsp"></jsp:include>
<body>
					<!-- 개별 사용내역 div-->
					<h4>개별 사용내역</h4>
					<div class="panel-body">
                            <table class="table table-hover" style="text-align:center;">
                                <thead>
                                    <tr>
                                        <td style="font-weight:bold;">개별 사용료 종류</td>
                                        <td style="font-weight:bold;">금액 (원)</td>
                                    </tr>
                                </thead>
                                <tbody>
                                   <tr>
                                   		<td>난방비</td>
                                   		<td>10000</td>
                                   </tr>
                                   <tr>
                                   		<td>급탕비</td>
                                   		<td>10000</td>
                                   </tr>
                                   <tr>
                                   		<td>가스 사용료</td>
                                   		<td>15000</td>
                                   </tr>
                                   <tr>
                                   		<td>전기료</td>
                                   		<td>10000</td>
                                   </tr>
                                   <tr>
                                   		<td>수도료</td>
                                   		<td>10000</td>
                                   </tr>
                                </tbody>
                            </table>
                        </div>
                     <!-- 납입관리 div -->
                     <h4>납입 관리</h4>
                     <div align="center">
                     	<table>
                     		<tr>
                     			<td>
                     				납입의뢰서(은행용) div
                     				<div>
                     					<fieldset>
                     						<legend><h5>납입의뢰서(은행용)</h5></legend>
                     							<div class="panel-body">
													<table class="table table-hover" style="text-align: center;">
														<tbody>
															<tr>
																<td>당월 부과액</td>
																<td>96,120</td>
															</tr>
															<tr>
																<td>할인 총계</td>
																<td>0</td>
															</tr>
															<tr>
																<td>미납금액</td>
																<td>0</td>
															</tr>
															<tr>
																<td>미납 연체료</td>
																<td>0</td>
															</tr>
														</tbody>
													</table>
												</div>
												<br><br>
												<div class="panel-body">
													<table class="table table-hover" style="text-align: center;">
														<tbody>
															<tr>
																<td>납기 내 금액</td>
																<td>96,120</td>
															</tr>
															<tr>
																<td>납기 후 연체료</td>
																<td>1,920</td>
															</tr>
															<tr>
																<td>납기 후 금액</td>
																<td>98,040</td>
															</tr>
															<tr>
																<td>납부 기한</td>
																<td>2019년 8월 30일</td>
															</tr>
														</tbody>
													</table>
												</div>
                     					</fieldset>
									</div>
                     			</td>
                     			<td style="width:5%; border-right:1px solid black">
                     				
                     			</td>
                     			<td style="width:5%">
                     				
                     			</td>
                     			<td>                     			
                     				납입영수증(입주자용) div
                     				<div>
                     					<fieldset>
                     						<legend><h5>납입 영수증(입주자용)</h5></legend>
                     						<table>
                     						<tr>
                     							<td>
                     								사용요금 div
                     								<table>
                     									<tr>
                     										<td>
                     											<div class="panel-body">
																	<table class="table table-bordered">
																		<tbody>
																			<tr>
																				<td>일반 관리비</td>
																				<td>10000</td>
																			</tr>
																			<tr>
																				<td>수선 유지비</td>
																				<td>10000</td>																	
																			</tr>
																			<tr>
																				<td>위탁관리 수수료</td>
																				<td>10000</td>
																			</tr>
																			<tr>
																				<td>난방비</td>
																				<td>10000</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
                     										</td>
                     									</tr>
                     									<tr>
                     										<td>
                     											<div class="panel-body">
																	<table class="table table-bordered">
																		<tbody>
																			<tr>
																				<td>급탕비</td>
																				<td>10000</td>
																			</tr>
																			<tr>
																				<td>가스 사용료</td>
																				<td>10000</td>																	
																			</tr>
																			<tr>
																				<td>전기료</td>
																				<td>10000</td>
																			</tr>
																			<tr>
																				<td>수도료</td>
																				<td>10000</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
                     										</td>
                     									</tr>
                     									<tr>
                     										<td>
                     											<div class="panel-body">
																	<table class="table table-bordered">
																		<tbody>
																			<tr>
																				<td>정화조오물 수수료</td>
																				<td>10000</td>
																			</tr>
																			<tr>
																				<td>생활폐기물 수수료</td>
																				<td>10000</td>																	
																			</tr>
																			<tr>
																				<td>입대의 운영비</td>
																				<td>10000</td>
																			</tr>
																			<tr>
																				<td>건물 보험료</td>
																				<td>10000</td>
																			</tr>
																			<tr>
																				<td>선관위 운영비</td>
																				<td>10000</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
                     										</td>
                     									</tr>
                     								</table>
												</td>
                     							<td>
                     								금액부과 div
                     								<table>
                     									<tr>
                     										<td>
                     											<div class="panel-body">
										                            <table class="table table-hover" style="text-align:center;">
										                                <tbody>
										                                   <tr>
										                                   		<td>당월 부과액</td>
										                                   		<td>96,120</td>
										                                   </tr>
										                                   <tr>
										                                   		<td>할인총계</td>
										                                   		<td>0</td>
										                                   </tr>
										                                   <tr>
										                                   		<td>미납금액</td>
										                                   		<td>0</td>
										                                   </tr>
										                                   <tr>
										                                   		<td>미납 연체료</td>
										                                   		<td>0</td>
										                                   </tr>
										                                </tbody>
										                            </table>
                        										</div>
                     										</td>
                     									</tr>
                     									<tr>
                     										<td>
                     											<div class="panel-body">
										                            <table class="table table-hover" style="text-align:center;">
										                                <tbody>
										                                   <tr>
										                                   		<td>납기 내 금액</td>
										                                   		<td>96,120</td>
										                                   </tr>
										                                   <tr>
										                                   		<td>납기 후 연체료</td>
										                                   		<td>1,920</td>
										                                   </tr>
										                                   <tr>
										                                   		<td>납기 후 금액</td>
										                                   		<td>98,040</td>
										                                   </tr>
										                                   <tr>
										                                   		<td>납부기한</td>
										                                   		<td>2019년 8월 30일</td>
										                                   </tr>
										                                </tbody>
										                            </table>
                        										</div>
                     										</td>
                     									</tr>
                     								</table>
                     							</td>
                     						</tr>
                     					</table>
                     					</fieldset>
                     				</div>
                     			</td>
                     		</tr>
                     	</table>
                     </div> 
</body>
</html>