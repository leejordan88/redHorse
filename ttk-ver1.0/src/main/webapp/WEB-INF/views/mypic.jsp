<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
$(document).ready(function() {
	$("#listDetail").on("click","#memberPicModal",function(){
		var pictureNo = $(this).children().val();
		$.ajax({
			type:"post", 
			url: "updateHit.do",
			async : false,
			data:"pictureNo="+pictureNo, //	request에 담아 전달할 data명과 data값
			success: function(data){
				$('span.hitView').html(data);
			}
		});
	});    
});
</script>

<div class="container">
   <div class="row topspace">
      <!-- Start Portfolio Section -->
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="section-title text-center">
                  <h3>Gallery</h3>
                  <p>사진을 구경하세요</p>
               </div>
            </div>
         </div>
         <!-- 리스트에서 사진 3개씩 출력 위한 소스 -->
         <c:set var="i" value="0" />
         <c:set var="j" value="3" />
         <div class="row">
            <div class="col-md-12" id ="listDetail">
               <!-- Start Portfolio items -->
               <c:forEach var="list" items="${requestScope.list}">
                  <c:if test="${i%j == 0 }">
                     <ul id="portfolio-list">
                  </c:if>               
                  <li>
                     <div class="portfolio-item" >
                        <!-- 이미지 클릭 시 모달 창 실행 -->
                        <a href="#portfolioModal${list.pictureNo }"
                           class="portfolio-link" data-toggle="modal" id="memberPicModal">
                            <input type="hidden" id="pictureNo" value="${list.pictureNo }"><img
                           src="${pageContext.request.contextPath}/resources/picupload/${list.memberVO.getId() }/picture/${list.fileName}"
                           class="img-responsive" alt="" />
                           <div class="portfolio-caption">
                              <h4>
                                 ${list.pictureTitle }<br>
                                 ${list.pictureDate }
                              </h4>
                           </div>
                        </a>
                     </div> 
                	<c:if test="${i%j == j-1 }">
                  	 </c:if>
                  <c:set var="i" value="${i+1 }" />
                  </li>
                                           	
                  <!-- 모달부분(사진 상세보기) -->
                  <div class="section-modal modal fade"
                     id="portfolioModal${list.pictureNo }" tabindex="-1" role="dialog"
                     aria-hidden="true">
                     <div class="modal-content">
                        <div class="close-modal" data-dismiss="modal">
                           <div class="lr">
                              <div class="rl"></div>
                           </div>
                        </div>
                        <div class="container">
                           <div class="row">
                              <div class="col-lg-12">
                                 <div class="modal-body">
                                    <div class="section-title text-center">
                                       <h2>${list.pictureTitle}</h2>
                                       <h4></h4>
                                    </div>
                                    <br>                                    
                                    <ul class="list-inline">                                    
                                       <li>Hit: <span class="hitView"></span></li>
                                       <li><b>Date: ${list.pictureDate }</li>
                                       <li><b>Writer: ${list.memberVO.getId() }</li>
                                    </ul>
                                    <br>
                                    <p style="text-align: center;">
                                     <img
                                       src="${pageContext.request.contextPath}/resources/picupload/${list.memberVO.getId() }/picture/${list.fileName}">
                                   </p>
                                    <br> <br> <br>
                                    <br>
                                     <div class="section-content text-center">
                                    <h4>
                                       <strong>${list.pictureContent}</strong>
                                    </h4>
                                    <br> <br>
                                    <c:if test="${list.memberVO.getId()==sessionScope.mvo.id}">
                                    <a href="${pageContext.request.contextPath}/updateMemberPicView.do?pictureNo=${list.pictureNo}">
                                       <button    class="btn btn-primary" type="button">수정</button></a>
                                       <a href="${pageContext.request.contextPath}/deleteMemberPic.do?pictureNo=${list.pictureNo}">
                                       <button class="btn btn-primary" type="button">삭제</button></a>                                       
                                    </c:if>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </c:forEach>
               </ul>
               <!-- End Portfolio items -->
            </div>
         </div>
      </div>
      <!-- End Portfolio Section -->
   </div>
</div>
<!-- /container -->
<script src="${pageContext.request.contextPath}/resources/asset/js/template.js"></script>