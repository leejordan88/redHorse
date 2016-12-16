<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/header_profile.jsp"/>

<script src="//code.jquery.com/jquery.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
       $("#deleteMemberPic").click(function(){ 
          if(confirm("게시물을 삭제하시겠습니까?"))
             location.href="${pageContext.request.contextPath}/deleteMemberPic.do?pictureNo=${requestScope.pvo.pictureNo}";
       });
       $("#updateMemberPicView").click(function(){  
          if(confirm("게시물을 수정하시겠습니까?"))
          location.href="${pageContext.request.contextPath}/updateMemberPicView.do?pictureNo=${requestScope.pvo.pictureNo}";
       }); 
    });   
</script>
   <br>
   <br>
   <div class="container">
   <!-- 열들이 있는 행 예제 -->
   <div class="row-fluid ">
      <div class="span12">
         <a href="getPictureList.do?id=${sessionScope.mvo.id }">←목록으로</a><br>
         <div class="text-center">
            <h3>${requestScope.pvo.pictureTitle}</h3>
         </div>
         <br>
         <br>
         <table class="table">
            <thead>
               <tr>
                  <th>작성자</th>
                  <td>${requestScope.pvo.memberVO.name }</td>
                  <th>등록일</th>
                  <td>${requestScope.pvo.pictureDate }</td>
               </tr>
               <tr>
                  <th>조회수</th>
                  <td>${requestScope.pvo.hit }</td>
               </tr>
            </thead>
            <tbody>
               <tr>
                   <td><img src="${pageContext.request.contextPath}/resources/picupload/${pvo.memberVO.getId() }/picture/${pvo.fileName}"></td>
                  <td colspan="4"><br>${requestScope.pvo.pictureContent}</td>
               </tr>
            </tbody>
         </table>
      </div>
      <br>
      <br>
      <br>
       <c:if test="${requestScope.pvo.memberVO.id==sessionScope.mvo.id}">
         <button class="btn btn-primary" type="button" id="updateMemberPicView" name="updateMemberPicView">수정</button>
   <button class="btn btn-primary" type="button" id="deleteMemberPic" name="deleteMemberPic">삭제</button>
   </c:if>
   </div>

   <hr>

</div>
<jsp:include page="../layout/footer.jsp"/>