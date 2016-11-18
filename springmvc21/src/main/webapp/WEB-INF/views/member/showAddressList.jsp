<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js" ></script>
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

<select id = "addressValue" >
<option value="">--주소--</option>
<c:forEach items="${list }" var="list">
<option value="${list }">${list }</option>
</c:forEach>
</select>
<br><br><br><br>
<div id = "memberListView">
</div>
