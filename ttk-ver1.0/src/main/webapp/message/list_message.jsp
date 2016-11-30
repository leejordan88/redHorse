<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쪽지함보기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/message.css" type="text/css">
<script type="text/javascript">
</script>
</head>
<body>
	<table class="list">
		<caption>목록</caption>
		<thead>
		<tr>
			<th class="no">NO</th>
			<th class="sender">보낸이</th>
			<th class="content">내용</th>
			<th class="date">작성일</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="mvo" items="${requestScope.lvo.list}">
			<tr>
				<td>${mvo.no}</td>
				<td>
					
				</td>
				<td></td>
				<td></td>
			</tr>
		</c:forEach>
		</tbody>
		
	</table>
	<br><br>
	
	
	
	<c:if test="${sessionScope.mvo!=null}">
	<a href="${pageContext.request.contextPath}/board/write.jsp"><img  src="${pageContext.request.contextPath}/img/write_btn.jpg" border="0"></a>
	</c:if>
	<br><br>
	
		
<p class="paging">
	<c:set var="pb" value="${requestScope.lvo.pagingBean}"></c:set>  
	<c:if test="${pb.previousPageGroup}">
	<a href="${pageContext.request.contextPath}/list.do?pageNo=${pb.startPageOfPageGroup-1}">
	◀&nbsp; </a>	
	</c:if>		
	<c:forEach var="i" begin="${pb.startPageOfPageGroup}" 
	end="${pb.endPageOfPageGroup}">
	<c:choose>
	<c:when test="${pb.nowPage!=i}">
	<a href="${pageContext.request.contextPath}/list.do?pageNo=${i}">${i}</a> 
	</c:when>
	<c:otherwise>
	${i}
	</c:otherwise>
	</c:choose>
	&nbsp;
	</c:forEach>	 
	<c:if test="${pb.nextPageGroup}">
	<a href="${pageContext.request.contextPath}/list.do?pageNo=${pb.endPageOfPageGroup+1}">
	▶<!-- <img src="img/right_arrow_btn.gif"> --></a>
	</c:if>
	</p>
</body>
</html>