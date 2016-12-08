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
					<h3>Receive Messages</h3>
					<p>받은 메세지입니다.</p>
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
						<img
							src="${pageContext.request.contextPath}/resources/images/message/mainSend.png"
							id="moveSend"> <img
							src="${pageContext.request.contextPath}/resources/images/message/mainUncheck.png"
							id="moveUncheck"> <img
							src="${pageContext.request.contextPath}/resources/images/message/mainDelete.png"
							id="moveDelete">
					</h2> 
                   </div>     
             </div>
<hr>
   <!-- 리스트부분시작 -->
   <div class="container bootstrap snippet">
    <div class="row">
            <div class="chat-message" id="list-form">
                <ul class="chat">
                       <c:forEach var="msvo" items="${requestScope.vo.list}">   
                    <li class="left clearfix">
                    <a href="messageDetail.do?messageNo=${msvo.messageVO.messageNo}">
                       <span class="chat-img pull-left">
                          <img src="${pageContext.request.contextPath}/resources/upload/${msvo.messageVO.sender}/profile/${msvo.messageVO.memberVO.profileimg}" alt="User Avatar">
                       </span>
                     </a>
                       <div class="chat-body clearfix">
                          <div class="header">
                                <strong class="primary-font">${msvo.messageVO.sender}</strong>
                        <small class="pull-right text-muted"><c:if test="${msvo.messageVO.messageState==0}">읽음 |  </c:if> 
								${msvo.messageVO.messageDate}</small>
                          </div>
                          <p id="list-font">
                        ${msvo.messageVO.messageContent}
                          </p>
                       </div>
                    </li>
                      </c:forEach>
                </ul>
            </div>                      
      </div>
   </div>
<hr>
<!-- 리스트부분 끝 -->

<!-- 페이징부분 -->
<div id="plist">
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
   <br>
   <br>
   </div>
  <!-- 페이징부분  끝-->
   </div>
   </div>
</section>
<!--  페이지전체끝 -->

<!--  경로이동  java script -->
<script
	src="${pageContext.request.contextPath}/resources/vendors/select2.full.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#moveSend").click(function() {
			location.href = "messageSendList.do";
		});
		$("#moveUncheck").click(function() {
			location.href = "messageListUnChecked.do";
		});
		$("#moveDelete").click(function() {
			alert("2차때!");
		});
	/* $(".left").click(function() {
			alert("떳다");
				location.href = "messageSendList.do";
		});   */
	});

</script>
<jsp:include page="../../layout/footer.jsp"></jsp:include>
