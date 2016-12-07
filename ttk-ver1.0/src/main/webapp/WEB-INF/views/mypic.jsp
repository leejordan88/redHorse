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
			data: "pictureNo="+$("#pictureNo").val(),
			success: function(data){
				 alert($("#pictureNo").val()+" "+data); 
				$("#hitView").html(data);
			}
		});
	});
	
    $("#listDetail").on("click","#memberPicModal",function(){
        var pictureNo = $(this).children().val(); 
       // alert(pictureNo);        
       $("#pictureNo").val(pictureNo);
     });
});
</script>
<!-- 12/4 효민 추가부분 -->
<!-- 12/7 전체 수정하였으므로 전체 복사 후 통합해주세요 -->
<div class="container">
	<div class="row topspace">
		<!-- Start Portfolio Section -->
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-title text-center">
						<h3>My Gallery</h3>
						<p>사진을 구경하세용</p>
					</div>
				</div>
			</div>
			<!-- 리스트에서 사진 3개씩 출력 위한 소스 -->
			<c:set var="i" value="0" />
			<c:set var="j" value="3" />
			<div class="row">
			<!-- $(this).children().children().children().children().children().val(); -->
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
									<input type="hidden" id="pictureNo" value="${list.pictureNo }"> <img
									src="${pageContext.request.contextPath}/resources/picupload/${list.memberVO.getId() }/picture/${list.fileName}"
									class="img-responsive" alt="" />
									<div class="portfolio-caption">
										<h4>
											${list.pictureTitle }<br>${list.pictureDate }
										</h4>
									</div>
								</a>
							</div> 
							<c:if test="${i%j == j-1 }">
						</li>
						</c:if>
						<c:set var="i" value="${i+1 }" />

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
												<!-- Project Details Go Here -->
												<div class="section-title text-center">
													<h2>${list.pictureTitle}</h2>
													<h4></h4>
												</div>
												<br>
												<ul class="list-inline">
													<li><b>Hit: <span id="hitView">${list.hit }</span></li>
													<li><b>Date: ${list.pictureDate }</li>
													<li><b>Writer: ${list.memberVO.getName() }</li>
												</ul>
												<br> <img
													src="${pageContext.request.contextPath}/resources/picupload/${list.memberVO.getId() }/picture/${list.fileName}">
												<br> <br> <br>
												<br>
												<h4>
													<strong>${list.pictureContent}</strong>
												</h4>
												<br> <br>
												<c:if test="${list.memberVO.getId()==sessionScope.mvo.id}">
													<a 	href="${pageContext.request.contextPath}/deleteMemberPic.do?pictureNo=${list.pictureNo}">
													<button class="btn btn-primary" type="button">삭제</button></a>
													<a 	href="${pageContext.request.contextPath}/updateMemberPicView.do?pictureNo=${list.pictureNo}">
													<button 	class="btn btn-primary" type="button">수정</button></a>
												</c:if>
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
<!-- 12/7 전체 수정하였으므로 전체 복사 후 통합해주세요 -->