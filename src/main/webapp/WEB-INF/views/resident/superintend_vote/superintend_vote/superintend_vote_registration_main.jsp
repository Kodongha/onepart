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
<jsp:include page="../superintend_vote/superintend_vote_detail_include.jsp"></jsp:include>
<!-- 후보정보 div -->
<div style="width:85%; margin:0 auto">
	<!-- title div -->
	<table style="width:100%">
		<tr>
			<td>
				<div class="form-group">
                    <h4>후보정보</h4>
                </div>
			</td>
			<td></td>
			<td style="width:15%">
				<a class="btn btn-success" style="width:100%" id="candidateSupervise">후보관리</a>
			</td>
		</tr>
	</table>
	<div class="panel-body" style="background:white" align="center">
	<!-- 후보 상세정보 div -->
	<div style="width:95%">
		<div id="gallery" class="gallery isotope" style="position: relative; overflow: hidden; height: 1092px;">
			<c:forEach var="candidateList" items="${ candidateList }">
                <div class="image gallery-group-1 isotope-item" style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px); width:35%; height:400px;">
                    <div class="image-inner">
                        <a href="${ contextPath }/resources/uploadFiles/reservation/${ candidateList.changeNm }" data-lightbox="gallery-group-1">
                            <img src="${ contextPath }/resources/uploadFiles/reservation/${ candidateList.changeNm }" alt="" style="height:300px">
                        </a>
                        <p class="image-caption" style="font-size:1.5em">

							후보 ${ candidateList.cndtNo }번
                        </p>
                    </div>
                    <div class="image-info" style="background:#e3e5e8; height:55px" align="center">

                        <div style="margin:0 auto;">

                        				<p align="center">
                        				<a href="javascript:;"><span style="font-size:1.5em">${ candidateList.residentNm }</span>
                            				<span style="font-size:1.4em">${ candidateList.bdNm }동 ${ candidateList.rmNm } 거주</span>
                            			</a>
                            			</p>

                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
		</div>
	</div>
</div>
<br><br>
</body>
</html>