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
<jsp:include page="../vote/vote_detail_include.jsp"></jsp:include>
<div>
					<table style="width:100%">
						<tr>
							<td style="width:80%"></td>
							<td style="width:10%"><h5>미완료</h5></td>
							<td style="width:10%"></td>
						</tr>
					</table>
				</div>		
			</div>
			<hr>
			<br>
		</div>
			<!-- 실제 투표하기 div -->
			<div style="width:95%; margin:0 auto">
				<h4>투표하기</h4>
				<div>
					<table style="width:100%">
						<tr>
							<td style="width:40%"><h3>기호 1번 김은혜</h3></td>
							<td  style="width:40%"><h5>은혜아파트 104동 601호 거주</h5></td>
							<td  style="width:20%"><a href="#" class="btn btn-white" style="width:">해당후보 투표하기</a></td>
						</tr>
						<tr>
							<td><h3>기호 2번 고동하</h3></td>
							<td><h5>은혜아파트 1012동 1301호 거주</h5></td>
							<td><a href="#" class="btn btn-white" style="width:">해당후보 투표하기</a></td>
						</tr>
					</table>
				</div>
				<br>
				<!-- 서명받기 모달 div -->
				<div class="panel panel-danger cancelModal" data-sortable-id="ui-widget-13" style="width:50%">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove" data-original-title="" title=""><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">서명하기</h4>
                        </div>
                        <div class="panel-body" style="text-align:center;">
                        	<h4 style="font-weight:bold;">투표자 : 민경현</h4>
                        	<h5>서명</h5>
                        	<div>
                        		<canvas id="canvas" style="width:90%; height:250px; border:1px solid gray;"></canvas>
                        	</div>
                        	<br>
                            <p style="color:red;">선거 정책 상 한번 투표를 완료 한 후에는 내역의 수정 / 삭제가 불가능 하오니 <br>신중하게 생각하고 투표바랍니다.</p>
                            <a href="javascript:;" class="btn btn-white btn-xs" style="width:30%">완료</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="javascript:;" class="btn btn-white btn-xs" style="width:30%">취소</a>
                        </div>
               </div>
            </div>
		<!-- 서명 모달창 script -->
		<script>
			var pos = {
				drawable:false,
				x:0,
				y:0,
			};
			var canvas, ctx;
			
			$(function(){
				canvas = document.getElementById("canvas");
				ctx = canvas.getContext("2d");
				
				canvas.addEventListener("mousedown", listener);
				canvas.addEventListener("mousemove", listener);
				canvas.addEventListener("mouseup", listener);
				canvas.addEventListener("mouseout", listener);
				draw(canvas);
			});
			
			function listener(event) {
				switch(event.type){
					case "mousedown" : initDraw(event); break;
					case "mousemove" : if(pos.drawable) draw(event); break;
					case "mouseout" : 
					case "mouseup" : finishDraw(); break;
				}
			};
			
			function initDraw(event) {
				ctx.beginPath();
				pos.drawable = true;
				var coors = getPosition(event);
				pos.X = coors.X;
				pos.Y = coors.Y;
				ctx.moveTo(pos.X, pos.Y);
			}
			
			function draw(event) {
				var coors = getPosition(event);
				ctx.lineTo(coors.X, coors.Y);
				pos.X = coors.X;
				pos.Y = coors.Y;
				ctx.stroke();
			}
			
			function finishDraw() {
				pos.drawable = false;
				pos.X = 0;
				pos.Y = 0;
			}
			
			function getPosition(event) {
				var x = event.pageX - canvas.offsetLeft;
				var y = event.pageY - canvas.offsetTop;
				return {X:x, Y:y};
			}
		</script>
		<!-- end #content -->
</body>
</html>