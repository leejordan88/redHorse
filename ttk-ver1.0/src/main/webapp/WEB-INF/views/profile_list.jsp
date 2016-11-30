<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="layout/header.jsp"></jsp:include>
<section id="profile-list">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title text-center">
                	<h3>Profile List</h3>
                    <p>타 회원 프로필 리스트입니다. 조건별 검색이 가능합니다.</p>
				</div>

			</div>
<!-- page content -->
        <div class="right_col" role="main">
            <div class="row">
              <div class="col-md-12">
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
        </div>
        <!-- /page content -->
</div>
</section>
    <jsp:include page="layout/footer.jsp"></jsp:include>