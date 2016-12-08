<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="layout/header_profile.jsp"/>
<!-- 12/7  전체적 수정 -->
    <script type="text/javascript">
	 $(document).ready(function(){			 
		 $("#updateBtn").click(function(){ 
			 var uploadFile = $("#uploadFile").val();
    		if($("#pictureTitle").val()==""){
    			alert("제목을 입력하세요!");
    		}else if($("#pictureContent").val()==""){
    			alert("내용을 입력하세요!");
    		}else if(!uploadFile && uploadFile.length <= 0){
    			alert("사진을 업로드하세요!");
    		}else{
    			$("#updateMemberPicForm").submit();
    		}    		
    	});
    	$("#resetBtn").click(function(){    		
    		$("#updateMemberPicForm")[0].reset();
    	});
    });	 
</script> 
		<br><br>
		<div class="container">
		<header>
			<h3><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> 게시글 수정</h3>
		</header>
		<br>
		<br>
		<form action="${pageContext.request.contextPath}/updateMemberPic.do"
		method="post" enctype="multipart/form-data" id="updateMemberPicForm">
			<div class="form-group col-md-12">
				<input name="pictureTitle"  id="pictureTitle" placeholder="제목을 입력하세요" class="form-control" />
			</div>
			<div class="form-group col-md-12">
				<textarea name="pictureContent" id="pictureContent" placeholder="내용을 입력하세요" class="form-control" rows="10"></textarea>
			</div>
			<%-- file upload를 위해 type을 file로 명시 --%>
			<div class="form-group col-md-12">
				<input type="file" id="uploadFile" name="uploadFile" class="form-control" />
			</div> 		
			<br><br><br><br>
			<div class="form-group col-md-12 text-center" >
			<!-- 12/8 효민 아침 수정 부분 -->	
				<button type="button" class="btn btn-lg btn-primary" id="updateBtn"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>  수정</button>
				<button type="button" class="btn btn-lg btn-primary" id="resetBtn"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>  취소</button>
			<!-- 12/8 효민 아침 수정 부분 끝 -->		
				<input type="hidden" name="pictureNo" value=${pvo.pictureNo }>	
			</div>
		</form>
	</div>
	
<jsp:include page="layout/footer.jsp"/>