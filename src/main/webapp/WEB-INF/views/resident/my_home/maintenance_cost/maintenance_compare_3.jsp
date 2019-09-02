<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					<!-- 우리집 관리비 비교 div -->
					<div align="center">
						<form action="">
							<table style="width:100%">
								<tr>
									<td><h4>우리집 관리비 비교</h4></td>
									<td style="width:30%">
										<select class="form-control input-sm" id="compareSelect">
	                                            <option value="month">전월 관리비와 비교</option>
	                                            <option value="year">전년도 동월 관리비와 비교</option>
	                                            <option value="m2" selected>동일 평수 관리비와 비교</option>
	                                    </select>
									</td>
								</tr>
							</table>
						</form>
						<br><br>				
					</div>
					<!-- 동일평수 사용내역 비교 div -->
					<div class="panel-body">
                            <table class="table table-hover" style="text-align:center;">
                                <thead>
                                    <tr>
                                        <td style="font-weight:bold;">개별 사용료</td>
                                        <td style="font-weight:bold;">우리집 관리비</td>
                                        <td style="font-weight:bold;">동일 평수 평균 관리비</td>
                                        <td style="font-weight:bold;">차액 (+/-)</td>
                                    </tr>
                                </thead>
                                <tbody>
                                   <tr>
                                   		<td>난방비</td>
                                   		<td></td>
                                   		<td></td>
                                   		<td></td>
                                   </tr>
                                    <tr>
                                   		<td>급탕비</td>
                                   		<td></td>
                                   		<td></td>
                                   		<td></td>
                                   </tr>
                                    <tr>
                                   		<td>가스 사용료</td>
                                   		<td></td>
                                   		<td></td>
                                   		<td></td>
                                   </tr>
                                    <tr>
                                   		<td>전기료</td>
                                   		<td></td>
                                   		<td></td>
                                   		<td></td>
                                   </tr>
                                    <tr>
                                   		<td>수도료</td>
                                   		<td></td>
                                   		<td></td>
                                   		<td></td>
                                   </tr>
                                    <tr>
                                   		<td>정화조오물 수수료</td>
                                   		<td></td>
                                   		<td></td>
                                   		<td></td>
                                   </tr>
                                    <tr>
                                   		<td>생활폐기물 수수료</td>
                                   		<td></td>
                                   		<td></td>
                                   		<td></td>
                                   </tr>
                                    <tr>
                                   		<td>입대의 운영비</td>
                                   		<td></td>
                                   		<td></td>
                                   		<td></td>
                                   </tr>
                                    <tr>
                                   		<td>건물 보험료</td>
                                   		<td></td>
                                   		<td></td>
                                   		<td></td>
                                   </tr>
                                    <tr>
                                   		<td>선관위 운영비</td>
                                   		<td></td>
                                   		<td></td>
                                   		<td></td>
                                   </tr>
                                </tbody>
                            </table>
                        </div>
                     	<!-- 그래프 비교 div -->
                     				
				</div>
			</div>
		</div>
		<!-- end #content -->
</body>
</html>