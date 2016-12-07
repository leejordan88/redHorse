<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${memberVO!=null}">
		<jsp:include page="layout/header_visitprofile.jsp"/>
	</c:when>
	<c:otherwise>
		<jsp:include page="layout/header_myprofile.jsp"/>
	</c:otherwise>
</c:choose>	
	<jsp:include page="mypic.jsp"/>
<jsp:include page="layout/footer.jsp"/>
