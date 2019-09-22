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
<c:if test="${ sessionScope.loginUser == null }">
	<div style="width:85%; margin:0 auto;">
		<br>
		<table style="width:100%; margin-bottom:-10px;">
			<tr>
				<td><h3 style="font-weight:bold;">아파트의 모든 것, 원파트</h3></td>
			</tr>
		</table>
		<br>
		<div style="width:100%; background:white; margin:0 auto">
			<img style="width:80%;" src="${ contextPath }/resources/images/onepart_detail_1.PNG">
			<!-- <hr style="border-color:black"> -->
			<img style="width:80%; margin-left:20%" src="${ contextPath }/resources/images/onepart_detail_2.PNG">
			<!-- <hr style="border-color:black"> -->
			<img style="width:80%;" src="${ contextPath }/resources/images/onepart_detail_3.PNG">
			<!-- <hr style="border-color:black"> -->
			<img style="width:80%; margin-left:20%" src="${ contextPath }/resources/images/onepart_detail_4.PNG">
			<!-- <hr style="border-color:black"> -->
			<br><br><br><br>
			<h4 style="font-weight:bold; text-align:center">원파트 가입 신청문의 : 010 - 9947 - 7991</h4>
			<br>
		</div>
		<br>
	</div>
</c:if>
<c:if test="${ sessionScope.loginUser != null }">

</c:if>
</body>
</html>