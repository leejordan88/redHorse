<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="layout/header.jsp"></jsp:include>

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
								<li class="mix Category"><a href="#datepicker-modal" class="portfolio-link" data-toggle="modal" >
										<img src="${pageContext.request.contextPath}/resources/images/place/${list.placeName}.jpg" alt="">
										<div class="overly">
											<div class="position-center">
												<h2 style="text-align: center">${list.placeName }</h2>
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
							<h2>날짜선택</h2></div>
							<div class="col-md-4">
							<input id="enableNextMonth" type="text" placeholder="Select date"
								class=" form-control ">
								<br><br>
						</div>
						</div>
						


<!-- page content -->
        <div class="right_col" role="main">
            <div class="row">
                      <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                      <div class="col-xs-6 col-md-4 profile_details">
                        <div class="well profile_view">
                          <div class="col-sm-12">
                            <div class="left col-xs-7">
                              <h2><i>이영주</i> <i class="fa fa-female"></i></h2><br>
                              <ul class="list-unstyled">
                                <li><p><strong>About: </strong> Web Designer / UX / Graphic Artist / Coffee Lover </p></li>
                                <li><i class="fa fa-smile-o"></i>나이 : 23 </li>
                                <li><i class="fa fa-building"></i>지역 : 경기도 </li>
                              </ul>
                            </div>
                            <div class="right col-xs-5 text-center">
                            <a href="mypage2.do"><img src="${pageContext.request.contextPath}/resources/images/team/영주.jpg" alt="" class="img-circle img-responsive"></a>
                              <button type="button" class="btn btn-success btn-xs"> <i class="fa fa-user">
                                </i> <i class="fa fa-comments-o"></i>쪽지</button>
                            </div>
                          </div>
                        </div>
                      </div>
                       <div class="col-xs-6 col-md-4 profile_details">
                        <div class="well profile_view">
                          <div class="col-sm-12">
                            <div class="left col-xs-7">
                              <h2><i>이준성</i> <i class="fa fa-male"></i></h2><br>
                              <ul class="list-unstyled">
                                <li><p><strong>About: </strong> Web Designer / UX / Graphic Artist / Coffee Lover </p></li>
                                <li><i class="fa fa-smile-o"></i>나이 : 29 </li>
                                <li><i class="fa fa-building"></i>지역 : 경기도 </li>
                              </ul>
                            </div>
                            <div class="right col-xs-5 text-center">
                            <a href="mypage2.do"><img src="${pageContext.request.contextPath}/resources/images/team/준성.jpg" alt="" class="img-circle img-responsive"></a>
                              <button type="button" class="btn btn-success btn-xs"> <i class="fa fa-user">
                                </i> <i class="fa fa-comments-o"></i>쪽지</button>
                            </div>
                          </div>
                        </div>
                      </div>
                      
                       <div class="col-xs-6 col-md-4 profile_details">
                        <div class="well profile_view">
                          <div class="col-sm-12">
                            <div class="left col-xs-7">
                              <h2><i>이영주</i> <i class="fa fa-female"></i></h2><br>
                              <ul class="list-unstyled">
                                <li><p><strong>About: </strong> Web Designer / UX / Graphic Artist / Coffee Lover </p></li>
                                <li><i class="fa fa-smile-o"></i>나이 : 23 </li>
                                <li><i class="fa fa-building"></i>지역 : 경기도 </li>
                              </ul>
                            </div>
                            <div class="right col-xs-5 text-center">
                            <a href="mypage2.do"><img src="${pageContext.request.contextPath}/resources/images/team/영주.jpg" alt="" class="img-circle img-responsive"></a>
                              <button type="button" class="btn btn-success btn-xs"> <i class="fa fa-user">
                                </i> <i class="fa fa-comments-o"></i>쪽지</button>
                            </div>
                          </div>
                        </div>
                      </div>

                  </div>
                </div>
              </div>
            </div>
          </div>
</div></div></div></div>



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