<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../layout/header.jsp"></jsp:include> 
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
					<h3>Send Messages</h3>
					<p>보낸메세지 입니다.</p>
				</div>
			</div>
		</div>
	</div>
	<!--   <form id="searchForm">
                      <div class="form-group">
                        찾기버튼
                        <label class="control-label col-md-3"><input type="button" class="btn btn-primary" value="찾기!" id="serachBtn"></label>
                      </div>
					</form> -->

	<!-- Services -->
	<div id="services" class="services">
		<div class="container">
			<div class="row">
                    <div class="col-md-4 col-md-offset-4 text-center">
                        <h2 class="main-title">
                        <img src="${pageContext.request.contextPath}/resources/images/message/mainReceive.png" id="">
                        <img src="${pageContext.request.contextPath}/resources/images/message/mainUncheck.png">
                       <img src="${pageContext.request.contextPath}/resources/images/message/mainDelete.png">
                       </h2>
                        <hr>
                    </div>
                </div>
<table>
<c:forEach var="msvo" items="${requestScope.vo.list}">	
 <tr>
<td><h3>${msvo.messageVO.receiver}</h3></td> 
 <td>${msvo.messageVO.messageDate} | <br>   <%-- <a href="messageDetail.do?messageNo=${msvo.messageVO.messageNo}" ></a> --%>  ${msvo.messageVO.messageContent}    </td>  
<%--  <td><img src="${pageContext.request.contextPath}/resources/images/message/deleteB.PNG"></td> --%>
 </tr>

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

<jsp:include page="../../layout/footer.jsp"></jsp:include>










