<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!-- Start Portfolio Section -->
<jsp:include page="layout/header.jsp"></jsp:include>
<section id="portfolio-work">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title text-center">
					<h3>Place</h3>
					<p>여행지리스트</p>
				</div>
				<div class="block">
					<div class="portfolio-menu">
						<ul>
							<li class="filter" data-filter="all">전체보기</li>
							<li class="filter" data-filter=".Hot">핫플레이스</li>
							<li class="filter" data-filter=".Area">지역별</li>
							<li class="filter" data-filter=".Category">카테고리별</li>
						</ul>
					</div>
					
					<div class="portfolio-contant">
						<ul id="portfolio-contant-active">
						<c:forEach items="${requestScope.list }" var="tvo">											
							<li class="mix Hot"><a href="#"> 
							  <img src="${pageContext.request.contextPath}/resources/images/portfolio/img6.jpg"
									alt="">
									<div class="overly">
										<div class="position-center">
											<h2>Hot Place</h2>
											<p>Labore et dolore magna aliqua. Ut enim ad</p>
				
										    ${tvo.rank }위<br>
										    ${tvo.placeVO.areaName }<br>
										    ${tvo.placeVO.categoryName }<br>
										    ${tvo.placeVO.placeName }
										
										</div>
									</div>
							</a></li>
						
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<jsp:include page="layout/footer.jsp"></jsp:include>