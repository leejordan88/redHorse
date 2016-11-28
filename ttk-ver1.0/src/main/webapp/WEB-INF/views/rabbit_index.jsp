<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="layout/header.jsp"></jsp:include>

        <!--css here-->

        <link href="assets_rabbit/css/main.css" rel="stylesheet">

    <body>
  <br><br><br>
    <!-- Start About Us Section -->
    <section id="my-profile" class="my-profile-section">
        <div class="container">
            <div class="row">
             <div class="col-md-6">
                    <img class="img-responsive img-rabbit" src="${pageContext.request.contextPath}/resources/assets_rabbit/images/home.jpg">
                </div>
                <div class="col-md-6 text-center">
                    <div class="logo">
                       <!--  <img src="assets_rabbit/images/logo.png"> -->
                       <h4>Red Horse님의 개인 페이지</h4>
                       <h4>Hit 1</h4>
                    </div>
                    <p class="home-description">
                        Hi, I am 적토마, Web developer from michigan, US. I am passionate about design, development and interaction. I really love what I do.
                    </p>
                    <div class="btn-group-vertical custom_btn">
                    	<a href="upload.jsp" class="btn btn-rabbit _active" >글쓰기</a>
                        <a href="mypic.jsp" class="btn btn-rabbit _active" >사진첩보기</a>
                        <a href="work.html" class="btn btn-rabbit">여행일정보기</a>
                        <a href="#" data-toggle="modal" data-target="#message-modal" class="btn btn-rabbit">쪽지보내기</a>
                    </div>
                    <div class="social">
                        <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div><!-- /.row -->            
            
        </div><!-- /.container -->
    </section>
    <!-- End About Us Section -->
  
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


<jsp:include page="layout/footer.jsp"></jsp:include>
    </body>
</html>