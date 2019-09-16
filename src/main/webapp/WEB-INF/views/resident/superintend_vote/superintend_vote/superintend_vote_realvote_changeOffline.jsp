<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../superintend_vote/superintend_vote_include.jsp"></jsp:include>
<jsp:include page="../superintend_vote/superintend_vote_detail_include_2.jsp"></jsp:include>
<!-- 오프라인 투표모드 div -->
<div style="width:85%; margin:0 auto">
	<table style="width:100%">
		<tr>
			<td>
				<div class="form-group">
                    <h4>오프라인 투표하기</h4>
                </div>
			</td>
			<td></td>
			<td style="width:15%">
			</td>
		</tr>
	</table>
	<div class="panel-body" style="background:white" align="center">
	<!-- 오프라인 투표하기 div -->
		<div style="width:95%">
		<br>
		<table style="width:95%">
			<tr style="text-align:center;">
				<td>
					<h6 style="color:red; font-weight:bold;">
						현 투표는 1세대 1투표권으로 세대주 명으로만 투표가 가능하며<br><br>
						신분증, 운전면허증, 여권 등 자신의 신분을 증명 할수 있는 서류가 없을 시 투표권을 행사하실 수 없습니다.<br><br>
						또한, 타 세대에 대해서 투표권을 행사하고 적발될 시 선거규정상 벌금형에 처해질 수 있습니다.
					</h6>
				</td>
			</tr>
		</table>
		<br><br><br>
		<table style="width:95%">
			<tr>
				<td style="width:25%">
					<input style="width:100%;" type="text" class="form-control" id="bdNm">
				</td>
				<td style="width:5%">
					<h6 style="font-weight:bold">&nbsp;&nbsp;&nbsp;동</h6>
				</td>
				<td style="width:25%">
					<input style="width:100%;" type="text" class="form-control" id="rmNm">
				</td>
				<td style="width:5%">
					<h6 style="font-weight:bold">&nbsp;&nbsp;&nbsp;호</h6>
				</td>
				<td style="width:5%">
					<h6 style="font-weight:bold">&nbsp;&nbsp;&nbsp;성함</h6>
				</td>
				<td style="width:25%">
					<input style="width:100%;" type="text" class="form-control" id="residentNm">
				</td>
				<td style="width:5%"></td>
				<td>
					<a class="btn btn-danger" style="width: 100%" onclick="confirmResident();">거주 인증</a>
				</td>
			</tr>
		</table>
		<br><br>
		<table style="width:95%">
			<c:if test="${ candidateList != null }">
				<tr>
					<c:forEach var="candidateList" items="${ candidateList }">
						<td>
							<table style="margin:0 auto">
								<tr>
									<td><h2>기호${ candidateList.cndtNo }번 ${ candidateList.residentNm }</h2></td>
								</tr>
								<tr>
									<td><a class="btn btn-white" style="width: 100%" id="">해당후보 선택</a></td>
								</tr>
						</table>
						</td>
					</c:forEach>
				</tr>
			</c:if>
			<c:if test="${ candidateListGen != null }">
				<tr>
					<c:forEach var="candidateListGen" items="${ candidateListGen }">
						<td>
							<table style="margin:0 auto">
								<tr>
									<td><h2>${ candidateListGen.cndtNm }</h2></td>
								</tr>
								<tr>
									<td><a class="btn btn-white" style="width: 100%" id="">해당후보 선택</a></td>
								</tr>
						</table>
						</td>
					</c:forEach>
				</tr>
			</c:if>
		</table>
		<br><br><br><br><br><br>
		<table style="width:95%; margin:0 auto;">
			<tr>
				<td><a class="btn btn-primary" style="width: 100%" id="">투표하기</a></td>
			</tr>
		</table>
		</div>
		<br><br>
	</div>
</div>
<script type="text/javascript">
	/* 거주인증 function */
	function confirmResident() {
		var bdNm = $("#bdNm").val();
		var rmNm = $("#rmNm").val();
		var residentNm = $("#residentNm").val();

		console.log(bdNm);
		console.log(rmNm);
		console.log(residentNm);

		$.ajax({
			url:"/onepart/resident/confirmResident",
			type:"get",
			data:{
					bdNm:bdNm,
					rmNm:rmNm,
					residentNm:residentNm,
				},
			success:function(data){
				console.log(data.result);
				if(data.result > 0){
					alert("투표권이 있는 입주민 입니다.");
				}else{
					alert("입주민이나 투표권이 있는 입주민이 아닙니다")
				}
			}
		});
	}
</script>
</body>
</html>