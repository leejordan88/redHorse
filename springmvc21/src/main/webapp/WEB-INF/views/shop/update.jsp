<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
상품수정
<form action="${pageContext.request.contextPath}/updateProduct.do">
	상품정보 <input type="text" name="id">
	<input type="submit" value="수정">
</form>