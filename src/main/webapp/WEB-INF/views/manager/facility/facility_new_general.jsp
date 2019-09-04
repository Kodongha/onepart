<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${contextPath }/resources/js/jquery.form.js"></script>
</head>
<body>
<jsp:include page="../facility/facility_include.jsp"></jsp:include>
<div style="width:85%; margin:0 auto">
			<!-- 전체 div -->
			<div>
				<!-- 새 시설물 등록 (예약) div -->
				<div>
					<h4>새 시설물 등록 (예약)</h4>
					<div align="center" style="background:white">
						<br><br>
						<table style="width:90%">
							<tr>
								<td style="font-weight:bold; width:20%; font-size:1.2em">시설명</td>
								<td colspan="3"><input type="text" class="form-control" placeholder="Default input" id="facNm"></td>
							</tr>
							<tr>
								<td style="height:10px"></td>
							</tr>
							<tr>
								<td style="font-weight:bold; font-size:1.2em">위치</td>
								<td colspan="3"><input type="text" class="form-control" placeholder="Default input" id="facPosition"></td>
							</tr>
							<tr>
								<td style="height:10px"></td>
							</tr>
							<tr>
								<td style="font-weight:bold; font-size:1.2em">이용요일</td>
								<td>
									<select class="form-control input-sm" id="facAvailWeekOfDayStart">
	                                  	<option>월</option>
	                                  	<option>화</option>
	                                  	<option>수</option>
	                                  	<option>목</option>
	                                  	<option>금</option>
	                                  	<option>토</option>
	                                  	<option>일</option>
	                           		</select>
								</td>
								<td style="text-align:center">~ </td>
								<td>
									<select class="form-control input-sm" id="facAvailWeekOfDayEnd">
	                                  	<option>월</option>
	                                  	<option>화</option>
	                                  	<option>수</option>
	                                  	<option>목</option>
	                                  	<option>금</option>
	                                  	<option>토</option>
	                                  	<option>일</option>
	                           		</select>
								</td>
							</tr>
							<tr>
								<td style="height:10px"></td>
							</tr>
							<tr>
								<td style="font-weight:bold; font-size:1.2em">이용시간</td>
								<td>
									<select class="form-control input-sm" id="facAvailTmStart">
	                                  	<option>09:00</option>
	                                  	<option>10:00</option>
	                                  	<option>11:00</option>
	                                  	<option>12:00</option>
	                                  	<option>13:00</option>
	                                  	<option>14:00</option>
	                                  	<option>15:00</option>
	                                  	<option>16:00</option>
	                                  	<option>17:00</option>
	                                  	<option>18:00</option>
	                                  	<option>19:00</option>
	                                  	<option>20:00</option>
	                                  	<option>21:00</option>
	                               		<option>22:00</option>
	                           		</select>
								</td>
								<td style="text-align:center">~ </td>
								<td>
									<select class="form-control input-sm" id="facAvailTmEnd">
	                                  	<option>10:00</option>
	                                  	<option>11:00</option>
	                                  	<option>12:00</option>
	                                  	<option>13:00</option>
	                                  	<option>14:00</option>
	                                  	<option>15:00</option>
	                                  	<option>16:00</option>
	                                  	<option>17:00</option>
	                                  	<option>18:00</option>
	                                  	<option>19:00</option>
	                                  	<option>20:00</option>
	                                  	<option>21:00</option>
	                               		<option>22:00</option>
	                               		<option>23:00</option>
	                           		</select>
								</td>
							</tr>
							<tr>
								<td style="height:10px"></td>
							</tr>
							<tr>
								<td style="font-weight:bold; font-size:1.2em">이용료</td>
								<td colspan="3"><input type="text" class="form-control" placeholder="Default input" id="facDefaultFee"></td>
							</tr>
							<tr>
								<td style="height:10px"></td>
							</tr>
							<tr>
								<td style="font-weight:bold; font-size:1.2em">수용인원</td>
								<td colspan="3"><input type="text" class="form-control" placeholder="Default input" id="facMaxHead"></td>
							</tr>
							<tr>
								<td style="height:10px"></td>
							</tr>
							<tr>
								<td style="font-weight:bold; font-size:1.2em">면적</td>
								<td colspan="3"><input type="text" class="form-control" placeholder="Default input" id="facSquareMeasure"></td>
							</tr>
							<tr>
								<td style="height:60px"></td>
							</tr>
							<tr>
								<td colspan="4" style="font-weight:bold; font-size:1.2em">상세정보</td>
							</tr>
							<tr>
								<td colspan="4">
									<textarea id="facDetailInfo" class="form-control" placeholder="Textarea" rows="5" style="margin: 0px 1px 0px 0px; width:100%; height: 141px;"></textarea>
								</td>
							</tr>
							<tr>
								<td style="height:15px"></td>
							</tr>
							<tr>
								<td colspan="4" style="font-weight:bold; font-size:1.2em">예약안내</td>
							</tr>
							<tr>
								<td colspan="4">
									<textarea id="facRsrvInfo" class="form-control" placeholder="Textarea" rows="5" style="margin: 0px 1px 0px 0px; width:100%; height: 141px;"></textarea>
								</td>
							</tr>
							<tr>
								<td style="height:15px"></td>
							</tr>
							<tr>
								<td colspan="4" style="font-weight:bold; font-size:1.2em">이용안내</td>
							</tr>
							<tr>
								<td colspan="4">
									<textarea id="facUseInfo" class="form-control" placeholder="Textarea" rows="5" style="margin: 0px 1px 0px 0px; width:100%; height: 141px;"></textarea>
								</td>
							</tr>
							<tr>
								<td style="height:15px"></td>
							</tr>
						</table>
						<!-- 사진첨부 div -->
						<br><br><br><br>
						<form name="frmList" id="frmList" >
						<table style="width:90%">
							<tr>
								<td colspan="2" style="font-weight:bold; font-size:1.2em">시설 사진 등록</td>
							</tr>
							<tr id="plusImageArea">
								<td style="width:80%" id="imgTd">
									<span class="btn btn-default fileinput-button" id="fileinputSpan" style="width:95%">
	                                    <i class="fa fa-plus" id="icon"></i>
	                                    <span id="text">Add files...</span>
	                                </span>
                                    <input type="file" name="files[]" id="fileInsert">
								</td>
								<td style="width:5%">
									<button class="btn btn-default" id="plusfileinputSpan" style="width:90%" onclick="plusImage();">
	                                    <span>+</span>
	                                </button>
								</td>
							</tr>
							<tr>
								<td style="height:20px"></td>
							</tr>
						</table>
						</form>
						<br><br><br><br>
						<table style="width:90%; margin:0 auto;">
							<tr>
								<td><a class="btn btn-success" style="width:100%" onclick="insertNewGeneral();">등록</a></td>
								<td style="width:5%"></td>
								<td><a class="btn btn-danger" style="width:100%">취소</a></td>
							</tr>
						</table>
						<br><br>
					</div>
					<br><br>
					<!-- 등록 버튼 div -->
					<!-- 첨부파일 추가 input 추가 script -->
					<script type="text/javascript">
						var result = 1;

						function plusImage() {

							result++;
							console.log(result);
							var plusImageArea = $("#plusImageArea");
							var imgTr = $("<tr>");
							var imgTd = $("<td>").css("width", "80%");
							var fileinputSpan = $("<span class='btn btn-default fileinput-button' id='fileinputSpan'>").css("width", "95%");
							var icon = $("<i class='fa fa-plus'>");
							var text = $("<span>").text("Add files...");
							var inputFile = $("<input type='file' name='files[]' id='fileInsert'>").hide();

							fileinputSpan.id = 'fileinputSpan';

							fileinputSpan.append(icon);
							fileinputSpan.append(text).click(function(){
								inputFile.click().change(function(){
									fileinputSpan.text($(this).val())
								});
							});
							imgTd.append(fileinputSpan);
							imgTd.append(inputFile);
							imgTr.append(imgTd);
							plusImageArea.after(imgTr);



							plusImageArea.after("<br>");

							if(result == '5'){
								console.log("aa");
								$("#plusfileinputSpan").prop("disabled", true);
							}

						}

						$(function(){
							$("#fileInsert").hide();

							$("#fileinputSpan").click(function(){
								console.log("click!!")
					               $("#fileInsert").click();
					            });

							$("#fileInsert").change(function(){
								$("#fileinputSpan").text($(this).val());
							});
						});

						function insertNewGeneral() {
							console.log("insertNewGeneral");
							var facNm = $("#facNm").val();
							var facPosition = $("#facPosition").val();
							var facAvailWeekOfDayStart = $("#facAvailWeekOfDayStart").val();
							var facAvailWeekOfDayEnd = $("#facAvailWeekOfDayEnd").val();
							var facAvailWeekOfDay = facAvailWeekOfDayStart + " ~ " + facAvailWeekOfDayEnd;
							var facAvailTmStart = $("#facAvailTmStart").val();
							var facAvailTmEnd = $("#facAvailTmEnd").val();
							var facAvailTm = facAvailTmStart + " ~ " + facAvailTmEnd;
							var facDefaultFee = $("#facDefaultFee").val();
							var facMaxHead = $("#facMaxHead").val();
							var facSquareMeasure = $("#facSquareMeasure").val();
							var facDetailInfo = $("#facDetailInfo").val();
							var facRsrvInfo = $("#facRsrvInfo").val();
							var facUseInfo = $("#facUseInfo").val();

							var imgArr = new Array();
							$("td > span").each(function(){
								console.log($(this).text());
								imgArr.push($(this).text());
							});

							var Reservation = {
									facNm:facNm,
									facPosition:facPosition,
									facAvailWeekOfDay:facAvailWeekOfDay,
									facAvailTm:facAvailTm,
									facDefaultFee:facDefaultFee,
									facMaxHead:facMaxHead,
									facSquareMeasure:facSquareMeasure,
									facDetailInfo:facDetailInfo,
									facRsrvInfo:facRsrvInfo,
									facUseInfo:facUseInfo
							}

							console.log(Reservation);

							$("#frmList").ajaxForm({
								url:"/onepart/manager/newFacility_general",
								enctype:"multipart/form-data",
								data:{Reservation:Reservation},
								dataType:"json",
								success:function(){
									console.log("insert 성공");
								}
							});

							$("#frmList").submit();



						}
					</script>
					<!-- 예약처리 버튼 div -->
	                <div>

	                </div>
				</div>
			</div>
			</div>
		<br><br><br>

</body>
</html>