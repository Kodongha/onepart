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
<div id="header" class="header navbar navbar-default navbar-fixed-top">
	<!-- begin container-fluid -->
	<div class="container-fluid">
		<!-- begin mobile sidebar expand / collapse button -->
		<div class="navbar-header">
			<a href="index.html" class="navbar-brand"><span class="navbar-logo"></span>Onepart | V i-F i</a>
			<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		<!-- end mobile sidebar expand / collapse button -->

		<!-- begin header navigation right -->
		<ul class="nav navbar-nav navbar-right">
			<li>
				<form class="navbar-form full-width">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Enter keyword" />
						<button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
					</div>
				</form>
			</li>

			<c:if test="${sessionScope.loginUser != null }">
			<li class="dropdown">
				<a href="javascript:;" data-toggle="dropdown" class="dropdown-toggle f-s-14">
					<i class="fa fa-bell-o"></i>
					<span class="label">5</span>
				</a>
			</li>
			</c:if>
			<li class="dropdown navbar-user">
				<c:if test="${sessionScope.loginUser != null }">
				<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
					<img src="${contextPath}/resources/img/user-13.jpg" alt="" />
					<span class="hidden-xs">${ sessionScope.loginUser.residentNm}</span> <b class="caret"></b>
				</a>
				<ul class="dropdown-menu animated fadeInLeft">
					<li class="arrow"></li>
					<li><a href="javascript:;">Edit Profile</a></li>
					<li><a href="javascript:;"><span class="badge badge-danger pull-right">2</span> Inbox</a></li>
					<li><a href="javascript:;">Calendar</a></li>
					<li><a href="javascript:;">Setting</a></li>
					<li class="divider"></li>
					<li><a href="${contextPath }/logout">Log Out</a></li>

				</ul>
				</c:if>



			</li>
			<c:if test="${sessionScope.loginUser == null }">
				<span style="height: 100%;">
					<button type="button" onclick="location.href='${contextPath}/moveAccount'" class="btn btn-success " style="margin-top: 3%; width: 15%;">Log In</button>
					<button type="button" onclick="location.href='${contextPath}/moveRegister'" class="btn btn-success " style="margin-top: 3%; width: 15%;">회원가입</button>
				</span>
			</c:if>
		</ul>

		<!-- end header navigation right -->
	</div>
	<!-- end container-fluid -->
</div>
</body>
</html>