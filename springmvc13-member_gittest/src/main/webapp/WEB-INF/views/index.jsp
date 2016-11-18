<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js" ></script>
<title>Insert title here</title>
<script type="text/javascript">
	$(document).ready(function(){
		$("#loginForm").submit(function(){
				if($("userId").val()==""){
				alert("아이디를 입력하세요");
				return false;
			}
			if($("#userPass").val()==""){
				alert("패스워드를 입력하세요");
				return false;
			} 
		});
	});
</script>
</head>
<body>
<h3>springmvc 회원관리-interceptor 적용</h3>
<a href="test.do">controller test</a><!-- result.jsp -->
<br>
<form action="findMemberById.do">
	아이디<input type="text" name = "id">
	<input type="submit" value="검색">
</form>
<%--		findMemberById_ok.jsp	--> 검색결과 
			findMemberById_fail.jsp --> alert
 --%>
 <br>
 <a href="getAddressList.do">주소검색페이지로</a><br><br>
 <!-- addressList.jsp에서 주소의 종류를 select option으로 제공한다 -->
 
 
 <!-- 비인증상태일때
 		회원로그인
 		회원가입
 		
 		인증상태일때
 			손재만님
 			카페(XX님 카페 입장을 환영합니다, 현재 회원수 X명)
 			로그아웃
 			회원정보수정 -->
 <c:choose>
 	<c:when test="${sessionScope.mvo == null }">
<%--post방식일때만 컨트롤러가 동작하도록 처리 --%>
<form id = "loginForm" action="login.do"  method="post">
아이디<input type="text" name = "id" id = "userId"><br>
패스워드<input type = "password" name = "password" id = "userPass"><br>
<input type = "submit" value = "login">
</form>
<br>
<a href="regiform.do">회원가입</a><br>
 	</c:when>
 	<c:otherwise>
 	${sessionScope.mvo.name }님<br>
<%--cafe.jsp에서는 인증상태일때만 입장가능하도록 하고 
		손재만님 카페입장환영!
		총 회원수:  5명
 --%>
<a href="enterCafe.do">카페가기</a><br>
<a href="logout.do">로그아웃</a><br>
<a href="updateMember.do">회원정보 수정</a>
 	</c:otherwise>
 </c:choose>
<br>
<img src="${pageContext.request.contextPath }/resources/interceptor.jpg">
</body>
</html>