<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 선거정보 div -->
<div style="width:85%; margin:0 auto">
	<!-- title div -->
	<table style="width:100%">
		<tr>
			<td>
				<div class="form-group">
                    <h4>선거정보</h4>
                </div>
			</td>
			<td style="width:50%"></td>
			<td style="width:15%">
				 <a class="btn btn-success" style="width:100%" id="candidateRegistration">후보등록 요청</a>
			</td>
			<td style="width:1%"></td>
			<td style="width:15%">
				<a class="btn btn-success" style="width:100%" id="candidateApply">후보 신청서 관리</a>
			</td>
		</tr>
	</table>
	<div class="panel-body" style="background:white" align="center">
	<!-- 선거상세정보 div -->
	<table style="width:95%">
		<tr>
			<td><h2>${ ev.electNm }</h2></td>
			<td>
				<span class="badge badge-primary">후보 등록 기간</span>
			</td>
			<td><div><h5></h5></div></td>
			<td style="width:5%"></td>
		</tr>
		<tr>
			<td colspan="5"><h5>기간 : ${fn:substring(ev.cnddEnrollStartDt,0,10)} ~ ${fn:substring(ev.cnddEnrollEndDt,0,10)}</h5></td>
		</tr>
		<tr>
			<td colspan="5">
				<div class="form-group">
                   <label for="exampleInputEmail1" style="font-weight:bold;">상세정보</label>
                   <p>
                   		${ ev.electVoteDetail }
                   </p>
               </div>
			</td>
		</tr>
	</table>
	</div>
</div>
<br><br><br>
</body>
</html>