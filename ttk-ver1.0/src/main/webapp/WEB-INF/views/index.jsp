<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="layout/header.jsp"></jsp:include>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/asset/css/flatpickr.min.css">
<script src="asset/js/flatpickr.min.js"></script>
<link rel="stylesheet"
	href="https://unpkg.com/flatpickr/dist/flatpickr.min.css">
<script src="https://unpkg.com/flatpickr"></script>
<!-- Start Home Page Slider -->
<section id="page-top">
	<!-- Carousel -->
	<div id="main-slide" class="carousel slide" data-ride="carousel">

		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#main-slide" data-slide-to="0" class="active"></li>
			<li data-target="#main-slide" data-slide-to="1"></li>
			<li data-target="#main-slide" data-slide-to="2"></li>
		</ol>
		<!--/ Indicators end-->

		<!-- Carousel inner -->
		<div class="carousel-inner">
			<div class="item active">
				<img class="img-responsive"
					src="${pageContext.request.contextPath}/resources/images/area/seoul.jpg"
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
							<li class="mix Area"><a href="#datepicker-modal"
								class="portfolio-link" data-toggle="modal"> <img
									src="${pageContext.request.contextPath}/resources/images/area/seoul.jpg"
									alt="">
									<div class="overly">
										<div class="position-center">
											<h2>SEOUL</h2>
											<p>Labore et dolore magna aliqua. Ut enim ad</p>
										</div>
									</div>
							</a></li>
							<li class="mix Area"><a href="#"> <img
									src="${pageContext.request.contextPath}/resources/images/area/경기도.jpg"
									alt="">
									<div class="overly">
										<div class="position-center">
											<h2>경기도</h2>
											<p>Labore et dolore magna aliqua. Ut enim ad</p>
										</div>
									</div>
							</a></li>
							<li class="mix Category"><a href="#"> <img
									src="${pageContext.request.contextPath}/resources/images/category/festival.jpg"
									alt="">
									<div class="overly">
										<div class="position-center">
											<h2>행사</h2>
											<p>Labore et dolore magna aliqua. Ut enim ad</p>
										</div>
									</div>
							</a></li>
							<li class="mix Hot"><a href="#"> <img
									src="${pageContext.request.contextPath}/resources/images/portfolio/img5.jpg"
									alt="">
									<div class="overly">
										<div class="position-center">
											<h2>Hot Place</h2>
											<p>Labore et dolore magna aliqua. Ut enim ad</p>

										</div>
									</div>
							</a></li>
							<li class="mix Hot"><a href="#"> <img
									src="${pageContext.request.contextPath}/resources/images/portfolio/img6.jpg"
									alt="">
									<div class="overly">
										<div class="position-center">
											<h2>Hot Place</h2>
											<p>Labore et dolore magna aliqua. Ut enim ad</p>
										</div>
									</div>
							</a></li>
							<li class="mix Category"><a href="#"> <img
									src="${pageContext.request.contextPath}/resources/images/category/관광지.jpg"
									alt="">
									<div class="overly">
										<div class="position-center">
											<h2>관광지</h2>
											<p>Labore et dolore magna aliqua. Ut enim ad</p>
										</div>
									</div>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


<div class="section-modal modal fade" id="datepicker-modal"
	tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-content">
		<div class="close-modal" data-dismiss="modal">
			<div class="lr">
				<div class="rl"></div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="modal-body">
						<!-- Project Details Go Here -->
						<div class="section-title text-center">
							<h2>날짜선택</h2>
						</div>
						<br>
						<br>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input id="enableNextMonth" type="text" placeholder="Select date"
								class="form-control ">
						</div>

						<h4>
							<strong>프로필목록</strong>
						</h4>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">
	flatpickr("#enableNextMonth", {
		inline : true, // show the calendar inline
		enable : [ {
			from : "today",
			to : new Date().fp_incr(31)
		} ]
	})
</script>


<!-- End Portfolio Section -->
<!-- Start Fun Facts Section -->
<section class="fun-facts">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-3">
				<div class="counter-item">
					<i class="fa fa-female"></i>
					<div class="timer" id="item4" data-to="223" data-speed="5000"></div>
					<h5>여자회원수</h5>
				</div>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-3">
				<div class="counter-item">
					<i class="fa fa-male"></i>
					<div class="timer" id="item4" data-to="342" data-speed="5000"></div>
					<h5>남자회원수</h5>
				</div>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-3">
				<div class="counter-item">
					<i class="fa fa-cloud-upload"></i>
					<div class="timer" id="item1" data-to="591" data-speed="5000"></div>
					<h5>회원사진업로드</h5>
				</div>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-3">
				<div class="counter-item">
					<i class="fa fa-check"></i>
					<div class="timer" id="item2" data-to="294" data-speed="5000"></div>
					<h5>여행친구찾기완료</h5>
				</div>
			</div>

		</div>
	</div>
</section>
<!-- End Fun Facts Section -->


<jsp:include page="our_team.jsp"></jsp:include>
<jsp:include page="layout/footer.jsp"></jsp:include>

</body>
</html>