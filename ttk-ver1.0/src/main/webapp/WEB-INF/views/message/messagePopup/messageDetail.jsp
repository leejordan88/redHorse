<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../layout/header.jsp"></jsp:include> 

<!-- Add custom CSS here -->
<link
   href="${pageContext.request.contextPath}/resources/css/messageStyle.css"
   rel="stylesheet">

<!-- 전체 페이지시작 -->
<section id="profile-list">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title text-center">
					<h3>A message, Reply now!</h3>
					<p>지금 답장하세요!!</p>
				</div>
			</div>
		</div>
	</div>

<!--파란색부분 -->
	<div id="services" class="services">
		<div class="container">
			<div class="row">
                    <div id="msgicon">
                        <h2 class="main-title">
                        <img src="${pageContext.request.contextPath}/resources/images/message/mainReceive.png"  id="moveReceive" >
                        <img src="${pageContext.request.contextPath}/resources/images/message/mainUncheck.png"  id="moveUncheck" >
                       <img src="${pageContext.request.contextPath}/resources/images/message/mainDelete.png"  id="moveDelete" >
                       </h2>
                    </div>
                </div>
			<hr>

<!-- 내용부분 -->
  <div class="panel panel-white profile-widget">
					 <div class="image-container bg2">  
                        <img src="${pageContext.request.contextPath}/resources/upload/${requestScope.messageVO.sender}/profile/${requestScope.messageVO.memberVO.profileimg}" class="avatar" alt="avatar"> 
                    </div>
                <div class="col-sm-12">
                    <div class="details">
                        <h4 id="messageSender">${requestScope.messageVO.sender} </h4>
                        <h5 id="messageDate">${requestScope.messageVO.messageDate}</h5><hr>
                        <div id="messageContent">${requestScope.messageVO.messageContent}</div>
                    		<br><br>
                        <div class="mg-top-10">
                            <a href="#" class="btn-blue">send<%-- <img src="${pageContext.request.contextPath}/resources/images/message/send.png" > --%></a>
                            <a href="#" class="btn-green">delete<%-- <img src="${pageContext.request.contextPath}/resources/images/message/delete.png" > --%></a>
                        </div>
                </div>
            </div>
</div>
<!-- 내용부분 끝-->
		</div>
	</div>
	<!-- 파란부분끝 -->
</section>
<script src="${pageContext.request.contextPath}/resources/vendors/select2.full.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#moveSend").click(function(){
			location.href="messageSendList.do";
		});
		$("#moveUncheck").click(function(){
			location.href="messageListUnChecked.do";
		});
		$("#moveReceive").click(function(){
			location.href="messageList.do";
		});
		$("#moveDelete").click(function(){
			alert("2차때!");
		});
		$('.btn-blue').click(function() {
				$('#message-modal').modal('show');
		});
	
		$('.btn-green').click(function() {
			alert("2dsdd!");
		});
	});
	
	</script>
<jsp:include page="../../layout/footer.jsp"></jsp:include>

 <!-- 쪽지보내기모달 -->
          <div class="modal fade" id="message-modal" tabindex="-1" role="dialog" aria-hidden="true">
          
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="Message">Message</h4>
                    </div>
                    <div class="modal-body">
                        <form method="post" action="messageSend.do">
                            <div class="form-group">
                            <input type="text" id="receiver" name="receiver" value="${requestScope.messageVO.sender}" readonly="readonly" class="form-control"/>
                            </div>
                            <div class="form-group">
                            	<textarea class="form-control" required="required" id="messageContentSend" name="messageContent" cols="45" rows="9" placeholder="인터넷은 우리가 함께 만들어가는 소중한 공간입니다. 쪽지 작성 시 타인에 대한 배려와 책임을 담아주세요." ></textarea>
                            </div>
                            <p class="text-center">
                                <button class="btn btn-send animated fadeInUp" type="submit"><i class="fa fa-sign-in"></i>전송</button>
                            </p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
   <!-- 쪽지보내기 모달 끝 -->  

