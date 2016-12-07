<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="layout/header_myprofile.jsp"/>


<table class="content">
		<tr>
			<td>NO : ${requestScope.pvo.pictureNo } </td>
			<td colspan="2">${requestScope.pvo.pictureTitle} </td>
		</tr>
		<tr>
			<td>작성자 :  ${requestScope.pvo.memberVO.name }</td>
			<td> ${requestScope.pvo.pictureDate }</td>
			<td>조회수 : ${requestScope.pvo.hit }</td>
		</tr>
		<tr>
			<td colspan="3">
			<pre>${requestScope.pvo.pictureContent}</pre>
			</td>
		</tr>
<%-- 		<tr>
			<td valign="middle" align="center" colspan="3">
			 <img id="listImg" class="action" src="${pageContext.request.contextPath}/img/list_btn.jpg" onclick="sendList()" >
			 <c:if test="${requestScope.pvo.memberVO.id==sessionScope.mvo.id}">
			 <img id="deleteImg" class="action"  onclick="deleteBoard()" src="${pageContext.request.contextPath}/img/delete_btn.jpg" > 
			 <img id="updateImg" class="action"  onclick="updateBoard()" src="${pageContext.request.contextPath}/img/modify_btn.jpg" >
			 </c:if>
			 <br><br>			
			 </td>
		</tr> --%>
	</table>







<jsp:include page="layout/footer.jsp"/>
