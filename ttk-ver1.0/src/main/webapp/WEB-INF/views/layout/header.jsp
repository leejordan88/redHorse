<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TTK</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/resources/asset/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Font Awesome CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">
    
    
    <!-- Animate CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/animate.css" rel="stylesheet" >
    
    <!-- Owl-Carousel -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.css" >
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.css" >
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.transitions.css" >

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/responsive.css" rel="stylesheet">
    
    <!-- Colors CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/color/light-red.css" title="light-red">

    <!-- Custom Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    
    <!-- Modernizer js -->
    <script src="${pageContext.request.contextPath}/resources/js/modernizr.custom.js"></script>

    <!-- NProgress -->
    <link href="${pageContext.request.contextPath}/resources/vendors/nprogress.css" rel="stylesheet">
    
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/asset/css/flatpickr.min.css">
	<script src="${pageContext.request.contextPath}/resources/asset/js/flatpickr.min.js"></script>
	<link rel="stylesheet" href="https://unpkg.com/flatpickr/dist/flatpickr.min.css">
	<script src="https://unpkg.com/flatpickr"></script>
	
  </head>

<body class="index">
    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="index.do">TTK</a>
            </div>


<!-- 회원가입시 적용 -->
            <!-- Collect the nav links, forms, and other content for toggling --> 
             
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
              
                    <li class="hidden">
                        <a href="#page-top"></a>
                        
                    </li>
                    <li>
                        <a class="page-scroll" href="index.do#portfolio-work">Place</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="profile_list.do">ProfileList</a>
                    </li>             
                    <li>
                        <a class="page-scroll" href="index.do#team">Team</a>
                    </li>
                    <c:choose>
              <c:when test="${sessionScope.mvo==null}">
                    <li>
                        <a href="register.do">회원가입</a>
                    </li>
					<li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a></li>
					</c:when>
				<c:otherwise>
			
					<li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="${pageContext.request.contextPath}/resources/upload/${sessionScope.mvo.id}/profile/${sessionScope.mvo.profileimg}" alt=""> ${sessionScope.mvo.name}님
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="mypage2.do">My Profile</a></li>
                    <li><a href="upload.do">글쓰기</a></li>


                    <li><a href="update.do">회원정보수정</a></li>

                    <li><a href="logout.do"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>
                
                <!-- 로그인 등장 끝 -->
                
        <!-- 쪽지 함 -->
       			 <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">1</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
               <!-- 쪽지 시작 -->
                    <li>
                      <a href="#" >
                        <span class="user-profile"><img src="${pageContext.request.contextPath}/resources/images/team/진석.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>오진석</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                         같이 여행가실래요?
                        </span>
                      </a>
                    </li>               

   					 <li>
                      <div class="text-center">
                        <a href="#">
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>             
                      </div>
                    </li>
                     </ul>
                    <!-- 쪽지 끝 -->
               </c:otherwise>
                  	</c:choose>
                
                  </ul>	
            </div>
  
            <!-- /.navbar-collapse -->
        </div>     
        
        <!-- /.container-fluid -->
    </nav>

  
    <!-- 로그인모달 -->
          <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="Login">Member Login</h4>
                    </div>
                    <div class="modal-body">
                        <form method="post" action="login.do">
                        	<input type="hidden" name="command" value="login">
                            <div class="form-group">
                                <input type="text" class="form-control" id="email-modal" placeholder="ID" name="id">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" id="password-modal" placeholder="password" name="password">
                            </div>

                            <p class="text-center">
                                <button class="btn btn-green animated fadeInUp" type="submit"><i class="fa fa-sign-in"></i> Log in</button>
                            </p>
                        </form>

                        <p class="text-center text-muted">Not registered yet?</p>
                        <p class="text-center text-muted"><a href="register.do"><strong>Register now</strong></a>! It is easy and done in 1&nbsp;minute and gives you access to special discounts and much more!</p>

                    </div>
                </div>
            </div>
        </div>
        
   <!-- 로그인 모달 끝 -->



    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/vendors/jquery.min.js"></script>
    <!-- FastClick -->
    <script src="${pageContext.request.contextPath}/resources/vendors/fastclick.js"></script>
    <!-- NProgress -->
    <script src="${pageContext.request.contextPath}/resources/vendors/nprogress.js"></script>

 <!-- 이 위치에 있던 </body> </html> 테그 삭제 -->