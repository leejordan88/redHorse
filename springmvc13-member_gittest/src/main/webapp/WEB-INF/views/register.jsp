<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js" ></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#id").keyup(function(){
			//alert($(this).val());
			if($(this).val().length == 0){
				$("#checkResult").html("");
				return;
			}
	 			$.ajax({
				type : "get",
				url : "duplicateIdCheck.do",
				data : "id=" + $(this).val(),
				success : function(flag) {
					if (flag == true) { // 중복일 경우
						$("#checkResult").html("사용불가!").css("color", "red");
					} else {
						$("#checkResult").html("사용가능!").css("color", "green");
					}
				}
			});//ajax
		});//keyup
		$("#registerForm").submit(function(){
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
	});//ready
</script>
</head>
<body>
<h3>회원가입</h3>
<form action ="register.do" method="post" id ="registerForm">
아이디<input type="text" name ="id" id = "id"><span id="checkResult">여기</span><br>
패스워드<input type="password" name ="password" id = "password"><br>
이름<input type="text" name ="name" id = "name"><br>
주소<input type="text" name ="address" id = "address"><br>
<input type="submit" value="회원가입">
</form>
</body>
</html>