<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<a href="${pageContext.request.contextPath}/regiform.do">회원등록</a><br>
<a href="${pageContext.request.contextPath}/jinseok.do">진석페이지 회원검색</a><br>
<a href="${pageContext.request.contextPath}/member/find.do">회원검색</a><br>
<a href="${pageContext.request.contextPath}/getAddressList.do">주소로 회원 검색</a><br>
<br><br>
<c:choose>
<c:when test="${mvo== null }">
<a href="${pageContext.request.contextPath}/member/login.do">로그인</a><br>
</c:when>
<c:otherwise>
<a href="${pageContext.request.contextPath}/update.do">회원수정</a><br>
<a href="${pageContext.request.contextPath}/logout.do">로그아웃</a><br>
</c:otherwise>
</c:choose>