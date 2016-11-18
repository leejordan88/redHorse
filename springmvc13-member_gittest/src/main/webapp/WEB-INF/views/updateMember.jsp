<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js" ></script>
<title>Insert title here</title>
<script type="text/javascript">
	$(document).ready(function(){
		$("#checkForm").submit(function(){
 			if($("#password").val()==""){
				alert("패스워드를 입력하세요.");
				return false;
			}
			if($("#name").val()==""){
				alert("이름을 입력하세요.");
				return false;
			}
			if($("#address").val()==""){
				alert("주소를 입력하세요.");
				return false;
			} 
		});
	});
</script>
</head>
<body>
<h3>회원정보 수정</h3>
<form action="updateMemberData.do" id = "checkForm" method="post">
회원아이디<input type = "text" name ="id" value="${mvo.id }" readonly="readonly"><br>
비밀번호<input type ="password" id="password" name = "password" value ="${mvo.password }"><br>
이름<input type = "text" id = "name" name = "name" value = "${mvo.name }"><br>
주소<input type="text" id = "address" name = "address" value="${mvo.address }"><br>
<input type = "submit" value="전송">
</form>
</body>
</html>