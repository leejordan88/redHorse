<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 



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