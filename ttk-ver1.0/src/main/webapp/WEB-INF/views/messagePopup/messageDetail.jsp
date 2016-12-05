<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="messageLeft.jsp"></jsp:include>


메세지디테일화면
<table>
<tr>
<td>sender(img)</td>   <td>${requestScope.messageVO.memberVO.profileimg}</td>
<td>발신자</td>    <td>${requestScope.messageVO.sender}</td>
<td>내용</td>    <td>${requestScope.messageVO.messageContent}</td>
 <td>날짜</td>    <td>${requestScope.messageVO.messageDate}</td>
<td>답장버튼</td><td>삭제버틴</td>
</tr>


</table>



</body>
</html>