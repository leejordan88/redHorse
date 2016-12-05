<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="messageCss/home.css">

</head>
<body>
<table class="layout">
	<tr>
		<td class="messageLeft">
<jsp:include page="messageLeft.jsp"></jsp:include>
		</td>
		</tr>
</table>
<table>
<c:forEach var="msvo" items="${requestScope.vo.list}">	
 
  <tr>
<td>${msvo.messageVO.receiver}</td>  <td>${msvo.messageVO.messageDate}</td>   <td>삭제버튼</td> <td> <a href="messageDetail.do?messageNo=${msvo.messageVO.messageNo}" >  ${msvo.messageVO.messageContent} </a>  </td>     
  </tr>
																									
</c:forEach>
</table>

	<%-- <br></br>
	<a href="${pageContext.request.contextPath}/board/write.jsp"><img
		src="${pageContext.request.contextPath}/img/write_btn.jpg" border="0"></a>
	<br>
	<br> --%>
페이징 값 ${requestScope.vo.pagingBean}  <br>
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

<br><br>



</body>
</html>