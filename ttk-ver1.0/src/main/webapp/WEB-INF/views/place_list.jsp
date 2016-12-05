<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="layout/header.jsp"></jsp:include>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDXgY2_QloeiWmqWax41miqR-eI87X4ZdA"></script>

<script type="text/javascript">
	//여행지역 선택 시 여행지역 마크업
	$(document)
			.ready(
					function() {
						
						$(".mixCategory")
								.click(
										function() {
											var map;
											var placeName = $(".mixCategory")
													.children().first()
													.children().first().next()
													.children().children()
													.html();
											var placeX = $(".mixCategory")
													.children().first()
													.children().first().next()
													.children().children()
													.first().next().val();
											var placeY = $(".mixCategory")
													.children().first()
													.children().first().next()
													.children().children()
													.first().next().next()
													.val();
											var latlng = new google.maps.LatLng(
													placeX, placeY);
											var myOptions = {
												zoom : 15,
												center : latlng,
												mapTypeId : google.maps.MapTypeId.ROADMAP
											};
											map = new google.maps.Map(
													document
															.getElementById("google_map"),
													myOptions);
											map.setTilt(45);
											var marker = new google.maps.Marker(
													{
														position : latlng,
														map : map,
														title : placeName
													});
											marker.setMap(map);
										});
						//날짜 지정 시 ajax를 통한 여행자 리스트 제공
						$("#enableNextMonth")
								.change(
										function() {
											var placeNo = $(".mixCategory")
													.children().first()
													.children().first().next()
													.children().children()
													.first().next().next()
													.next().val();
											var tDate = $("#enableNextMonth")
													.val();
											$
													.ajax({
														type : "get",
														url : "findTravelerBydate.do",
														dataType : "json",
														data : "placeNo="
																+ placeNo
																+ "&tDate="
																+ tDate,
														success : function(json) {
															var data = "<h2>여행자 정보</h2>";
															for (var i = 0; i < json.length; i++) {
																var sex = "";
																if (json[i].sex == 1) {
																	sex = "male";
																} else {
																	sex = "female"
																}
																data += "<div class='col-xs-6 col-md-4 profile_details'><div class='well profile_view'>";
																data += "<div class='col-sm-12'><div class='left col-xs-7'>";
																data += "<h2><i>"
																		+ json[i].name
																		+ "</i> <i class='fa fa-"+sex+"'></i></h2><br>'<ul class='list-unstyled'>";
																data += "<li><p><strong>"
																		+ json[i].introduce
																		+ "</p></li><li><i class='fa fa-smile-o'></i>나이 : "
																		+ json[i].age
																		+ "</li>";
																data += "<li><i class='fa fa-building'></i>지역 : "
																		+ json[i].address
																		+ "</li></ul></div>";
																data += "<div class='right col-xs-5 text-center'><a href='mypage2.do'>";
																data += "<img src='${pageContext.request.contextPath}/resources/upload/"+json[i].id+"}/profile/"+json[i].profileimg+" alt=''";
																data += "class='img-circle img-responsive'></a><button type='button' class='btn btn-success btn-xs'> <i class='fa fa-user'>";
																data += "</i> <i class='fa fa-comments-o'></i>쪽지</button></div></div></div></div>";
															}
															data += "<input class = 'btn-primary' id='regiTravel' type ='button' value = '여행등록'>&nbsp;";
															data += " &nbsp;<input class = 'btn-primary' id = 'deleteTravel' type ='button' value = '삭제'>";
															document
																	.getElementById("travelerListByDate").innerHTML = data;
														}
													});
										});//날짜 선택
					});//ready
</script>

<!-- Start Portfolio Section -->
<section id="portfolio-work">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title text-center">
					<h3>Place</h3>
					<p>세부 장소를 선택해주세요</p>
				</div>
				<div class="block">
					<div class="portfolio-contant">
						<ul id="portfolio-contant-active">
							<c:forEach items="${placeList }" var="list">
								<!-- alert($(this).children().first().children().first().next().children().children().html()); -->
								<li class="mixCategory"><a href="#datepicker-modal"
									class="portfolio-link" data-toggle="modal"> <img
										src="${pageContext.request.contextPath}/resources/images/place/${list.placeName}.jpg"
										alt="">
										<div class="overly">
											<div class="position-center">
												<h2 style="text-align: center" id="place_abc">${list.placeName }</h2>
												<input type="hidden" name="placeX" value="${list.placeX }">
												<input type="hidden" name="placeY" value="${list.placeY }">
												<input type="hidden" name="placeY" value="${list.placeNo }">
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
						<div class="col-md-8">
							<div class="col-md-4 datepickertitle">
								<h2>날짜선택</h2>
							</div>
							<div class="col-md-4">
								<input id="enableNextMonth" type="text"
									placeholder="Select date" class=" form-control "> <br>
								<br>
							</div>
						</div>
						<!-- page content -->
						<div class="right_col" role="main">
							<div class="row">
								<!-- 여행자 리스트 제공 -->
								<div class="col-md-12 col-sm-12 col-xs-12 text-center"
									id="travelerListByDate"></div>
								<div class="right_col" role="main">
									<div class="row">
										<div class="col-md-12 col-sm-12 col-xs-12 text-center">
										</div>
									</div>
								</div>
							</div>
							<h2 align="center">MAP</h2>
							<div id="google_map" style="width: 100%; height: 400px"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="layout/footer.jsp"></jsp:include>

<script type="text/javascript">
	flatpickr("#enableNextMonth", {
		enable : [ {
			from : "today",
			to : new Date().fp_incr(31)
		} ]
	})
</script>
</body>
</html>