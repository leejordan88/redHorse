<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="layout/header.jsp"></jsp:include>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>

<!-- Start Home Page Slider -->
<section id="page-top">
	<!-- Carousel -->
	<div id="main-slide" class="carousel slide" data-ride="carousel">

		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#main-slide" data-slide-to="2" class="active"></li>
			<li data-target="#main-slide" data-slide-to="3"></li>
			<li data-target="#main-slide" data-slide-to="40"></li>
		</ol>
		<!--/ Indicators end-->

		<!-- Carousel inner -->
		<div class="carousel-inner">
			<div class="item active">
				<img class="img-responsive"
					src="${pageContext.request.contextPath}/resources/images/area/서울.jpg"
					alt="slider">
				<div class="slider-content">
					<div class="col-md-12 text-center">
						<h1 class="animated3">
							<span><strong>TRIP TING</strong> KOREA</span>
						</h1>
						<p class="animated2">새로운 누군가와의 여행, 지금 시작하세요</p>
						<a href="#portfolio-work"
							class="page-scroll btn btn-primary animated1">여행지보기</a>
					</div>
				</div>
			</div>
			<!--/ Carousel item end -->

			<div class="item ">
				<img class="img-responsive"
					src="${pageContext.request.contextPath}/resources/images/area/40.jpg"
					alt="slider">
				<div class="slider-content">
					<div class="col-md-12 text-center">
						<h1 class="animated3">
							<span>Welcome to <strong>TTK</strong></span>
						</h1>
						<p class="animated1">로그인하면 더 많은 서비스들을 이용할 수 있어요</p>
						<a class="animated3 slider btn btn-primary btn-min-block"
							data-toggle="modal" data-target="#login-modal" href="#">Login</a>
						<a class="animated3 slider btn btn-default btn-min-block"
							href="register.do">Register</a>
					</div>
				</div>
			</div>
			<!--/ Carousel item end -->

			<div class="item">
				<img class="img-responsive"
					src="${pageContext.request.contextPath}/resources/images/area/3.jpg"
					alt="slider">
				<div class="slider-content">
					<div class="col-md-12 text-center">
						<h1 class="animated1">
							<span>4조 <strong>적토마</strong></span>
						</h1>
						<p class="animated2">
							kosta 132기<br> final project
						</p>
					</div>
				</div>
			</div>
			<!--/ Carousel item end -->
		</div>
		<!-- Carousel inner end-->

		<!-- Controls -->
		<a class="left carousel-control" href="#main-slide" data-slide="prev">
			<span><i class="fa fa-angle-left"></i></span>
		</a> <a class="right carousel-control" href="#main-slide"
			data-slide="next"> <span><i class="fa fa-angle-right"></i></span>
		</a>
	</div>
	<!-- /carousel -->
</section>
<!-- End Home Page Slider -->


<!-- Start Portfolio Section -->
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
							<c:forEach items="${listVO.areaList }" var="list">
								<li class="mix Area"><a href="categoryList.do?areaName=${list.areaName }"> 
									<img src="${pageContext.request.contextPath}/resources/images/area/${list.areaPicture}" alt="">
										<div class="overly">
											<div class="position-center">
												<h2 style="text-align: center">${list.areaName }</h2>
											</div>
										</div>
								</a></li>
							</c:forEach>
							<c:forEach items="${listVO.categoryList }" var="list">			
								<li class="mix Category"><a href="areaList.do?categoryName=${list.categoryName }">
									<img src="${pageContext.request.contextPath}/resources/images/category/${list.categoryPicture}" alt="">
										<div class="overly">
											<div class="position-center">
												<h2 style="text-align: center">${list.categoryName }</h2>
											</div>
										</div>
								</a></li>
							</c:forEach>
							<!-- 효민 추가부분 핫 플레이스 랭킹5 보기, 선택 시 달력선택 추가하기-->
								<c:forEach items="${listVO.travelerList }" var="list">
								<li class="mix Hot"><a href="detailPlace.do?placeNo=${list.placeVO.placeNo }">
									<img src="${pageContext.request.contextPath}/resources/images/place/${list.placeVO.placeName}.jpg" alt="">
									<div class="overly">
											<div class="position-center">
												<h2 style="text-align: center">${list.rank }위</h2>
										    	<h3>${list.placeVO.placeName }</h3>
											</div>
										</div>
								</a></li>
							</c:forEach>
							<!-- 효민 추가부분 끝-->
							
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


<!-- Start Fun Facts Section -->
	<c:forEach items="${listVO.statsList}" var="list">
<section class="fun-facts">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-3">
				<div class="counter-item">
					<i class="fa fa-female"></i>
					<div class="timer" id="item4" data-to="${list.female}" data-speed="2000"></div>
					<h5>여자회원수</h5>
				</div>
			</div>
			 
			<div class="col-xs-12 col-sm-6 col-md-3">
				<div class="counter-item">
					<i class="fa fa-male"></i>
					<div class="timer" id="item4" data-to="${list.male}" data-speed="2000"></div>
					<h5>남자회원수</h5>
				</div>
			</div>
			 	
			<div class="col-xs-12 col-sm-6 col-md-3">
				<div class="counter-item">
					<i class="fa fa-cloud-upload"></i>
					<div class="timer" id="item1" data-to="${list.pictureNo}" data-speed="2000"></div>
					<h5>회원사진업로드</h5>
				</div>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-3">
				<div class="counter-item">
					<i class="fa fa-check"></i>
					<div class="timer" id="item2" data-to="${list.tstate}" data-speed="2000"></div>
					<h5>여행친구찾기완료</h5>
				</div>
			</div>
		</div>
	</div>
</section>
</c:forEach>
<!-- End Fun Facts Section -->

<jsp:include page="our_team.jsp"></jsp:include>
<jsp:include page="layout/footer.jsp"></jsp:include>


</body>
</html>
