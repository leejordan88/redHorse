<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${mvo!=null }">
${mvo.address }에 사는 ${mvo.name }님 환영합니다.
</c:if>
