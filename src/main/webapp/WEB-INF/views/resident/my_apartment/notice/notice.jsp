<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>notice</h1>
<br>
<a id="moveNoticeTwo" class="btn btn-danger btn-block">notice_two 이동</a>

<script type="text/javascript">
	$(function(){
		$("#moveNoticeTwo").data("menu-url", "/onepart/resident/moveNoticeTwo"); 	// 공지사항2
		
		$("#moveNoticeTwo").click(function(){
			var menuUrl = $(this).data("menu-url");
			console.log(menuUrl);
			
			$.ajax({
				url :menuUrl,
				dataType : "html",
				success:function(result){
					$("#content").html(result);
				}
				
			});
		});
		
	});


</script>

</body>
</html>