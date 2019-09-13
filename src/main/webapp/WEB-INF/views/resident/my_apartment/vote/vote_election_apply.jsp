<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../vote/vote_include.jsp"></jsp:include>
<!-- 전체 div -->
<div style="width:85%; margin:0 auto">
	<input type="file" id="thumbnailImg1" name="thumbnailImg1" onchange="loadImg(this, 1)">
		<!-- 신청서 제출 div -->
		<table style="width:100%">
		<tr>
			<td>
				<div class="form-group">
                    <h4>신청서 제출</h4>
                </div>
			</td>
			<td></td>
		</tr>
	</table>
	<div class="panel-body" style="background:white" align="center">
		<br>
		<table style="width:95%; text-align:left;">
			<tr>
				<td style="width:7%">제목</td>
				<td style="width:45%" align="left"><input class="form-control" type="text" style="width:90%; height:100%"></td>
				<td style="width:10%">후보구분</td>
				<td>
					<select class="form-control input-sm" id="conChoice">
						<option>선택하세요</option>
						<c:forEach var="candidateVoteList" items="${ candidateVoteList }">
							<option value="${ candidateVoteList.voteSeq }_${ candidateVoteList.voteNm }">${ candidateVoteList.voteNm }</option>
						</c:forEach>
                    </select>
				</td>
			</tr>
			<tr>
				<td colspan="4"><br></td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<!-- 신청서 div -->
					<div>
						<br>
						<table border="1" style="width:100%; height:900px; text-align:center;">
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
				</td>
			</tr>
		</table>
		<p style="font-weight:bold;">
			<br><br>
			해당 신청서는 선거관리위원회에게 자동으로 전송될 예정이며 <br>
			후보등록 확정 시 신청하신 본인의 휴대전화 문자로 발송해 드립니다. <br>
		</p>
		<br><br>
		<div align="center">
			<table style="width:95%">
				<tr>
					<td><a class="btn btn-success" style="width: 100%" id="applyCandidate">제출</a></td>
					<td style="width:5%"></td>
					<td><a class="btn btn-danger" style="width: 100%" id="cancelCandidate">취소</a></td>
				</tr>
			</table>
		</div>
		<br>
	</div>
</div>
<br><br><br>
<!-- 서명 모달창 -->

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
	/* $(function(){
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

	}); */
	/* 신청서 폼 변경 script */
	$(function(){
		var name;
		var electVoteSeq;
		$("#conChoice").change(function(){
			var result = $(this).val();
			var resultArr = result.split('_');
			electVoteSeq = resultArr[0];
			name = resultArr[1];
			console.log(result);
			var $h4 = $("<h4>");
			$("#candidateCondition h4").remove();
			$h4.append(name);
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