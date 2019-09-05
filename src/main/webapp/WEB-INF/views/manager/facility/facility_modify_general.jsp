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
<div style="width:85%; margin:0 auto">
			<!-- 전체 div -->
			<div>
				<!-- 시설물 수정 (예약) div -->
				<div>
				<form action="" method="post" enctype="multipart/form-data" id="fileUploadForm">
					<h4>시설물 수정 (예약)</h4>
					<div align="center" style="background:white">
						<br><br>
						<table style="width:90%">
							<tr>
								<td style="font-weight:bold; width:20%; font-size:1.2em">시설명<input type="hidden" class="form-control" placeholder="Default input" id="facSeq" name="facSeq" value="${ rs.facSeq }"></td>
								<td colspan="3"><input type="text" class="form-control" value="${ rs.facNm }" id="facNm" name="facNm"></td>
							</tr>
							<tr>
								<td style="height:10px"></td>
							</tr>
							<tr>
								<td style="font-weight:bold; font-size:1.2em">위치</td>
								<td colspan="3"><input type="text" class="form-control" value="${ rs.facPosition }" id="facPosition" name="facPosition"></td>
							</tr>
							<tr>
								<td style="height:10px"></td>
							</tr>
							<tr>
								<td style="font-weight:bold; font-size:1.2em">이용요일 (${ rs.facAvailWeekOfDay })</td>
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
	                           		<input type="text" id="facAvailWeekOfDay" name="facAvailWeekOfDay">
								</td>
							</tr>
							<tr>
								<td style="height:10px"></td>
							</tr>
							<tr>
								<td style="font-weight:bold; font-size:1.2em">이용시간 (${ rs.facAvailTm })</td>
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
	                           		<input type="text" id="facAvailTm" name="facAvailTm">
								</td>
							</tr>
							<tr>
								<td style="height:10px"></td>
							</tr>
							<tr>
								<td style="font-weight:bold; font-size:1.2em">이용료</td>
								<td colspan="3"><input type="text" class="form-control" value="${ rs.facDefaultFee }" id="facDefaultFee" name="facDefaultFee"></td>
							</tr>
							<tr>
								<td style="height:10px"></td>
							</tr>
							<tr>
								<td style="font-weight:bold; font-size:1.2em">수용인원</td>
								<td colspan="3"><input type="text" class="form-control" value="${ rs.facMaxHead }" id="facMaxHead" name="facMaxHead"></td>
							</tr>
							<tr>
								<td style="height:10px"></td>
							</tr>
							<tr>
								<td style="font-weight:bold; font-size:1.2em">면적</td>
								<td colspan="3"><input type="text" class="form-control" value="${ rs.facSquareMeasure }" id="facSquareMeasure" name="facSquareMeasure"></td>
							</tr>
							<tr>
								<td style="height:15px"></td>
							</tr>
							<tr>
								<td colspan="2" style="font-weight:bold; font-size:1.2em">상세정보</td>
							</tr>
							<tr>
								<td colspan="4">
									<textarea id="facDetailInfo" name="facDetailInfo"class="form-control" rows="5" style="margin: 0px 1px 0px 0px; width:100%; height: 141px;">${ rs.facDetailInfo }</textarea>
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
									<textarea id="facRsrvInfo" name="facRsrvInfo" class="form-control" rows="5" style="margin: 0px 1px 0px 0px; width:100%; height: 141px;">${ rs.facRsrvInfo }</textarea>
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
									<textarea id="facUseInfo" name="facUseInfo" class="form-control" rows="5" style="margin: 0px 1px 0px 0px; width:100%; height: 141px;">${ rs.facUseInfo }</textarea>
								</td>
							</tr>
							<tr>
								<td style="height:15px"></td>
							</tr>

						</table>
						<br><br><br><br>
						<table style="width:90%; margin:0 auto;">
							<tr>
								<td><a class="btn btn-success" style="width:100%" id="btnSubmit">수정</a></td>
								<td style="width:5%"></td>
								<td><a class="btn btn-danger" style="width:100%">취소</a></td>
							</tr>
						</table>
						<br><br>
						<!-- 사진첨부 div -->
					</div>
					<br><br>
					<!-- 등록 버튼 div -->
					<!-- 첨부파일 추가 input 추가 script -->

					<!-- 예약처리 버튼 div -->
	                <div>

	                </div>
	                </form>
				</div>
			</div>
			</div>
		<script type="text/javascript">

		$(function(){
			$("#facAvailWeekOfDay").hide();
			$("#facAvailTm").hide();

			$("#btnSubmit").click(function (event) {
		        event.preventDefault();
		        var facAvailWeekOfDayStart = $("#facAvailWeekOfDayStart").val();
				var facAvailWeekOfDayEnd = $("#facAvailWeekOfDayEnd").val();
				var facAvailWeekOfDay = facAvailWeekOfDayStart + " ~ " + facAvailWeekOfDayEnd;
				$("#facAvailWeekOfDay").val(facAvailWeekOfDay);
				console.log($("#facAvailWeekOfDay").val())
				var facAvailTmStart = $("#facAvailTmStart").val();
				var facAvailTmEnd = $("#facAvailTmEnd").val();
				var facAvailTm = facAvailTmStart + " ~ " + facAvailTmEnd;
				$("#facAvailTm").val(facAvailTm);
				console.log($("#facAvailTm").val())


		        var form = $('#fileUploadForm')[0];

		        var data = new FormData(form);

		        $("#btnSubmit").prop("disabled", true);

		        $.ajax({
		            type: "POST",
		            enctype: 'multipart/form-data',
		            url: "/onepart/manager/update_facility_general",
		            data: data,
		            processData: false,
		            contentType: false,
		            cache: false,
		            timeout: 600000,
		            success: function (data) {
		            	$.ajax({
		        			url:"/onepart/manager/menuFacility",
		        			dataType:"html",
		        			success:function(result){
		        				$("#content").html(result);
		        			}
		        		});
		            },
		            error: function (e) {

		            }
		        });

		    });
		});

		</script>
</body>
</html>