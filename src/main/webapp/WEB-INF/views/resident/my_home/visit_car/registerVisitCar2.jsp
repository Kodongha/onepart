<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<body>

	<div class="panel-body bg-white" style="text-align: center;">
	<form class="form-horizontal form-bordered">
		<div>
		<h2 class="m-t-0">방문 차량 등록</h2>
		<p></p>
		<button class='btn btn-sm btn-info' style="float: right;" >차량등록 리스트보기</button>
		</div>
		<p></p>
		<input class="form-control input-lg" type="text" placeholder="차량번호" style="width: 50%; display: inline-block;" required="required"/>
		<p></p>
                   <div class="input-group date" id="datepicker-disabled-past" data-date-format="dd-mm-yyyy" data-date-start-date="Date.default" style="width: 50%; display: inline-table;">
                       <input type="text" class="form-control" placeholder="방문일자" required="required"/>
                       <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                   </div>
		<p></p>
		<input name="aptDetailInfoSeq" id="aptDetailInfoSeq" type="hidden">
		<input name="dong" id="dong" type="text" class="form-control" placeholder="동 입력" style="width: 22%; display: inline-block;" readonly="readonly"/>&nbsp;동&nbsp;&nbsp;
		<input name="ho" id="ho" type="text" class="form-control" placeholder="호수 입력" style="width: 22%; display: inline-block;" readonly="readonly" />&nbsp;호&nbsp;
		<p></p>
		<input class="form-control" type="tel" placeholder="비상연락처" style="width: 50%; display: inline-block;" required="required"/>
		<p></p>
		<input class="form-control input-sm" type="text" placeholder="방문목적" style="width: 50%; display: inline-block;" required="required"/>
		<p><br>
		★필독★<br>
		1.  방문자 차량등록은 24시간동안만 유효됩니다.<br>
		2.  확인결과와 해당내용이 일치하지 않을경우 외부차량으로 간주되어 조치되는점 확인바랍니다.<br>
		*방문 차량등록은 1일 기준 가구당 2대*<br>
		</p>
		<p class="text-center m-b-0">
			<!-- <button type="reset" class="btn btn-default">취소</button> &nbsp; &nbsp; -->
		 	<button type="submit" class="btn btn-primary">등록</button>
		</p>
		</form>
	</div>


</body>
</html>