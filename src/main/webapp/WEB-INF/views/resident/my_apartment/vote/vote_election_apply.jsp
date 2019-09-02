<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../vote/vote_include.jsp"></jsp:include>
<!-- begin #content -->
	<!-- 전체 div -->
	<div style="width:95%; margin:0 auto">
	<input type="file" id="thumbnailImg1" name="thumbnailImg1" onchange="loadImg(this, 1)">
		<!-- 신청서 제출 div -->
		<div>
		<h4>신청서 제출</h4>
		<hr>
		<div align="center">
			<table style="width:95%; text-align:left;">
				<tr>
					<td style="width:7%">제목</td>
					<td style="width:60%" align="left"><input type="text" style="width:90%; height:100%"></td>
					<td style="width:10%">후보구분</td>
					<td>
						<select class="form-control input-sm" id="conChoice">
								<option value="choice">후보를 선택하세요.</option>
                                   <option value="con1">입대의 회장</option>
                                   <option value="con2">입대의 감사</option>
                                   <option value="con3">동대표</option>
                           </select>
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
											<div id="contentImgArea1">
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
											입후보자 : 김 은 혜  &nbsp;&nbsp;<a id="buttonModal">(인)</a><br><br>
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
			<p style="font-weight:bold;">
				<br><br>
				해당 신청서는 선거관리위원회에게 자동으로 전송될 예정이며 
				후보등록 확정 시 신청하신 본인의 휴대전화 문자로 발송해 드립니다. <br>
			</p>
		</div>
		<br><br>
		<div align="center">
			<table style="width:80%">
				<tr>
					<td><a class="btn btn-white" style="width: 100%" id="applyCandidate">제출</a></td>
					<td style="width:30%"></td>
					<td><a class="btn btn-white" style="width: 100%" id="cancelCandidate">취소</a></td>
				</tr>
			</table>
		</div>
		</div>
		<br><br><br>
	</div>
	<!-- 서명 모달창 -->
	<div class="panel panel-danger" data-sortable-id="ui-widget-13" id="dialog" style="width:450px; height:350px">
         <div class="panel-heading">
             
             <h4 class="panel-title">후보 신청서 서명하기</h4>
         </div>
         <div class="panel-body" style="text-align:center">
             <p>서명자 : 김은혜</p>
         </div>
         <div>
         	<!-- <div class="sigPad" id="smoothed" style="width:404px;">
				<h2>Bezier Curves (constant pen width)</h2>
				<ul class="sigNav">
					<li class="drawIt"><a href="#draw-it" >Draw It</a></li>
					<li class="clearButton"><a href="#clear">Clear</a></li>
				</ul>
			<div class="sig sigWrapper" style="height:auto;">
				<div class="typed"></div>
				<canvas class="pad" width="400" height="250"></canvas>
				<input type="hidden" name="output" class="output">
			</div>
			</div> -->         	
         </div>
         <div align="center">
         	<table style="width:80%">
				<tr>
					<td><a href="#" class="btn btn-white" style="width: 100%" id="">서명</a></td>
					<td style="width:30%"></td>
					<td><a href="#" class="btn btn-white" style="width: 100%" id="cancelName">취소</a></td>
				</tr>
			</table>
         </div>
     </div>
<!-- end #content -->
<script>
	/* 드래그 서명 script */
	/* $(document).ready(function() {
  		$('#smoothed').signaturePad({
			drawOnly:true,
			drawBezierCurves:true,
			lineTop:200
  		});
	}); */

	/* 모달창 띄우기 script */
	$(function(){
		 $( "#dialog" ).hide();
		 
		 $("#buttonModal").click(function(){
			 var test = $(this);
			 var testX = test.offset().left;
			 var testY = test.offset().top;
			 console.log(testX);
			 $( "#dialog" ).show().css({
				 "position": "absolute",
				 "top": testY,
			     "left": testX
			 }); 
		 });
		
		$("#cancelName").click(function(){
			$( "#dialog" ).hide();
		});
		 
	});
	/* 신청서 폼 변경 script */
	$(function(){
		$("#conChoice").change(function(){
			var result = $(this).val();
			var $h4 = $("<h4>");
			if(result == 'con1'){
				$("#candidateCondition h4").remove();
				$h4.append("은혜아파트 입대의 회장 선거");
			}else if(result == 'con2'){
				$("#candidateCondition h4").remove();
				$h4.append("은혜아파트 입대의 감사 선거");
			}else{
				$("#candidateCondition h4").remove();
				$h4.append("은혜아파트 동별 대표자 선거 제 104동 선거구");
			}
			$h4.append("<br>");
			$h4.append("후 보 자 등 록 신 청 서");
			$("#candidateCondition").append($h4);
		});
	});
	/* 이미지 업로드 script */
	$(function(){
		$("#thumbnailImg1").hide();
		
		$("#contentImgArea1").click(function(){
            $("#thumbnailImg1").click();
         });
	});
	
	function loadImg(value, num) {
        if(value.files && value.files[0]) {
           var reader = new FileReader();

           reader.onload = function(e) {
              switch(num){
                 case 1 : $("#contentImg1").attr("src", e.target.result); break;
                 case 2 : $("#contentImg2").attr("src", e.target.result); break;
                 case 3 : $("#contentImg3").attr("src", e.target.result); break;
              }
           }

           reader.readAsDataURL(value.files[0]);
        }
     }
</script>		
</body>
</html>