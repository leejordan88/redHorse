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
<table>
<tr>
<td>sender(img)</td>   <td>${requestScope.messageVO.memberVO.profileimg}</td>
<td>발신자</td>    <td>${requestScope.messageVO.sender}</td>
<td>내용</td>    <td>${requestScope.messageVO.messageContent}</td>
 <td>날짜</td>    <td>${requestScope.messageVO.messageDate}</td>
<td>답장버튼</td><td>삭제버틴</td>
</tr>
</table>
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
	});
</script>


<jsp:include page="../../layout/footer.jsp"></jsp:include>




<script>
	$(document).ready(function() {
		$('#msgmodal').modal('show');
	});
</script>


<!-- 로그인모달 -->
	<div class="modal fade" id="msgmodal" tabindex="-1" role="dialog"
		aria-labelledby="Login" aria-hidden="true">
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="Login">Member Login</h4>
				</div>
				<div class="modal-body">
					<form method="post" action="login.do">
						<input type="hidden" name="command" value="login">
						<div class="form-group">
							<input type="text" class="form-control" id="email-modal"
								placeholder="ID" name="id">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" id="password-modal"
								placeholder="password" name="password">
						</div>

						<p class="text-center">
							<button class="btn btn-green animated fadeInUp" type="submit">
								<i class="fa fa-sign-in"></i> Log in
							</button>
						</p>
					</form>

					<p class="text-center text-muted">Not registered yet?</p>
					<p class="text-center text-muted">
						<a href="register.do"><strong>Register now</strong></a>! It is
						easy and done in 1&nbsp;minute and gives you access to special
						discounts and much more!
					</p>

				</div>
			</div>
		</div>
	</div>

	<!-- 로그인 모달 끝 -->


