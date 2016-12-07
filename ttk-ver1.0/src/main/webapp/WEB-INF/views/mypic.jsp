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
      <form action="${pageContext.request.contextPath}/updateMemberPic.do"
         method="post" enctype="multipart/form-data" id="updateMemberPicForm">
         제목   <input type="text" id="pictureTitle" name="pictureTitle" value=${pvo.pictureTitle } size="48"><br>
         작성자 ${sessionScope.mvo.name} <br>
         내용 <br><textarea cols="33" rows="15" id="pictureContent" name="pictureContent">${pvo.pictureContent }</textarea><br>
         <%-- file upload를 위해 type을 file로 명시 --%>
         <input type="file" name="uploadFile" id="uploadFile">
         <input type="button" id="resetBtn" value="취소">
         <input type="button" id="updateBtn" value="수정">
         <input type="hidden" name="pictureNo" value=${pvo.pictureNo }>         
   </form>
   
<jsp:include page="layout/footer.jsp"/>