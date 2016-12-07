<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../../layout/header.jsp"></jsp:include>
<!-- Select2 -->
<link
	href="${pageContext.request.contextPath}/resources/vendors/select2.min.css"
	rel="stylesheet">
<!-- Add custom CSS here -->
<link
	href="${pageContext.request.contextPath}/resources/message/messageIndex/css/style.css"
	rel="stylesheet">


<script
   src="${pageContext.request.contextPath}/resources/message/messageIndex/js/jquery-1.10.2.js"></script>

<section id="profile-list">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title text-center">
					<h3>Unread Messages</h3>
					<p>새로운 메세지를 확인해주세요!</p>
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
						<img
							src="${pageContext.request.contextPath}/resources/images/message/mainReceive.png"
							id="moveReceive"> <img
							src="${pageContext.request.contextPath}/resources/images/message/mainSend.png"
							id="moveSend"> <img
							src="${pageContext.request.contextPath}/resources/images/message/mainDelete.png"
							id="moveDelete">
					</h2>
				</div>
			</div>
			<hr>

			<table>
				<c:forEach var="msvo" items="${requestScope.vo.list}">
					<tr>
						<td>${msvo.messageVO.memberVO.profileimg}</td>
						<td><h5>${msvo.messageVO.sender}</h5></td>
						<td>${msvo.messageVO.messageDate}| <br> <a
							href="messageDetail.do?messageNo=${msvo.messageVO.messageNo}"></a>
							${msvo.messageVO.messageContent}
						</td>
					</tr>

				</c:forEach>

				<%-- <td>사진<img
									src="${pageContext.request.contextPath}/resources/upload/${sessionScope.mvo.id}/profile/${sessionScope.mvo.profileimg}"></td> --%>


			</table>
			<p class="paging">
				<c:set var="pb" value="${requestScope.vo.pagingBean}"></c:set>
				<c:if test="${pb.previousPageGroup}">
					<a href="messageListUnChecked.do?pageNo=${pb.startPageOfPageGroup-1}">◀&nbsp;
					</a>

				</c:if>
				<c:forEach var="i" begin="${pb.startPageOfPageGroup}"
					end="${pb.endPageOfPageGroup}">
					<c:choose>
						<c:when test="${pb.nowPage!=i}">
							<a href="messageListUnChecked.do?pageNo=${i}">${i}</a>
						</c:when>
						<c:otherwise>
	${i}
	</c:otherwise>
					</c:choose>
	&nbsp;
	</c:forEach>
				<c:if test="${pb.nextPageGroup}">
					<a href="messageListUnChecked.do?pageNo=${pb.endPageOfPageGroup+1}">▶</a>
				</c:if>
			</p>
			<br> <br>

		</div>
	</div>
	<!-- /Services -->

</section>
<script
	src="${pageContext.request.contextPath}/resources/vendors/select2.full.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#moveReceive").click(function() {
			location.href = "messageList.do";
		});
		$("#moveSend").click(function() {
			location.href = "messageSendList.do";
		});
		$("#moveDelete").click(function() {
			alert("2차때!");
		});
	});
</script>

<jsp:include page="../../layout/footer.jsp"></jsp:include>

























