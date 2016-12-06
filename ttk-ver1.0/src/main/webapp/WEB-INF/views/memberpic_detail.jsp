<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="layout/header_profile.jsp"/>

<script src="//code.jquery.com/jquery.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
    	/* $("#listImg").click(function(){    		
    		location.href="${pageContext.request.contextPath}/list.do";
    	}); */
    	$("#deleteMemberPic").click(function(){ 
    		if(confirm("게시물을 삭제하시겠습니까?"))
    			/* html, javascirpt, css(클라이언트에게 도달하는 정보일 때는 )
    				-> ${pageContext.request.contextPath}
    			*/
    		
    		location.href="${pageContext.request.contextPath}/deleteMemberPic.do?pictureNo=${requestScope.pvo.pictureNo}";
    	});
    	/* $("#updateImg").click(function(){  
    		if(confirm("게시물을 수정하시겠습니까?"))
    		location.href="${pageContext.request.contextPath}/updateView.do?no=${requestScope.bvo.no }";
    	}); */
    });	
</script>
<div class="li_table" >
 	<ul class="detail">
 	<li class="col">Title</li>
 	<li>Name</li>
 	<li>Date</li>
 	<li>Hit</li>
 	<li>img</li>
 	</ul>
 	
 	<ul>
	<li class="col">${requestScope.pvo.pictureTitle} </li>
	<li>${requestScope.pvo.memberVO.name }</li>
	<li>${requestScope.pvo.pictureDate } </li>
	<li>${requestScope.pvo.hit }</li>
	<li><img src="${pageContext.request.contextPath}/resources/picupload/${pvo.memberVO.getId() }/picture/${pvo.fileName}"></li>
 	</ul>



</div>


<%-- 
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
		</tr> --%>
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
<!-- 	</table> -->

<br>
<br>
<br>

	<button class="btn btn-primary" type="submit">수정</button>
	<button class="btn btn-primary" type="button" id="deleteMemberPic" name="deleteMemberPic">삭제</button>



<jsp:include page="layout/footer.jsp"/>
