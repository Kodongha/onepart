<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- 화면 ajax처리 script -->
<body>
<script type="text/javascript">
$(document).ready(function() {

	/* 우리집 관리비 비교 */
	$("#maintenancecompare").data("menu-url", "/onepart/resident/maintenancecompare");
	/* 관리비 상세보기 */
	$("#maintenancedetail").data("menu-url", "/onepart/resident/maintenancedetail");
	/* 관리비 사용내역 */
	$("#maintenanceuseDetail").data("menu-url", "/onepart/resident/maintenanceuseDetail");
	/* 관리비 납부하기 */
	$("#payment").data("menu-url", "/onepart/resident/payment");
	/* 해당 관리비 사용내역 상세보기 */
	$("#useDetailMonth").data("menu-url", "/onepart/resident/useDetailMonth");
	
	/* 우리집 관리비 비교 */
	$("#maintenancecompare").click(function(){
		var voteUrl = $(this).data("menu-url");
		$.ajax({
			url:voteUrl,
			dataType:"html",
			success:function(result){
				$("#content").html(result);
			}
		});
	});
	/* 관리비 상세보기 */
	$("#maintenancedetail").click(function(){
		var voteUrl = $(this).data("menu-url");
		$.ajax({
			url:voteUrl,
			dataType:"html",
			success:function(result){
				$("#content").html(result);
			}
		});
	});
	/* 관리비 사용내역 */
	$("#maintenanceuseDetail").click(function(){
		var voteUrl = $(this).data("menu-url");
		$.ajax({
			url:voteUrl,
			dataType:"html",
			success:function(result){
				$("#content").html(result);
			}
		});
	});
	/* 관리비 납부하기 */
	$("#payment").click(function(){
		var voteUrl = $(this).data("menu-url");
		$.ajax({
			url:voteUrl,
			dataType:"html",
			success:function(result){
				$("#content").html(result);
			}
		});
	});
	/* 해당 관리비 사용내역 상세보기 */
	$("#useDetailMonth").click(function(){
		var voteUrl = $(this).data("menu-url");
		$.ajax({
			url:voteUrl,
			dataType:"html",
			success:function(result){
				$("#content").html(result);
			}
		});
	});
	
	/* select변화에 따른 servlet호출 script */
	$("#compareSelect").change(function(){
		var result = $(this).val();
		
		if(result == 'year'){
			$.ajax({
				url:"/onepart/resident/maintenancecompare2",
				dataType:"html",
				success:function(result){
					$("#content").html(result);
				}
			});
		}else if(result == 'month'){
			$.ajax({
				url:"/onepart/resident/maintenancecompare",
				dataType:"html",
				success:function(result){
					$("#content").html(result);
				}
			});
		}else{
			$.ajax({
				url:"/onepart/resident/maintenancecompare3",
				dataType:"html",
				success:function(result){
					$("#content").html(result);
				}
			});
		}
	});
});
</script>
<!-- 타이틀 -->
			<div style="width:95%; margin:0 auto">
			<h2>우리집 관리비</h2>
			</div>
			<br><br><br>
			<!-- 전체 div -->
			<div style="width:95%; margin:0 auto">
				<!-- 타이틀 div -->
				<div>
					<table style="width:100%; height:100%; margin:-1% auto;">
						<tr>
							<td><h3 style="margin:auto 0">101동 1203호 2019년 8월분</h3></td>
							<td><a id="payment" class="btn btn-white" style="width:100%">납부하기</a></td>
						</tr>
					</table>
					<hr style="width:100%">
				</div>
				<div>
					<!-- 기본내역 div -->
					<div>
						불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지
					</div>
					<hr>
					<!-- 선택버튼 div -->
					<div>
						<table style="width: 100%; height: 100%; margin: -2% auto;">
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td><a id="maintenancecompare" class="btn btn-white"
									style="width: 100%">우리집 관리비 비교</a></td>
								<td><a id="maintenancedetail" class="btn btn-white"
									style="width: 100%">관리비 상세보기</a></td>
								<td><a id="maintenanceuseDetail" class="btn btn-white"
									style="width: 100%">관리비 사용내역 보기</a></td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
						</table>
					</div>
					<hr style="width: 100%">
				</div>
			</div>
</body>
</html>