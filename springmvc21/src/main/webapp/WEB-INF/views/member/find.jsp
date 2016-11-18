<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript">
	$(document).ready(function() {
		$("#ajaxBtn").click(function(){			
			$.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/testAjax.do",
				dataType:"json",
				success:function(json){
					for(var i=0;i<json.length;i++)
					alert(json[i]);
				}
			});
		});
	});
</script>
회원검색
<form action="${pageContext.request.contextPath}/findMember.do">
	ID <input type="text" name="id"> <input type="submit"
		value="검색">
</form>
<br><br>
<input type="button" id="ajaxBtn" value="ajax테스트">

