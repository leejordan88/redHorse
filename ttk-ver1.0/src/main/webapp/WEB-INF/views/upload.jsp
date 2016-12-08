<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="layout/header_myprofile.jsp"></jsp:include>
<link 	href="${pageContext.request.contextPath}/resources/vendors/dropzone/dist/min/dropzone.min.css" rel="stylesheet">
<!-- 사진첩 사진 업로드 페이지 -->
<!-- 12/7 효민 전체적 수정 -->
<!-- 12/2 효민 추가 부분  -->
<script src="${pageContext.request.contextPath}/resources/jquery-1.12.4.min.js"></script>
    <script type="text/javascript">
	 $(document).ready(function(){			 
		 $("#uploadBtn").click(function(){ 
			 var uploadFile = $("#uploadFile").val();
    		if($("#pictureTitle").val()==""){
    			alert("제목을 입력하세요!");
    		}else if($("#pictureContent").val()==""){
    			alert("내용을 입력하세요!");
    		}else if(!uploadFile && uploadFile.length <= 0){
    			alert("사진을 업로드하세요!");
    		}else{
    			$("#uploadForm").submit();
    		}    		
    	});
    	$("#resetBtn").click(function(){    		
    		$("#uploadForm")[0].reset();
    	});
    });	 
</script> 

<body>
<br>
<br>
	<div class="section-title text-center">
		<h3>새 게시물</h3>
	</div>
	
		<form action="${pageContext.request.contextPath}/uploadMemberPic.do"
		method="post" enctype="multipart/form-data" id="uploadForm">
		  <div class="form-group col-xs-6 col-sm-3" >
    		<label for="pictureTitle">제목</label>
  		 	 <input type="text" class="form-control" id="pictureTitle" name="pictureTitle" placeholder="제목을 입력하세요">
  			</div>
  			<br>
  			<div class="form-group">
  				<label for="name">작성자</label>
  				 ${sessionScope.mvo.name} 
  			</div>	
			<br>
			<div class="form-group col-xs-6">
				<label for="pictureContent">내용</label>
				<textarea class="form-control" id="pictureContent" name="pictureContent" rows="3"></textarea>
			</div>
			<br>
			<%-- file upload를 위해 type을 file로 명시 --%>
			 <div class="form-group">
	   			 <label for="uploadFile"></label>
	 				  <input type="file" id="uploadFile" name="uploadFile">
	  		</div>
	  		<br>
			<!-- <input type="submit" value="등록"> -->
				<input type="button" id="uploadBtn" value="등록">
				<input type="button" id="resetBtn" value="취소">
			</form>
<!-- 12/2 효민 추가 부분  끝-->

	<jsp:include page="layout/footer.jsp"></jsp:include>
	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/resources/vendors/jquery.min.js"></script>
	<!-- Bootstrap -->
	<!--   <script src="vendors/bootstrap.js"></script> -->
	<!-- FastClick -->
	<script
		src="${pageContext.request.contextPath}/resources/vendors/fastclick.js"></script>
	<!-- NProgress -->
	<script
		src="${pageContext.request.contextPath}/resources/vendors/nprogress.js"></script>
	<!-- Dropzone.js -->
	<script
		src="${pageContext.request.contextPath}/resources/vendors/dropzone/dist/min/dropzone.min.js"></script>
</body>
<!-- 12/7 효민 전체적 수정 -->