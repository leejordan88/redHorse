<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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