<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<jsp:include page="layout/header_myprofile.jsp"></jsp:include>
<link    href="${pageContext.request.contextPath}/resources/vendors/dropzone/dist/min/dropzone.min.css" rel="stylesheet">
<!-- 사진첩 사진 업로드 페이지 -->
<!-- 12/8 효민 전체적 수정 -->
<!-- 12/7 효민 전체적 수정 -->
<!-- 12/2 효민 추가 부분  -->
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
          $("#uploadForm").each(function() {
             this.reset();
          });
       });
    });    
</script> 

<body>
<br>
<br>
<!-- Start  section -->

   <div class="container">
      <header>
         <h3><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> 게시글 쓰기</h3>
      </header>
      <br>
      <br>
      <form action="${pageContext.request.contextPath}/uploadMemberPic.do"
      method="post" enctype="multipart/form-data" id="uploadForm">
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
            <button type="button" class="btn btn-lg btn-primary" id="uploadBtn"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>  등록</button>
            <button type="button" class="btn btn-lg btn-primary" id="resetBtn"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span> 취소</button>
            <!-- 12/8 효민 아침 수정 부분 끝 -->         
         </div>
      </form>
   </div>

<!-- End contact section -->
<!-- 12/8 효민 추가 부분  끝-->

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