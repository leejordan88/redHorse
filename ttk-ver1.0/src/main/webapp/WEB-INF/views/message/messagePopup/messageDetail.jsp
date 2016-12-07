<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../layout/header.jsp"></jsp:include> 

<!-- 원래있던  -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<!-- Select2 -->
<link
	href="${pageContext.request.contextPath}/resources/vendors/select2.min.css"
	rel="stylesheet">
<!-- Add custom CSS here -->
<link
	href="${pageContext.request.contextPath}/resources/message/messageIndex/css/style.css"
	rel="stylesheet">
<!-- JavaScript -->
<script
	src="${pageContext.request.contextPath}/resources/message/messageIndex/js/jquery-1.10.2.js"></script>
<%--   <script src="${pageContext.request.contextPath}/resources/message/messageIndex/js/bootstrap.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/message/messageIndex/js/jquery.parallax-1.1.3.js"></script> --%>


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

	<!-- Services -->
	<div id="services" class="services">
		<div class="container">
			<div class="row">
                    <div id="msgicon">
                        <h2 class="main-title">
                        <img src="${pageContext.request.contextPath}/resources/images/message/mainSend.png" id="moveSend"  >
                        <img src="${pageContext.request.contextPath}/resources/images/message/mainList.png"  id="moveList" >
                        <img src="${pageContext.request.contextPath}/resources/images/message/mainUncheck.png"  id="moveUncheck" >
                       <img src="${pageContext.request.contextPath}/resources/images/message/mainDelete.png"  id="moveDelete" >
                       </h2>
                    </div>
                </div>
<hr>
<table>
<c:forEach var="msvo" items="${requestScope.vo.list}">	
 <tr>
 <td>${msvo.messageVO.memberVO.profileimg}</td>
<td><h5>${msvo.messageVO.sender}</h5></td> 
 <td>${msvo.messageVO.messageDate} | <c:if test="${msvo.messageVO.messageState==0}">읽음</c:if> <br>   <%-- <a href="messageDetail.do?messageNo=${msvo.messageVO.messageNo}" ></a> --%>  ${msvo.messageVO.messageContent}    </td>  
<%--  <td><img src="${pageContext.request.contextPath}/resources/images/message/deleteB.PNG"></td> --%>


 
<!-- <tr>
<td><hr></td></tr> -->
</c:forEach>

<%-- <td>사진<img
									src="${pageContext.request.contextPath}/resources/upload/${sessionScope.mvo.id}/profile/${sessionScope.mvo.profileimg}"></td> --%>


</table>
			<p class="paging">
		<c:set var="pb" value="${requestScope.vo.pagingBean}"></c:set>
		<c:if test="${pb.previousPageGroup}">
			<a href="messageSendList.do?pageNo=${pb.startPageOfPageGroup-1}">◀&nbsp;
			</a>
		
		</c:if>
		<c:forEach var="i" begin="${pb.startPageOfPageGroup}"
			end="${pb.endPageOfPageGroup}">
			<c:choose>
				<c:when test="${pb.nowPage!=i}">
					<a href="messageSendList.do?pageNo=${i}">${i}</a>
				</c:when>
				<c:otherwise>
	${i}
	</c:otherwise>
			</c:choose>
	&nbsp;
	</c:forEach>
		<c:if test="${pb.nextPageGroup}">
			<a href="messageSendList.do?pageNo=${pb.endPageOfPageGroup+1}">▶</a>
		</c:if>
	</p>
	<br>
	<br>
	
		</div>
	</div>
	<!-- /Services -->

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
		$("#moveDelete").click(function(){
			alert("2차때!");
		/* 	location.href="messageListUnChecked.do"; */
		});
	});
</script>


<jsp:include page="../../layout/footer.jsp"></jsp:include>































































<script>
	$(document).ready(function() {
		$('#msgmodal').modal('show');
	});
</script>

<%-- 메세지디테일화면
<table>
<tr>
<td>sender(img)</td>   <td>${requestScope.messageVO.memberVO.profileimg}</td>
<td>발신자</td>    <td>${requestScope.messageVO.sender}</td>
<td>내용</td>    <td>${requestScope.messageVO.messageContent}</td>
 <td>날짜</td>    <td>${requestScope.messageVO.messageDate}</td>
<td>답장버튼</td><td>삭제버틴</td>
</tr>
</table> --%>

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


