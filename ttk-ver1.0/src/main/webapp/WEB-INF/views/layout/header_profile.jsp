<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

  </head>
  <jsp:include page="header.jsp"></jsp:include>
	<body>
	<header id="header">
		<div id="head" class="parallax" >
		<h1 id="logo" class="text-center">

			<img class="img-circle" src="${pageContext.request.contextPath}/resources/upload/${sessionScope.mvo.id}/profile/${sessionScope.mvo.profileimg}" >
			<span class="title">${sessionScope.mvo.name}'s Page</span>
		</h1>
		<h5 class="text-center">방문자수 <strong>${sessionScope.mvo.hit}</strong></h5>
		<h4 class="text-center">${sessionScope.mvo.introduce}</h4>
		
			<div class="text-center">
				<div class="container-fluid">
                    	<a href="upload.do" class="btn btn-rabbit" >글쓰기</a>
                        <a href="mypage2.do" class="btn btn-rabbit" >사진첩보기</a>
                        <a href="schedule.do" class="btn btn-rabbit">여행일정보기</a>
                        <a href="#" data-toggle="modal" data-target="#message-modal" class="btn btn-rabbit">쪽지보내기</a>
	
		</div></div>
	</div>

</header>

<!-- 쪽지보내기모달 -->
          <div class="modal fade" id="message-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="Login">Message</h4>
                    </div>
                    <div class="modal-body">
                        <form method="post" action="dispatcher">
                        	<input type="hidden" name="command" value="login">
                            <div class="form-group">
                                <input type="text" class="form-control"  placeholder="Title">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control"  placeholder="Content" >
                            </div>
                            <p class="text-center">
                                <button class="btn btn-green animated fadeInUp" type="submit"><i class="fa fa-sign-in"></i>전송</button>
                            </p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
   <!-- 쪽지보내기 모달 끝 -->  



    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/vendors/jquery.min.js"></script>
    <!-- FastClick -->
    <script src="${pageContext.request.contextPath}/resources/vendors/fastclick.js"></script>
    <!-- NProgress -->
    <script src="${pageContext.request.contextPath}/resources/vendors/nprogress.js"></script>
    

 
  </body>
</html>