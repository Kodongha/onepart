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
				<ul class="dropdown-menu media-list pull-right animated fadeInDown">
                          <li class="dropdown-header">Notifications (5)</li>
                          <li class="media">
                              <a href="javascript:;">
                                  <div class="media-left"><i class="fa fa-bug media-object bg-red"></i></div>
                                  <div class="media-body">
                                      <h6 class="media-heading">Server Error Reports</h6>
                                      <div class="text-muted f-s-11">3 minutes ago</div>
                                  </div>
                              </a>
                          </li>
                          <li class="media">
                              <a href="javascript:;">
                                  <div class="media-left"><img src="${contextPath}/resources/img/user-1.jpg" class="media-object" alt="" /></div>
                                  <div class="media-body">
                                      <h6 class="media-heading">John Smith</h6>
                                      <p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
                                      <div class="text-muted f-s-11">25 minutes ago</div>
                                  </div>
                              </a>
                          </li>
                          <li class="media">
                              <a href="javascript:;">
                                  <div class="media-left"><img src="${contextPath}/resources/img/user-2.jpg" class="media-object" alt="" /></div>
                                  <div class="media-body">
                                      <h6 class="media-heading">Olivia</h6>
                                      <p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
                                      <div class="text-muted f-s-11">35 minutes ago</div>
                                  </div>
                              </a>
                          </li>
                          <li class="media">
                              <a href="javascript:;">
                                  <div class="media-left"><i class="fa fa-plus media-object bg-green"></i></div>
                                  <div class="media-body">
                                      <h6 class="media-heading"> New User Registered</h6>
                                      <div class="text-muted f-s-11">1 hour ago</div>
                                  </div>
                              </a>
                          </li>
                          <li class="media">
                              <a href="javascript:;">
                                  <div class="media-left"><i class="fa fa-envelope media-object bg-blue"></i></div>
                                  <div class="media-body">
                                      <h6 class="media-heading"> New Email From John</h6>
                                      <div class="text-muted f-s-11">2 hour ago</div>
                                  </div>
                              </a>
                          </li>
                          <li class="dropdown-footer text-center">
                              <a href="javascript:;">View more</a>
                          </li>
				</ul>
			</li>
			</c:if>
			<li class="dropdown navbar-user">
				<c:if test="${sessionScope.loginUser != null }">
				<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
					<img src="${contextPath}/resources/img/user-13.jpg" alt="" />
					<span class="hidden-xs">${ sessionScope.loginUser.managerNm}</span> <b class="caret"></b>
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
					<button type="button" onclick="location.href='${contextPath}/moveAccount'" class="btn btn-success m-r-5 m-b-5" style="margin-top: 3%;">Log In</button>
					<button type="button" onclick="location.href='${contextPath}/moveRegister'" class="btn btn-success m-r-5 m-b-5" style="margin-top: 3%;">회원가입</button>
				</span>
			</c:if>
		</ul>

		<!-- end header navigation right -->
	</div>
	<!-- end container-fluid -->
</div>
</body>
</html>