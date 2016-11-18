<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js" ></script>
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){
	$("#addressValue").change(function(){
			$.ajax({
				type:"get",
				url: "findMemberByAddressAjax.do",
				dataType: "json",
				data: "address=" + $(this).val(),
				success: function(json){
					var data = "<table border='1' cellpadding='10'><thead><tr><th>아이디</th><th>이름</th></tr></thead>";
					for(var i = 0; i < json.length; i ++){
						data += "<tr><td>" + json[i].id + "</td><td>" + json[i].name + "</td></tr>";
					}
					data += "</tbody></table>";
					document.getElementById("memberListView").innerHTML = data;
				}
			});
	});
});
</script>
</head>
<body>
<a href="index.do">홈</a>
<hr>
<select id = "addressValue" >
<option value="">--주소--</option>
<c:forEach items="${list }" var="list">
<option value="${list }">${list }</option>
</c:forEach>
</select>
<br><br><br><br>
<div id = "memberListView">

</div>
<%--			주소를 선택하면 ajax방식으로 div영역에 table형식으로 아이디 이름을 보여준다 --%>
</body>
</html>