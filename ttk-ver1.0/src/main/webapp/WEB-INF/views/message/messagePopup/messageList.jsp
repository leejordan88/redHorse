<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <jsp:include page="../layout/header.jsp"></jsp:include> --%>
<!-- Select2 -->
<!-- 리스트 부트스트랩 -->
<link
	href="${pageContext.request.contextPath}/resources/message/messageIndex/css/listbootstrap.css"
	rel="stylesheet" />
<%-- 
<!-- Add custom CSS here -->
<link
	href="${pageContext.request.contextPath}/resources/message/messageIndex/css/style.css"
	rel="stylesheet">
<!-- JavaScript -->
<script
	src="${pageContext.request.contextPath}/resources/message/messageIndex/js/jquery-1.10.2.js"></script>
  <script src="${pageContext.request.contextPath}/resources/message/messageIndex/js/bootstrap.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/message/messageIndex/js/jquery.parallax-1.1.3.js"></script> --%>

<!-- <section id="profile-list">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title text-center">
					<h3>Receive Messages</h3>
					<p>메세지를확인하세요!!</p>
				</div>
			</div>
		</div>
	</div> -->





<%-- 	<!-- Services -->
	<div id="services" class="services">
		<div class="container">
			<div class="row">
                    <div class="col-md-4 col-md-offset-4 text-center">
                        <h2 class="main-title"><img src="${pageContext.request.contextPath}/resources/images/message/deleteMessage.png">
		<img src="${pageContext.request.contextPath}/resources/images/message/sendList.png">
		<img src="${pageContext.request.contextPath}/resources/images/message/unChceckedMessage.png"></h2>
                        <hr>
                    </div>
                </div> --%>

<!-- 리스트 부트스트랩 -->
<div class="container">
	<div class="row " style="padding-top: 40px;">
		<!-- <h3 class="text-center">BOOTSTRAP CHAT EXAMPLE</h3>
		<br /> <br /> -->
		<div class="col-md-8">
			<div class="panel panel-info">
				<div class="panel-heading">Receive Messages</div>
				<div class="panel-body">
					<ul class="media-list">
						<c:forEach var="msvo" items="${requestScope.vo.list}">
						<li class="media">
							<div class="media-body">
								<div class="media">
									<a class="pull-left" href="#"> <img
										class="media-object img-circle " src=" 사진들어가는 부분 크기조절?" />
									</a>
									<div class="media-body">
										${msvo.messageVO.messageContent}  <br /> <small class="text-muted">${msvo.messageVO.sender}
											| ${msvo.messageVO.messageDate} | <c:if test="${msvo.messageVO.messageState==0}">읽음</c:if></small>  
										<hr />
									</div>
								</div>
							</div>
						</li>
</c:forEach>
		
		<li class="media">
							<div class="media-body">
								<div class="media">
									<a class="pull-left" href="#"> <img
										class="media-object img-circle "  />
									</a>
									<div class="media-body">
									<!-- 페이징 -->
<p class="paging">
	<c:set var="pb" value="${requestScope.vo.pagingBean}"></c:set>
	<c:if test="${pb.previousPageGroup}">
		<a href="messageList.do?pageNo=${pb.startPageOfPageGroup-1}">◀&nbsp;
		</a>
	</c:if>
	<c:forEach var="i" begin="${pb.startPageOfPageGroup}"
		end="${pb.endPageOfPageGroup}">
		<c:choose>
			<c:when test="${pb.nowPage!=i}">
				<a href="messageList.do?pageNo=${i}">${i}</a>
			</c:when>
			<c:otherwise>
	${i}
	</c:otherwise>
		</c:choose>
	&nbsp;
	</c:forEach>
	<c:if test="${pb.nextPageGroup}">
		<a href="messageList.do?pageNo=${pb.endPageOfPageGroup+1}">▶</a>
	</c:if>
</p>
										<hr />
									</div>
								</div>
							</div>
						</li>
		
		
		<%-- 					
				<c:forEach var="msvo" items="${requestScope.vo.list}">
						<c:if test="${msvo.messageVO.messageState==0}"><img src="${pageContext.request.contextPath}/resources/images/message/checkB.PNG"></c:if>
						
					 사진<img
									src="${pageContext.request.contextPath}/resources/upload/${sessionScope.mvo.id}/profile/${sessionScope.mvo.profileimg}"></td>
						${msvo.messageVO.sender}
						<a href="messageDetail.do?messageNo=${msvo.messageVO.messageNo}">
								${msvo.messageVO.messageContent} </a>
						${msvo.messageVO.messageDate}
						<img src="${pageContext.request.contextPath}/resources/images/message/deleteB.PNG">
					
				</c:forEach>
			--%>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 리스트 부트스트랩  끝-->







<%-- 	</div>
	</div>
	<!-- /Services -->

</section>
	


<script
	src="${pageContext.request.contextPath}/resources/vendors/select2.full.min.js"></script>

<jsp:include page="../layout/footer.jsp"></jsp:include> --%>



		<%-- 					<table>
				<c:forEach var="msvo" items="${requestScope.vo.list}">
					<tr>
						<td>
						<c:if test="${msvo.messageVO.messageState==0}"><img src="${pageContext.request.contextPath}/resources/images/message/checkB.PNG"></c:if>
						</td>
						<td> 사진<img
									src="${pageContext.request.contextPath}/resources/upload/${sessionScope.mvo.id}/profile/${sessionScope.mvo.profileimg}"></td>
						<td>${msvo.messageVO.sender}</td>
						<td><a
							href="messageDetail.do?messageNo=${msvo.messageVO.messageNo}">
								${msvo.messageVO.messageContent} </a></td>
						<td>${msvo.messageVO.messageDate}</td>
						<td><img src="${pageContext.request.contextPath}/resources/images/message/deleteB.PNG"></td>
					</tr>
				</c:forEach>
			</table> --%>



