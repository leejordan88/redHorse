<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 12/4 효민 추가부분 -->
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
				<div class="col-md-12">
					<!-- Start Portfolio items -->
					<c:forEach var="list" items="${requestScope.list}">
						<c:if test="${i%j == 0 }">
							<ul id="portfolio-list"> 
						</c:if>
						<li>
							<div class="portfolio-item">
								<a href="#portfolioModal6" class="portfolio-link"
									data-toggle="modal"> <img
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
					<%-- 	<li>						
							<div class="portfolio-item">
								<a href="#portfolioModal6" class="portfolio-link"
									data-toggle="modal"> <img
									src="${pageContext.request.contextPath}/resources/images/area/서울.jpg"
									class="img-responsive" alt="" />
									<div class="portfolio-caption">
										<h4>
											Seoul City<br>2016/07/21
										</h4>
									</div>
								</a>
							</div>
						</li> --%>

					<%-- 		
						<li>
							<div class="portfolio-item">
								<a href="#portfolioModal6" class="portfolio-link"
									data-toggle="modal"> <img
									src="${pageContext.request.contextPath}/resources/images/area/서울.jpg"
									class="img-responsive" alt="" />
									<div class="portfolio-caption">
										<h4>
											Seoul City<br>2016/07/21
										</h4>
									</div>
								</a>
							</div>
						</li>
						<li>
							<div class="portfolio-item">
								<a href="#portfolioModal6" class="portfolio-link"
									data-toggle="modal"> <img
									src="${pageContext.request.contextPath}/resources/images/area/서울.jpg"
									class="img-responsive" alt="" />
									<div class="portfolio-caption">
										<h4>
											Seoul City<br>2016/07/21
										</h4>
									</div>
								</a>
							</div>
						</li>
						<li>
							<div class="portfolio-item">
								<a href="#portfolioModal6" class="portfolio-link"
									data-toggle="modal"> <img
									src="${pageContext.request.contextPath}/resources/images/area/서울.jpg"
									class="img-responsive" alt="" />
									<div class="portfolio-caption">
										<h4>
											Seoul City<br>2016/07/21
										</h4>
									</div>
								</a>
							</div>
						</li>
						<li>
							<div class="portfolio-item">
								<a href="#portfolioModal6" class="portfolio-link"
									data-toggle="modal"> <img
									src="${pageContext.request.contextPath}/resources/images/area/서울.jpg"
									class="img-responsive" alt="" />
									<div class="portfolio-caption">
										<h4>
											Seoul City<br>2016/07/21
										</h4>
									</div>
								</a>
							</div>
						</li> --%>
					</ul>
					<!-- End Portfolio items -->
				</div>
			</div>
		</div>
		<!-- End Portfolio Section -->
		
		<!-- Portfolio Modal 6 -->
		<div class="section-modal modal fade" id="portfolioModal6"
			tabindex="-1" role="dialog" aria-hidden="true" >
			<div class="modal-content">
				<div class="close-modal" data-dismiss="modal">
					<div class="lr">
						<div class="rl"></div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="modal-body" >
								<!-- Project Details Go Here -->
								<div class="section-title text-center">
									<h2>${requestScope.pvo.pictureTitle}</h2>
									<h4>2016/07/21</h4>
								</div>
								<br> <img class="img-responsive img-centered"
									src="${pageContext.request.contextPath}/resources/images/area/seoul.jpg"
									alt=""> <br> <br>
								<h4>
									<strong>You can download this PSD Mockup template in
										this portfolio sample item at</strong>
								</h4>
								<ul class="list-inline">
									<li>Date: July 2016</li>
									<li><b>Author:</b> <a target="_blank"
										href="http://graphicburger.com/">Graphic Burger</a></li>
									<li>Category: Graphic Design</li>
								</ul>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>
</div>
<!-- /container -->

<script
	src="${pageContext.request.contextPath}/resources/asset/js/template.js"></script>