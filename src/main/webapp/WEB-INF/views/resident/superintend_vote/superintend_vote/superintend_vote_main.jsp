<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../superintend_vote/superintend_vote_include.jsp"></jsp:include>
	<div class="col-md-14 ui-sortable">
		<!-- 탭 탬플릿 -->
		<ul
			class="nav nav-tabs nav-tabs-inverse nav-justified nav-justified-mobile"
			data-sortable-id="index-2">
			<li class="active"><a href="#latest-post" data-toggle="tab"><i
					class="fa fa-picture-o m-r-5"></i> <span class="hidden-xs">메인</span></a></li>
			<li class=""><a href="#purchase" data-toggle="tab"><i
					class="fa fa-shopping-cart m-r-5"></i> <span class="hidden-xs">선거개최</span></a></li>
			<li class=""><a href="#email" data-toggle="tab"><i
					class="fa fa-envelope m-r-5"></i> <span class="hidden-xs">투표등록</span></a></li>
		</ul>
		<div class="tab-content" data-sortable-id="index-3"
			style="height: 100%">
			<!-- 첫번째 탭 div -->
			<div class="tab-pane fade active in" id="latest-post"
				style="height: 100%">
				<div class="slimScrollDiv"
					style="position: relative; overflow: hidden; width: auto; height: 100%;">
					<!-- <div class="height-sm" data-scrollbar="true" style="overflow: hidden; width: auto; height: 300px;"> -->
					<!-- 진행중인 선거 및 정렬 div -->
					<br>
					<div>
						<table style="width: 95%">
							<tr>
								<td><h4>&nbsp;&nbsp;&nbsp;&nbsp;진행중인 선거</h4></td>
								<td style="width: 20%"><select
									class="form-control input-sm" id="conChoice">
										<option value="choice">모두</option>
										<option value="con1">선거</option>
										<option value="con2">일반투표</option>
								</select></td>
							</tr>
						</table>
					</div>
					<!-- 진행중인 선거 표 div -->
					<div class="panel-body">
						<table class="table table-hover" style="text-align: center;">
							<thead>
								<tr>
									<td style="font-weight: bold;">투표번호</td>
									<td style="font-weight: bold;">투표종류</td>
									<td style="font-weight: bold;">투표 명</td>
									<td style="font-weight: bold;">현황</td>
									<td style="font-weight: bold;">종료날짜</td>
								</tr>
							</thead>
							<tbody>
								<tr id="votingCandidate">
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
								</tr>
								<tr id="votingRealvote">
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
								</tr>
								<tr>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
								</tr>
								<tr>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
								</tr>
								<tr>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- 선거결과보기 및 정렬 div -->
					<br> <br>
					<div>
						<table style="width: 95%">
							<tr>
								<td><h4>&nbsp;&nbsp;&nbsp;&nbsp;선거 결과보기</h4></td>
								<td style="width: 20%"><select
									class="form-control input-sm" id="conChoice">
										<option value="choice">모두</option>
										<option value="con1">선거</option>
										<option value="con2">일반투표</option>
								</select></td>
							</tr>
						</table>
					</div>
					<!-- 선거결과보기 표 div -->
					<div class="panel-body">
						<table class="table table-hover" style="text-align: center;">
							<thead>
								<tr>
									<td style="font-weight: bold;">투표번호</td>
									<td style="font-weight: bold;">투표종류</td>
									<td style="font-weight: bold;">투표 명</td>
									<td style="font-weight: bold;">현황</td>
									<td style="font-weight: bold;">종료날짜</td>
								</tr>
							</thead>
							<tbody>
								<tr id="endingCandidate">
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
								</tr>
								<tr id="endingGeneral">
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
								</tr>
								<tr>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
								</tr>
								<tr>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
								</tr>
								<tr>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
									<td>vote</td>
								</tr>
							</tbody>
						</table>
						<div class="slimScrollRail"
							style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
					</div>
				</div>
			</div>
			<!-- 두번째 탭 div -->
			<div class="tab-pane fade" id="purchase" style="height: 100%">
				<div class="slimScrollDiv"
					style="position: relative; overflow: hidden; width: auto; height: 100%;">
					<!-- <div class="height-sm" data-scrollbar="true" style="overflow: hidden; width: auto; height: 300px;"> -->
					<!-- 선거개최 div -->
					<br>
					<div>
						<table style="width:90%; margin:0 auto;">
							<tr>
								<td>
									<div class="form-group">
                                        <label for="exampleInputEmail1" style="font-weight:bold;">선거명</label>
                                        <input style="width:100%;" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                    </div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group">
                                        <label for="exampleInputEmail1" style="font-weight:bold;">선거구별</label>
                                        <select class="form-control input-sm" id="conChoice" style="height:30px;">
											<option value="choice">입대의 회장</option>
											<option value="con1">입대의 감사</option>
											<option value="con2">동대표</option>
										</select>
                                    </div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group">
                                        <label for="exampleInputEmail1" style="font-weight:bold;">임기</label>
                                        <input style="width:100%;" type="date" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                    </div>
								</td>
							</tr>
							<tr>
								<td><br><br></td>
							</tr>
							<tr>
								<td>
									<div class="form-group">
                                        <label for="exampleInputEmail1" style="font-weight:bold;">선거기간</label>
                                    </div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group">
                                        <label for="exampleInputEmail1">후보등록 기간</label>
                                        <input style="width:100%;" type="date" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                    </div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group">
                                        <label for="exampleInputEmail1">선거운동 기간</label>
                                        <input style="width:100%;" type="date" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                    </div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group">
                                        <label for="exampleInputEmail1">투표 기간</label>
                                        <input style="width:100%;" type="date" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                    </div>
								</td>
							</tr>
							<tr>
								<td><br><br></td>
							</tr>
							<tr>
								<td>
									<div class="form-group">
                                        <label for="exampleInputEmail1" style="font-weight:bold;">오프라인 투표장소</label>
                                        <input style="width:100%;" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                    </div>
								</td>
							</tr>
							<tr>
								<td><br><br></td>
							</tr>
							<tr>
								<td>
									<div class="form-group">
                                        <label for="exampleInputEmail1" style="font-weight:bold;">선거 상세정보</label>
                                        <textarea class="form-control" placeholder="Textarea" rows="5" style="margin: 0px 1px 0px 0px; width:100%; height: 141px;"></textarea>
                                    </div>
								</td>
							</tr>
							<tr>
								<td><br><br></td>
							</tr>
							<tr>
								<td>
									<div class="form-group">
                                        <label for="exampleInputEmail1" style="font-weight:bold;">투표권 부여</label>
                                        <select class="form-control input-sm" id="conChoice" style="height:30px;">
											<option value="choice">모든 세대주</option>
											<option value="con1">동별로 부여</option>
										</select>
                                    </div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group">                                       
                                        <select class="form-control input-sm" id="conChoice" style="height:30px;">
											<c:forEach var="month" begin="101" end="113">
	                                           		<option value='<c:out value="month"></c:out>'>${ month }동</option>
	                                           </c:forEach>
										</select>
                                    </div>
								</td>
							</tr>
							<tr>
								<td><br><br><br></td>
							</tr>
						</table>
						<table style="width:90%; margin:0 auto;">
							<tr>
								<td>
									<div class="form-group">
                                        <a class="btn btn-white" style="width: 100%" id="">등록</a>
                                    </div>
								</td>
								<td style="width:15%"></td>
								<td>
									<div class="form-group">
                                        <a class="btn btn-white" style="width: 100%" id="">취소</a>
                                    </div>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="slimScrollBar ui-draggable"
					style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div>
				<div class="slimScrollRail"
					style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
			</div>
			<!-- 세번째 탭 div -->
			<div class="tab-pane fade" id="email" style="height: 100%">
				<div class="slimScrollDiv"
					style="position: relative; overflow: hidden; width: auto; height: 100%;">
					<!-- <div class="height-sm" data-scrollbar="true" style="overflow: hidden; width: auto; height: 300px;"> -->
					<!-- 투표등록 div -->
					<br>
					<div>
						<table style="width:90%; margin:0 auto;">
							<tr>
								<td>
									<div class="form-group">
                                        <label for="exampleInputEmail1" style="font-weight:bold;">투표명</label>
                                        <input style="width:100%;" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                    </div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="margin-bottom:5px">
                                        <label for="exampleInputEmail1" style="font-weight:bold;">투표구별</label>
                                    </div>
									<div class="form-group">
                                        <input type="checkbox"><label for="exampleInputEmail1">일반투표</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="checkbox"><label for="exampleInputEmail1">익명투표</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="checkbox"><label for="exampleInputEmail1">복수선택</label>
                                    </div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group">
                                        <label for="exampleInputEmail1" style="font-weight:bold;">투표기간</label>
                                        <input style="width:100%;" type="date" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                    </div>
								</td>
							</tr>
							<tr>
								<td><br><br></td>
							</tr>
							<tr>
								<td>
									<div class="form-group">
                                        <label for="exampleInputEmail1" style="font-weight:bold;">오프라인 투표장소</label>
                                        <input style="width:100%;" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                    </div>
								</td>
							</tr>
							<tr>
								<td><br><br></td>
							</tr>
							<tr>
								<td>
									<div class="form-group">
                                        <label for="exampleInputEmail1" style="font-weight:bold;">투표 상세정보</label>
                                        <textarea class="form-control" placeholder="Textarea" rows="5" style="margin: 0px 1px 0px 0px; width:100%; height: 141px;"></textarea>
                                    </div>
								</td>
							</tr>
							<tr>
								<td><br><br></td>
							</tr>
							<tr>
								<td>
									<div class="form-group">
                                        <label for="exampleInputEmail1" style="font-weight:bold;">투표권 부여</label>
                                        <select class="form-control input-sm" id="conChoice" style="height:30px;">
											<option value="choice">모든 세대주</option>
											<option value="con1">동별로 부여</option>
										</select>
                                    </div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group">                                                                               
											<c:forEach var="month" begin="101" end="113">
	                                           		<input type="checkbox"><label for="exampleInputEmail1">${ month }호</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                                         </c:forEach>
                                    </div>
								</td>
							</tr>
							<tr>
								<td><br><br><br></td>
							</tr>
						</table>
						<!-- 후보등록 div -->
						<table style="width:90%; margin:0 auto;">
							<tr>
								<td>
									<div class="form-group">
                                        <label for="exampleInputEmail1" style="font-weight:bold;">후보등록</label>
                                    </div>
								</td>
							</tr>
							<tr>
								<td><h4>후보1 . 지용이네 페인트</h4></td>
								<td><a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a></td>
								<td><a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a></td>
							</tr>
							<tr>
								<td colspan="3">
									<div class="form-group">
                                        <label for="exampleInputEmail1" style="font-weight:bold;">투표 상세정보</label>
                                        <p>
                                        	청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 찾아다녀도 목숨이 있는 때까지 방황하여도 보이는 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 찾아다녀도 목숨이 있는 때까지 방황하여도 보이는청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 찾아다녀도 목숨이 있는 때까지 방황하여도 보이는
                                        </p>
                                    </div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="form-group" style="width:20%">
                                        <a class="btn btn-white" style="width: 100%" id="buttonModal">새 후보 추가	</a>
                                    </div>
								</td>
							</tr>
						</table>
						<br><br>
						<table style="width:90%; margin:0 auto;">
							<tr>
								<td>
									<div class="form-group">
                                        <a class="btn btn-white" style="width: 100%" id="candidateApply">등록</a>
                                    </div>
								</td>
								<td style="width:15%"></td>
								<td>
									<div class="form-group">
                                        <a class="btn btn-white" style="width: 100%" id="candidateApply">취소</a>
                                    </div>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="slimScrollBar ui-draggable"
					style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div>
				<div class="slimScrollRail"
					style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
			</div>
		</div>
	</div>
	<!-- 후보등록 모달창 div -->
	<div class="panel panel-info" data-sortable-id="ui-widget-16" style="width:50%" id="dialog">
                      <div class="panel-heading">
                          <div class="panel-heading-btn">
                          </div>
                          <h4 class="panel-title">새 후보</h4>
                      </div>
                      <div class="panel-body">
                         	<table style="width:95%; margin:0 auto;">
                         		<tr>
                         			<td>
                         				 <label for="exampleInputEmail1" style="font-weight:bold;">후보이름</label>
                         			</td>
                         			<td style="width:10%"></td>
                         			<td style="width:75%">
                         				<input style="width:100%;" type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                         			</td>
                         		</tr>
                         		<tr><td><br><br></td></tr>
                         		<tr>
							<td colspan="3">
								<div class="form-group">
                                       <label for="exampleInputEmail1" style="font-weight:bold;">상세정보</label>
                                       <textarea class="form-control" placeholder="Textarea" rows="5" style="margin: 0px 1px 0px 0px; width:100%; height: 141px;"></textarea>
                                   </div>
							</td>
						</tr>
					</table>
					<br><br>
					<table style="width:95%; margin:0 auto;">
						<tr>
							<td>
								<div class="form-group">
                                       <a class="btn btn-white" style="width: 100%" id=cancelName>등록</a>
                                   </div>
							</td>
							<td style="width:15%"></td>
							<td>
								<div class="form-group">
                                       <a class="btn btn-white" style="width: 100%" id="candidateApply">취소</a>
                                   </div>
							</td>
						</tr>
                         	</table>
                      </div>
                  </div>
       <!-- 모달창 띄우기 script -->
       <script type="text/javascript">
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
       </script>
</body>
</html>