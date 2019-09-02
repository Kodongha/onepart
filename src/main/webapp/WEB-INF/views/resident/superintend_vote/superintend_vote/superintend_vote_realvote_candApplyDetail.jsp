<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../superintend_vote/superintend_vote_include.jsp"></jsp:include>
<jsp:include page="../superintend_vote/superintend_vote_detail_include_2.jsp"></jsp:include>
<!-- 후보신청서 상세보기 div -->
<div style="width:95%; margin:0 auto">
	<!-- title div -->
	<table style="width:95%">
		<tr>
			<td>
				<div class="form-group">
                    <h4>후보신청서 상세보기</h4>                   
                </div>
			</td>
		</tr>
	</table>
	<!-- 신청서 표 div -->
	<div style="width:95%">
	<hr>
	<div align="center">
			<table style="width:95%; text-align:left;">
				<tr>
					<td style="width:7%">제목</td>
					<td style="width:60%" align="left">
						<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter email" style="width:90%; height:100%" readonly="readonly" value="이것은 제목입니다!!">
					</td>
					<td style="width:10%">후보구분</td>
					<td>
						<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter email" style="width:90%; height:100%" readonly="readonly" value="이것은 후보구분입니다!!">
					</td>
				</tr>
				<tr>
					<td colspan="4"><br><br><br></td>
				</tr>
				<tr>
					<td colspan="4" align="center">
						<div style="width:95%; height:1350px; border:1px solid lightgray">
							<!-- 신청서 div -->
							<div>
								<br><br><br>
								<table border="1" style="width:90%; height:900px; text-align:center;">
									<tr style="text-align:center;">
										<td colspan=3 id="candidateCondition" style="height:120px">
										</td>
										<td rowspan="4">
											<div id="">
												<img id="contentImg1" src="/sixDestiny/images/imageSelect.png" style="width:100%; height:100">
											</div>
										</td>
									</tr>
									<tr>
										<td style="width:15%">동 - 호</td>
										<td colspan="2" style="height:80px">104동 601호</td>
									</tr>
									<tr>
										<td>성 명</td>
										<td colspan="2" style="height:80px">김 은 혜</td>
									</tr>
									<tr>
										<td>등록기준지</td>
										<td colspan="2" style="height:80px">경기도 안양시 만안구 석수3동</td>
									</tr>
									<tr>
										<td>주소</td>
										<td colspan="3" style="height:80px">경기도 안양시 만안구 석수3동 코오롱하늘채 104동 601호</td>
									</tr>
									<tr>
										<td>생년월일</td> 
										<td style="width:35%; height:80px">1995년 6월 9일</td>
										<td style="width:15%">성별</td>
										<td>여자</td>
									</tr>
									<tr>
										<td>최종학력</td>
										<td colspan="3" style="height:80px">OOO학교 졸업</td>
									</tr>
									<tr>
										<td>직장주소</td>
										<td style="height:80px">OO전자</td>
										<td>직위</td>
										<td>대표</td>
									</tr>
									<tr>
										<td>직장주소</td>
										<td colspan="3" style="height:80px">서울시 OO구 OO길 OO로</td>
									</tr>
									<tr>
										<td rowspan="5">경력 및 이력</td>
										<td style="height:80px">년 월 일</td>
										<td colspan="2">경력 및 이력사항</td>
									</tr>
									<tr>
										<td>날짜</td>
										<td colspan="2" style="height:80px">경력</td>
									</tr>
									<tr>
										<td>날짜</td>
										<td colspan="2" style="height:80px">경력</td>
									</tr>
									<tr>
										<td>날짜</td>
										<td colspan="2" style="height:80px">경력</td>
									</tr>
									<tr>
										<td>날짜</td>
										<td colspan="2" style="height:80px">경력</td>
									</tr>
									<tr>
										<td colspan="4" style="height:100px">
											위와 같이 대한아파트 동별 대표자선거 제101동 선거구 후보자등록을 신청합니다. <br>
											2019 년     8 월     25 일<br>
											입후보자 : 김 은 혜  &nbsp;&nbsp;<a id="">(인)</a><br><br>
											대한아파트 선거관리위원회위원장 귀하
											<br>											
										</td>
									</tr>
								</table>
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>
</body>
</html>