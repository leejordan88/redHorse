<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="../layout/header.jsp"></jsp:include>
   <!-- Add custom CSS here -->
<link
   href="${pageContext.request.contextPath}/resources/css/messageStyle.css"
   rel="stylesheet">
  
<section id="profile-list">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title text-center">
                	<h3>메세지 함</h3>
                    <p>읽지않은 메세지${requestScope.count}개,  아이콘을 클릭하세요!</p>
				</div>
                   </div>
              </div> 
			</div>   

<!-- 파란색부분시작 -->
 <div id="services" class="services">
            <div class="container">
              		<div class="row">
                    <div class="col-md-4 col-md-offset-4 text-center">
                        <h4 class="main-title">click icons!</h4>
                        <br><br>
                    </div>
                </div>
              
                <div class="divide50"></div>
                <div class="row">
                    <div class="col-md-3 text-center">
                         <div class="service-item" id="messageSendList">
                           <i class="service-icon fa fa-paper-plane-o"></i></a>
                            <h4 class="service-title">Send Messages </a></h4>
                        </div>
                    </div>
                    <div class="col-md-3 text-center">
                        <div class="service-item" id="messageList">
                           <!-- <a href="messageList.do"> --> <i class="service-icon fa fa-envelope"></i></a>
                            <h4 class="service-title">Receive Messages</h4>
                        </div>
                    </div>
                    <div class="col-md-3 text-center">
                        <div class="service-item"   id="messageListUnChecked">
                           <i class="service-icon fa fa-plus-square-o"></i></a>
                            <h4 class="service-title">Unread Messages</a></h4>
                        </div>
                    </div>
                       <div class="col-md-3 text-center">
                        <div class="service-item">
                            <i class="service-icon fa fa-trash-o"></i>
                            <h4 class="service-title">Delete Message</h4>
					 </div>
                    </div>
                </div>
            </div>
        </div>
 </section> 
      <!-- 파란색부분끝 --> 

<!-- 경로이동 ( 아이콘클릭) -->
<script type="text/javascript">
	$(document).ready(function() {
		$("#messageList").click(function(){
			location.href="messageList.do";
		});
		$("#messageSendList").click(function(){
			location.href="messageSendList.do";
		});
		$("#messageListUnChecked").click(function(){
			location.href="messageListUnChecked.do";
		});
	});
</script>

<jsp:include page="../layout/footer.jsp"></jsp:include>