<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String checkNo = Integer.toString((int)(Math.random()*999999) + 1);
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath }" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="panel-body bg-white" style="width: 50%; margin-left: 300px;" >
	<!-- begin #page-container -->
		<div class="register register-with-news-feed">
			<!-- begin right-content -->
				<h1 class="register-header" style="text-align: center;">회원정보수정</h1>
				<!-- end register-header -->
				<!-- begin register-content -->
				<div class="register-content">
					<form action="${ contextPath }/register" method="POST" class="margin-bottom-0" name="frm" id="frm">
						<label class="control-label">아이디</label>
						<div class="row m-b-15" style="margin-bottom: 0%;">
							<!-- 						<div class="row row-space-10"> -->
							<div class="col-md-12" id="divInputId">
								<input name="residentId" id="residentId" type="text" class="form-control" style="width: 77%; display: inline-block;"
								 readonly="readonly" value="${loginUser.residentId}" />&nbsp;
							</div>
						</div>

						<label class="control-label">비밀번호</label>
						<!-- <div class="row m-b-15" style="margin-bottom: 0%;"> -->
						<div class="row row-space-10">
							<div class="col-md-12">
								<input name="residentPwd" id="residentPwd" type="password" class="form-control" placeholder="****" readonly="readonly" style="width: 77%; margin-bottom: 1%; display: inline-block;" />
								<button id="changePwd" type="button" class="btn btn-default m-r-5 m-b-5">비밀번호 변경</button>
								<p style="color: graytext; margin-bottom: 0%;">&nbsp;비밀번호는
									최소 8자 ~ 최대 20자리, 영문과 숫자 혼합하여 설정</p>
							</div>
						</div>
						<!-- <label class="control-label">비밀번호 확인</label>
						<div class="row m-b-15">
							<div class="col-md-12">
								<input name="residentPwd2" id="residentPwd2" type="password" class="form-control" placeholder="비밀번호 재입력"
								 required />
							</div>
						</div> -->

						<label class="control-label">이름</label>
						<div class="row m-b-15">
							<div class="col-md-12">
								<input name="residentNm" id="residentNm" type="text" class="form-control" style="width: 77%;" readonly="readonly" value="${loginUser.residentNm}"/>
							</div>
						</div>

						<label class="control-label">주민등록번호 <small style="font-size: 11px; color: graytext;">&nbsp;해당 정보수정은 관리소에 문의해주십시오.</small></label>
						<div class="row m-b-15">
							<div class="col-md-12">
								<input name="residentBirth" id="residentBirth" type="text" name="birthDay"
								 size="6" maxlength="6" style="width: 20%; text-align: center; background: #e5e9ed;" readonly="readonly" class="form" value="${loginUser.residentBirth}"/>&nbsp;&nbsp;-&nbsp;&nbsp;*******
								<%-- <input name="residentGender" id="residentGender" type="text" class="form-control" name="gender" readonly="readonly" value="${loginUser.residentGender}"
								 size="1" maxlength="1" style="width: 5%; text-align: center; display: inline-block; padding: 6px 1px;"
								 required /> --%><!-- &nbsp;*******&nbsp; -->
							</div>
						</div>

						<label class="control-label">휴대전화번호 인증</label>
						<div class="row m-b-15">
							<div class="col-md-12">
								<input name="residentPhone" id="residentPhone" type="tel" class="form-control" placeholder="휴대전화번호 입력" style="width: 77%; display: inline-block;"
								 required />&nbsp;
								 <!-- <input type="text" maxlength="3" name="tel1" id="tel" placeholder="010"> -
								<input type="text" maxlength="4" name="tel2" id="tel" placeholder="0000"> -
								<input type="text" maxlength="4" name="tel3" id="tel" placeholder="0000"> -->
								<button id="checkPhone" type="button" class="btn btn-default m-r-5 m-b-5">인증번호</button>
								<br>
								<!-- **인증번호 클릭 시 아래 창 생김 or 새창 -->
								<br> <input name="checkNo" id="checkNo" required type="text" class="form-control" placeholder="인증번호 입력" style="width: 50%; display: inline-block;" />&nbsp;
									<input type="hidden" name="action" value="go"> <!-- 발송타입 -->
							        <input type="hidden" name="msg" value="<%=checkNo%>">
									<input type="hidden" name="rphone">
									<input type="hidden" name="sphone1" value="010">
							        <input type="hidden" name="sphone2" value="2603">
							        <input type="hidden" name="sphone3" value="9932">

								<button id="checkNumber" type="button" class="btn btn-default m-r-5 m-b-5">확인</button>
							</div>
						</div>

						<label class="control-label">이메일</label>
						<div class="row m-b-15">
							<div class="col-md-12">
								<input name="residentEmail" id="residentEmail" type="email" class="form-control" placeholder="이메일 주소" style="width: 77%; display: inline-block;" />&nbsp;
								<!-- <button type="button" class="btn btn-default m-r-5 m-b-5">인증번호</button>
								<br>**인증번호 클릭 시 아래 창 생김 or 새창<br> <input type="text" class="form-control" placeholder="인증번호 입력" style="width: 50%; display: inline-block;" />&nbsp;
								<button type="button" class="btn btn-default m-r-5 m-b-5">확인</button> -->
							</div>
						</div>
						<br>
						<h3>
							<label class="control-label">아파트 정보 <small style="font-size: 11px;">&nbsp;해당 정보수정은 관리소에 문의해주십시오.</small></label>
						</h3>
						<div class="row row-space-10">
							<div class="col-md-12">
								<input name="aptNm" id="aptNm" type="text" class="form-control" placeholder="성현동아 아파트" style="width: 77%; display: inline-block;"
								 readonly="readonly" />&nbsp;
								<br> <br>
								<table style="width: 100%; height: 30px; margin: 0 auto;">
									<tr>
										<td>
										 <input name="aptDetailInfoSeq" id="aptDetailInfoSeq" type="hidden">
											<input name="dong" id="dong" type="text" class="form-control" style="width: 30%; display: inline-block;" readonly="readonly" value="${fn:split(loginUser.aptDetailInfoSeq,'_')[1]}"/>&nbsp;동&nbsp;&nbsp;
											<input name="ho" id="ho" type="text" class="form-control" style="width: 30%; display: inline-block;" readonly="readonly" value="${fn:split(loginUser.aptDetailInfoSeq,'_')[2]}" />&nbsp;호&nbsp;
										</td>

									</tr>

								</table>
								<input name="aptDetailInfoSeq" id="aptDetailInfoSeq" type="hidden">
								<!-- <input name="dong" id="dong" type="text" class="form-control" placeholder="동 입력" style="width: 30%; display: inline-block;" />&nbsp;동&nbsp;&nbsp;
								<input name="ho" id="ho" type="text" class="form-control" placeholder="호수 입력" style="width: 30%; display: inline-block;" />&nbsp;호&nbsp; -->
							</div>
						</div>
						<br> <br>
						<h3>
							<label class="control-label">세대주 여부</label>
						</h3>
						<div class="radio">
							<label> <input type="radio" name="householdAuthType" value="1" data-parsley-required="true"
								 data-parsley-multiple="radiorequired" data-parsley-id="2688" required> 세대주
							</label>
							<ul class="parsley-errors-list" id="parsley-id-multiple-radiorequired"></ul>
						</div>
						<div class="radio">
							<label> <input type="radio" name="householdAuthType" value="2" data-parsley-multiple="radiorequired"
								 data-parsley-id="2688" required> 세대원
							</label>
						</div>
						<!-- <div class="radio">
							<label> <input type="radio" name="householdAuthType" value="3" data-parsley-multiple="radiorequired"
								 data-parsley-id="2688">
								복수 세대주 대표
							</label>
						</div> -->
						<br>

						<!-- <div class="col-md-6"> -->

						<div class="register-buttons">
							<button type="submit" class="btn btn-primary btn-block btn-lg" id="submitBtn">수정하기</button>
						</div>
						<hr />
						<p class="text-center text-inverse">&copy; Color Admin All
							Right Reserved 2015</p>
					</form>
				</div>
				<!-- end register-content -->
			</div>
			<!-- end right-content -->
		</div>
		<!-- end register -->
	<!-- end page container -->


<script>
		$(document).ready(function () {

			$('#residentPwd').blur(function(){
				if(!/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,20}$/.test($('#residentPwd').val())){
					if($('#residentPwd').val() != ''){
					   alert('비밀번호는 숫자와 영문자 조합으로 8~20자리를 사용해야 합니다.');
					   $('#residentPwd').val('');
					   $('#residentPwd2').val('');
					   $('#residentPwd').focus();;
				       return false;
					}
				   }
			});

			$('#residentPwd2').blur(function(){
			   if($('#residentPwd').val() != $('#residentPwd2').val()){
			    	if($('#residentPwd2').val()!=''){
				    alert("비밀번호가 일치하지 않습니다.");
			    	    $('#residentPwd2').val('');
			          $('#residentPwd2').focus();
			       }
			    }
			});


			$('#residentBirth').blur(function(){
				if(!/^[0-9]{6}$/.test($('#residentBirth').val())){
					if($('#residentBirth').val() != ''){
					   alert('6자리 숫자만 사용해야 합니다.');
					   $('#residentBirth').val('');
					   $('#residentBirth').focus();;
				       return false;
				    }
				 }
			});

			$('#residentGender').blur(function(){
				if(!/^[1-4]{1}$/.test($('#residentGender').val())){
					if($('#residentGender').val() != ''){
					   alert('1~4 숫자만 사용해야 합니다.');
					   $('#residentGender').val('');
					   $('#residentGender').focus();;
				       return false;
					}
				 }
			});

		});
</script>

<script type="text/javascript">
	//아이디 체크여부 확인 (아이디 중복일 경우 = 0 , 중복이 아닐경우 = 1 )
	var idck = 0;
	var verifiedNo = 0;
	$(function () {
		//idck 버튼을 클릭했을 때
		$("#idck").click(function () {

			//userid 를 param.
			var residentId = $("#residentId").val();
			console.log("residentId : " + residentId);



			$.ajax({
				async: true,
				url: "/onepart/resident/idcheck",
				type: 'POST',
				data: {residentId:residentId},
				dataType: "json",
				/* contentType: "application/json; charset=UTF-8", 이것때문에 값이 콘트롤러로 전달 안됐다.*/
				success: function (data) {
					if (data.cnt > 0) {

						alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
						//아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
						$("#divInputId").addClass("has-error")
						$("#divInputId").removeClass("has-success")
						$("#residentId").focus();


					} else {
						alert("사용가능한 아이디입니다.");
						//아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
						$("#divInputId").addClass("has-success")
						$("#divInputId").removeClass("has-error")
						$("#userpwd").focus();
						//아이디가 중복하지 않으면  idck = 1
						idck = 1;

					}
				},
				error: function (error) {

					alert("error : " + error);
				}
			});
		});
	});


	//가입하기 버튼 누를 시 아파트 동호 수 변환과 아이디 중복체크 버튼 누름 유무
	$('#submitBtn').click(function () {
		var aptDetailInfoSeqVal = 1 + "_" + $("#candidateInfoDong option:selected").val() + "_" + $("#candidateInfoHo option:selected").val();
		console.log("aptDetailInfoSeq : " + aptDetailInfoSeqVal);
		$("#aptDetailInfoSeq").val(aptDetailInfoSeqVal);
		console.log("#aptDetailInfoSeq : " + $("#aptDetailInfoSeq").val());
		/* if (confirm("회원가입을 하시겠습니까?")) {
			if (idck == 0) {
				alert('아이디 중복체크를 해주세요');
				return false;
			} else {
				alert("회원가입을 축하합니다");
				$("#frm").submit();
			}
		} */
		if (idck == 0) {
			alert('아이디 중복체크를 해주세요');
			return false;
		} else {
			/* alert("회원가입을 축하합니다");
			$("#frm").submit(); */
		}

		if (verifiedNo == 0) {
			alert('휴대전화번호 본인 인증을 해주세요.');
			return false;
		}
	});




	/* 선택된 동에 따라 호수 변화 function */
	$(function () {
		var bdNm = 0;

		$("#candidateInfoDong").change(function () {
			bdNm = $(this).val();
			console.log(bdNm);

			$.ajax({
				url: "/onepart/resident/changeBdNm2",
				data: { bdNm: bdNm },
				type: "get",
				success: function (data) {
					console.log(data);
					$("#candidateInfoHo option").remove();
					var $option1 = $("<option>").text("원하는 호 선택").val("");

					$("#candidateInfoHo").append($option1);

					console.log(data.hoList[0].rmNm);

					for (var i = 0; i < data.hoList.length; i++) {
						console.log("aa");
						var $optionText = data.hoList[i].rmNm + "호";
						var $optionHo = $("<option>").val(data.hoList[i].rmNm);
						$optionHo.append($optionText);
						$("#candidateInfoHo").append($optionHo);
					}

				},
			});
		});
	});


	//휴대폰 인증번호 메소드
	$("#checkPhone").click(function () {
		var rphone = $("#residentPhone").val();
		var sphone1 = $("input[name='sphone1']").val();
		var sphone2 = $("input[name='sphone2']").val();
		var sphone3 = $("input[name='sphone3']").val();
		var msg = $("input[name='msg']").val();
		console.log("msg :::: " + msg);
		var action = $("input[name='action']").val();

		// 인증번호 입력창
		$.ajax({
			url:"moveSmssend",
			data:{rphone:rphone, sphone1:sphone1, sphone2:sphone2, sphone3:sphone3, msg:msg, action:action},
			type:"post",
			success:function(data){
				alert("인증번호가 발송되었습니다.");
				console.log(data);
				console.log("data : " + data.msgRnd);

				var checkPhone = data.msgRnd;
				console.log(data.msgRnd);
				console.log("checkPhone : ::" + checkPhone);
				console.log(msg);


				$("#checkPhone").hide();


				$("#checkNumber").on("click", function(){

					var checkNo = $("input[name='checkNo']").val();

					console.log("checkNo :::: " + checkNo);
					console.log("checkPhone ::::" + checkPhone);

					if(checkNo == checkPhone){
						$("#checkNo").attr({"readonly":"true"});
						$("#checkNumber").hide();
						alert("인증이 완료되었습니다.");
						verifiedNo = 1;
					}else{
						alert("인증번호가 틀렸습니다. 다시 입력하세요.");
						$("#checkPhone").show();
					}

				});
			},
			error:function(request,status,error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		    }
		});
	});

</script>


</body>
</html>