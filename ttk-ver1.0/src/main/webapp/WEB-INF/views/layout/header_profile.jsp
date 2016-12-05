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
                    	<a href="upload.do"  >글쓰기</a>
                        <a href="mypage2.do"  >사진첩보기</a>
                        <a href="schedule.do">여행일정보기</a>
                        <a href="#" data-toggle="modal" data-target="#message-modal" >쪽지보내기</a>	
		</div></div>
	</div>

</header>

<!-- 쪽지보내기모달 -->
          <div class="modal fade" id="message-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="Message">Message</h4>
                    </div>
                    <div class="modal-body">
                        <form method="post" action="dispatcher">
                        	<input type="hidden" name="command" value="login">
                            <div class="form-group">
                            <input type="text" id="receiver" name="receiver" placeholder="받는사람이름" readonly="readonly" class="form-control"/>
                            </div>
                            <div class="form-group">
                            	<textarea class="form-control" id="messageContent" name="messageContent" cols="45" rows="9" placeholder="인터넷은 우리가 함께 만들어가는 소중한 공간입니다. 쪽지 작성 시 타인에 대한 배려와 책임을 담아주세요."></textarea>
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
