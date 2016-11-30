<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="layout/header.jsp"></jsp:include>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/asset/css/flatpickr.min.css">
<script src="${pageContext.request.contextPath}/resources/asset/js/flatpickr.min.js"></script>
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

<jsp:include page="place.jsp"></jsp:include>    

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
