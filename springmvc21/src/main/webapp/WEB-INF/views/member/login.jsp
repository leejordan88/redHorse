<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form action="${pageContext.request.contextPath}/login.do">
아이디 <input type = "text" name = "id"><br>
비밀번호<input type = "password" name = "password"><br>
<input type="submit" value = "loign">
</form>