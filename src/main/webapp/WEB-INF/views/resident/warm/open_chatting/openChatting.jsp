<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html >
<!--<![endif]-->
<head>
   <style>
      body{resize: none !important; }
      .alert.alert-success { background: rgb(237,169,0) !important; color: black !important; height: 66px !important; padding: 15px !important; margin: 0px !important; font-size: 1.3em !important; margin-bottom: 10px !important; width: 50%; display: inline-block; }
      .alert.alert-success:hover { background: #AE8B59 !important; -webkit-transition:background 0.2s; }

      .content .nav-tabs { background: rgb(237,169,0) !important; }
      
      /* page-header */
      .content > table.header button{ margin-left:20px; margin-bottom:20px; }
      
      /* nav-tabs */
      .content > #ioniconsTab { height:40px; }
      .content > #ioniconsTab li.search-li { float: right; }
      .content > #ioniconsTab li.search-li form { margin-top:5px; }
      .content > #ioniconsTab li.search-li form button { margin-top:-6px; }
      
      /* tab-content */
      .content > .tab-content > div > div { overflow-y: auto; width: auto; height: 480px; text-align: center; }
      .content > .tab-content > div > div span { display:inline-block; left: 45%; position: relative; }
      
      /* custom-modal */
      .custom-modal {  transition-property: opacity; transition-duration: 0.5s; position: fixed; top: 0; left: 0; width:100%; height: 100%; text-align: center; background-color: rgb(0,0,0,0.7); }
      .custom-modal.modal-hide { opacity: 0; z-index: -10;
         transition-property: opacity; transition-duration: 0.5s; }
      
      .custom-modal > div {  display: inline-block; width: 500px; margin-top: 10%; text-align: left; background-color: #d9e0e7; }
      .createRoomDiv .form-group > label { width: 100%; padding: 0 15px; text-align: left; }
      .createRoomDiv .form-group > div { width: 100%; padding: 0 15px; }
      .createRoomDiv .form-group > div.buttons { text-align: right; }
      .createRoomDiv .form-group > div.buttons .btn-cancel { background-color: #CCC; }
      .createRoomDiv .form-group > div.buttons .btn-cancel:hover { background-color: #BBB; }
      
   </style>
</head>
<body>
   <!-- begin #content -->
   <div id="content" class="content">

      <!-- begin page-header -->
      <table class="header">
         <tr>
            <td>
               <h1 class="page-header">오픈채팅</h1>
            </td>
            <td>
               <button id="add-with-callbacks" class="btn btn-sm btn-warning modal-show" data-modal-id="createRoomDiv">방만들기</button>
            </td>
         </tr>
      </table>
      
      <!-- end page-header -->
      
           <!-- begin nav-tabs -->
           <ul id="ioniconsTab" class="nav nav-tabs">
               <li class="active">
                  <a href="#allRooms" data-toggle="tab">
                   <span class="hidden-xs m-l-3">모든 채팅방<span class="badge badge-inverse m-l-3">252</span></span>
                  </a>
               </li>
               <li >
                  <a href="#myRooms" data-toggle="tab">
                     <span class="hidden-xs m-l-3">참여중인 채팅방<span class="badge badge-inverse m-l-3">267</span></span>
                  </a>
               </li>
         <li class="search-li">
            <form class="navbar-form full-width">
               <div class="form-group">
                  <input type="text" class="form-control" placeholder="채팅방 검색" />
                  <button type="submit" class="btn btn-search">
                     <span class="fa fa-search"></span>
                  </button>
               </div>
            </form>
         </li>
           </ul>
           <!-- end nav-tabs -->

           <!-- begin tab-content -->
           <div id="ioniconsTabContent" class="tab-content" align="center">
               <!-- begin tab-pane -->
               <div class="tab-pane fade in active" id="allRooms">
                   <div>
                        <div class="alert alert-success fade in m-b-15" onclick="chat()">
                  <strong>뜨개질방 들어오세융</strong><br>
                  <span >20/25</span>
               </div>
                   </div>
               </div>
               <!-- end tab-pane -->
               <!-- begin tab-pane -->
               <div class="tab-pane fade" id="myRooms">
                  <div>
                        <div class="alert alert-success fade in m-b-15" onclick="chat()">
                  <strong>뜨개질방 들어오세융</strong><br>
                  <span >20/25</span>
               </div>
                   </div>
               </div>
               <!-- end tab-pane -->
           </div>
           <!-- end tab-content -->
           
   </div>
   <!-- end #content -->
   <!-- end page container -->
   
   <!-- createRoom -->
   <div id="createRoomDiv" class="createRoomDiv custom-modal modal-hide">
      <div class="panel-body">
         <form class="form-horizontal">
            <div class="form-group">
               <label class="control-label">방 제목</label>
               <div>
                  <input type="text" class="form-control" placeholder="방 제목을 입력하세요">
               </div>
            </div>
   
            <div class="form-group">
               <label class="control-label">비밀번호 생성</label>
               <div class="input-group">
                  <span class="input-group-addon"> <input type="checkbox">
                  </span> <input type="text" class="form-control" placeholder="비밀번호를 입력하세요.">
               </div>
            </div>

            <div class="form-group">
               <label class="control-label">참여 인원</label>
               <div>
                  <select class="form-control">
                     <c:forEach var="i" begin="2" end="50">
                        <option><c:out value="${i}" /></option>
                     </c:forEach>
                  </select>
               </div>
            </div>

            <div class="form-group">
               <div class="buttons">
                  <button class="btn btn-sm btn-cancel modal-hide-btn">취소</button>
                  <button type="submit" class="btn btn-sm btn-success">방생성</button>
               </div>
            </div>
         </form>
      </div>
   </div>
</body>

<script>
   $(function() {
      CustomModal.init();
   });

   function chat(){
      window.open("${contextPath}/chatroom.me", "팝업이름", "width=450px; height=600px;");   
   }
   function create(){
      window.open("${contextPath}/createroom.me", "팝업이름", "width=450px; height=270px;");
   }
</script>
   
</html>