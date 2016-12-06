<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 12/4 효민 추가부분 -->
<div class="container">
	<div class="row topspace">
		<!-- Start Portfolio Section -->
		<div class="container" >
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
				<div class="col-md-12">
					<!-- Start Portfolio items -->
					<c:forEach var="list" items="${requestScope.list}">
						<c:if test="${i%j == 0 }">
							<ul id="portfolio-list"> 
						</c:if>
						<li>
							<div class="portfolio-item" >
							
								<a href="showPictureDetail.do?pictureNo=${list.pictureNo }" class="portfolio-link">  <img
									src="${pageContext.request.contextPath}/resources/picupload/${list.memberVO.getId() }/picture/${list.fileName}"
									class="img-responsive" alt="" />
									<div class="portfolio-caption">
										<h4>
											${list.pictureTitle }<br>${list.pictureDate }
										</h4>
									</div>
								</a>
							</div> <c:if test="${i%j == j-1 }">
						</li>
						</c:if>
						<c:set var="i" value="${i+1 }" />
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