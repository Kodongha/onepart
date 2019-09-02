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
				<!-- 새 시설물 등록 (좌석) div -->
				<div>
					<h4>새 시설물 등록 (좌석)</h4>
					<hr>
					<div align="center">
						<table style="width:80%">
							<tr>
								<td style="font-weight:bold; width:20%; font-size:1.2em">시설명</td>
								<td><input type="text" class="form-control" placeholder="Default input"></td>
							</tr>
							<tr>
								<td style="height:10px"></td>
							</tr>
							<tr>
								<td style="font-weight:bold; font-size:1.2em">위치</td>
								<td><input type="text" class="form-control" placeholder="Default input"></td>
							</tr>
							<tr>
								<td style="height:10px"></td>
							</tr>
							<tr>
								<td style="font-weight:bold; font-size:1.2em">이용시간</td>
								<td><input type="text" class="form-control" placeholder="Default input"></td>
							</tr>
							<tr>
								<td style="height:10px"></td>
							</tr>
							<tr>
								<td style="font-weight:bold; font-size:1.2em">이용료</td>
								<td><input type="text" class="form-control" placeholder="Default input"></td>
							</tr>
							<tr>
								<td style="height:10px"></td>
							</tr>
							<tr>
								<td style="font-weight:bold; font-size:1.2em">수용인원</td>
								<td><input type="text" class="form-control" placeholder="Default input"></td>
							</tr>
							<tr>
								<td style="height:10px"></td>
							</tr>
							<tr>
								<td style="font-weight:bold; font-size:1.2em">면적</td>
								<td><input type="text" class="form-control" placeholder="Default input"></td>
							</tr>
							<tr>
								<td style="height:15px"></td>
							</tr>
							<tr>
								<td colspan="2" style="font-weight:bold; font-size:1.2em">상세정보</td>
							</tr>
							<tr>
								<td colspan="2">
									<textarea class="form-control" placeholder="Textarea" rows="5" style="margin: 0px 1px 0px 0px; width:100%; height: 141px;"></textarea>
								</td>
							</tr>
							<tr>
								<td style="height:15px"></td>
							</tr>
							<tr>
								<td colspan="2" style="font-weight:bold; font-size:1.2em">예약안내</td>
							</tr>
							<tr>
								<td colspan="2">
									<textarea class="form-control" placeholder="Textarea" rows="5" style="margin: 0px 1px 0px 0px; width:100%; height: 141px;"></textarea>
								</td>
							</tr>
							<tr>
								<td style="height:15px"></td>
							</tr>
							<tr>
								<td colspan="2" style="font-weight:bold; font-size:1.2em">이용안내</td>
							</tr>
							<tr>
								<td colspan="2">
									<textarea class="form-control" placeholder="Textarea" rows="5" style="margin: 0px 1px 0px 0px; width:100%; height: 141px;"></textarea>
								</td>
							</tr>
							<tr>
								<td style="height:15px"></td>
							</tr>
						</table>
						<!-- 사진첨부 div -->
						<table style="width:80%">
							<tr>
								<td colspan="2" style="font-weight:bold; font-size:1.2em">시설 사진 등록</td>
							</tr>
							<tr id="plusImageArea">
								<td><input type="file"></td>
								<td style="width:5%"><button type="button" class="btn btn-success m-r-5 m-b-5" onclick="plusImage();" id="plusBtn">+</button></td>
							</tr>
							<tr>
								<td style="height:20px"></td>
							</tr>
							<tr>
								<td colspan="2" style="font-weight:bold; font-size:1.2em">QR코드 사진 등록</td>
							</tr>
							<tr>
								<td style="height:5px"></td>
							</tr>
							<tr>
								<td><input type="file"></td>
								<td style="width:5%"></td>
							</tr>
						</table>
						<br>
						<!-- 좌석등록 div -->
						<table style="width:80%">
							<tr>
								<td style="height:20px" colspan="3"></td>
							</tr>
							<tr>
								<td colspan="3" style="font-weight:bold; font-size:1.2em">좌석 정보 입력</td>
							</tr>
							<tr>
								<td style="width:70%"><input type="text" class="form-control" placeholder="Default input" style="width:100%;" id="createSeatInput"></td>
								<td style="font-size:blod;">&nbsp;개&nbsp;&nbsp;</td>
								<td style="width:25%"><button type="button" class="btn btn-success m-r-5 m-b-5" onclick="createSeat();" style="width:100%">생성</button></td>
							</tr>
							<tr>
								<td style="height:15px"></td>
							</tr>
							<tr>
								<!-- 좌석생성 테이블 div -->
								<td colspan="2" id="seatArea">

								</td>
								<td>
									원하는 위치를 클릭하여 <br>
									좌석을 생성하세요! <br>
									클릭 순서로 좌석번호가  <br>
									부여되며 재클릭시 해제됩니다.
								</td>
							</tr>
						</table>
					</div>
					<br><br>
					<!-- 등록 버튼 div -->
					<!-- 좌석생성 table 추가 script -->
					<script type="text/javascript">
						function createSeat() {
							var createSeat = $("#createSeatInput").val();
							var num = 1;
							var resultNum = 1;
							$("#seatArea table").remove();
							console.log(createSeat);
							var $table = $("<table border='1' style='width:500px; height:500px; text-align:center;'>");
							for(var i = 0; i < createSeat; i++){
								console.log("tr생성");
								var $tr = $("<tr id='seatTr'>");
								for(var j = 0; j < createSeat; j++){
									var $td = $("<td id='seatTd'>");
									var $p = $("<p>");
									$p.append(num)
									$td.append($p);
									$tr.append($td);
									num++;
								}
								$table.append($tr);
							}
							$("#seatArea").append($table);

							$("#seatTr #seatTd").click(function(){
								var number = $(this).text();
								console.log(number);
								$(this).children().remove();
								var $p = $("<p style='font-weight:bold;'>");
								$p.append(resultNum);
								$(this).css("background", "#00acac").append($p);
								resultNum++;
							});
						}
					</script>
					<!-- 첨부파일 추가 input 추가 script -->
					<script type="text/javascript">
						var result = 0;

						function plusImage() {

							result++;
							console.log(result);
							var plusImageArea = $("#plusImageArea");
							var inputImage = $("<input type='file'>");
							var inputTr = $("<tr>");
							var inputTd = $("<td>")
							inputTd.append(inputImage);
							inputTr.append(inputTd)
							plusImageArea.after(inputTr);
							plusImageArea.after("<br>");

							if(result == '5'){
								console.log("aa");
								$("#plusBtn").prop("disabled", true);
							}

						}
					</script>
					<!-- 예약처리 버튼 div -->
	                <div>
	                	<table style="width:80%; margin:0 auto;">
							<tr>
								<td><a class="btn btn-white" style="width:100%">등록</a></td>
								<td style="width:10%"></td>
								<td><a class="btn btn-white" style="width:100%">취소</a></td>
							</tr>
						</table>
	                </div>
				</div>
			</div>
			</div>
</body>
</html>