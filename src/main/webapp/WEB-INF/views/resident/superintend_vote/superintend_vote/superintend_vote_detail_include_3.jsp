<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 선거정보 div -->
<div style="width:95%; margin:0 auto">
	<!-- title div -->
	<table style="width:95%">
		<tr>
			<td>
				<div class="form-group">
                    <h4>선거정보</h4>                   
                </div>
			</td>
		</tr>
	</table>
	<hr>
	<!-- 선거상세정보 div -->
	<table style="width:95%">
		<tr>
			<td><h2>은혜아파트 입대의 회장 선거</h2></td>
			<td style="width:30%"></td>
			<td><div><h5>완료</h5></div></td>
			<td><div><h5>총 68.3%</h5></div></td>
			<td style="width:5%"></td>
		</tr>
		<tr>
			<td colspan="5"><h5>기간 : 2019.08.28 ~ 2019.08.30 </h5></td>
		</tr>
		<tr>
			<td colspan="5">
				<div class="form-group">
                   <label for="exampleInputEmail1" style="font-weight:bold;">상세정보</label>
                   <p>
                   	청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 찾아다녀도 목숨이 있는 때까지 방황하여도 보이는 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 찾아다녀도 목숨이 있는 때까지 방황하여도 보이는청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 찾아다녀도 목숨이 있는 때까지 방황하여도 보이는
                   </p>
               </div>
			</td>
		</tr>
	</table>
</div>
<br><br><br>
<!-- 후보등록 모달창 div -->
	<div class="panel panel-info" data-sortable-id="ui-widget-16" style="width:30%" id="dialogOffline">
                      <div class="panel-heading">
                          <div class="panel-heading-btn">
                          </div>
                          <h4 class="panel-title">오프라인 투표모드 전환</h4>
                      </div>
                      <div class="panel-body">
                         	<table style="width:95%; margin:0 auto; text-align:center;">
                         		<tr>
                         			<td>
                         				<h5 style="color:red;">오프라인 투표모드로 변경하시겠습니까?</h5>
                         				<h5>오프라인 투표 외의 모든 기능을 수행할 수 없으며,</h5>
                         				<h5>오프라인 모드를 해제 후에 사용 가능합니다.</h5>
                         			</td>
								</tr>
						</table>
					<br><br>
					<table style="width:95%; margin:0 auto;">
						<tr>
							<td>
								<div class="form-group">
                                       <a class="btn btn-white" style="width: 100%" id="changeOffline">전환</a>
                                   </div>
							</td>
							<td style="width:15%"></td>
							<td>
								<div class="form-group">
                                       <a class="btn btn-white" style="width: 100%" id="cancelOffline">취소</a>
                                   </div>
							</td>
						</tr>
                         	</table>
                      </div>
                  </div>
       <!-- 모달창 띄우기 script -->
       <script type="text/javascript">
		       $(function(){
		  		 $( "#dialogOffline" ).hide();
		  		 
		  		 $("#offlineVote").click(function(){
		  			 var test = $(this);
		  			 var testX = test.offset().right + 100;
		  			 var testY = test.offset().top;
		  			 console.log(testX);
		  			 $( "#dialogOffline" ).show().css({
		  				 "position": "absolute",
		  				 "top": testY,
		  			     "left": testX
		  			 }); 
		  		 });
		  		
		  		$("#cancelOffline").click(function(){
		  			$( "#dialogOffline" ).hide();
		  		});
		  		 
		  	});
       </script>
</body>
</html>