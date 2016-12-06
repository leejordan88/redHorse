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
<c:forEach var="msvo" items="${requestScope.list}">	
  
  <tr>
  <td>${msvo.sender}</td>  <td> <a href="messageDetail.do?messageNo=${msvo.messageNo}" >  ${msvo.messageContent} </a>  </td>    <td>${msvo.messageDate}</td>   <td> ${msvo.memberVO.profileimg}</td>
  </tr>

</c:forEach>
</table>
<!-- 받은쪽지함 ..@RequestMapping("messageList.do") -->
<a href="messageList.do">받은쪽지함 ..@RequestMapping(""messageList.do"")</a><br>
<a href="messageSendList.do">보낸쪽지함 ..@RequestMapping("messageSendList.do")</a>

</body>
</html>