<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
	<jsp:include page="layout/header.jsp"></jsp:include>
    <!-- Select2 -->
    <link href="${pageContext.request.contextPath}/resources/vendors/select2.min.css" rel="stylesheet">

<body>
<br><br><br><br>
 <section id="my-profile" class="my-profile-section">
        <div class="container">
            <div class="row">
			    <form action="${pageContext.request.contextPath}/registerMemberAction.do" method="post" 
			     enctype="multipart/form-data" id="regForm" class="form-horizontal form-label-left">    

              <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">아이디 <span class="required">*</span>
                            </label>
                            <div class="col-md-2 col-sm-12 col-xs-12">
                              <input type="text" id="id" name="id" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                            <span id="msg_id"></span>
                          </div>
                          <div class="form-group">
                            <label for="password" class="control-label col-md-3 col-sm-3 col-xs-12" >비밀번호 <span class="required">*</span>
                            </label>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                                <input id="password" type="password" name="password" class="form-control col-md-7 col-xs-12" required="required">
                            </div>
                            <span id="msg_password"></span>
                          </div>
                           <div class="form-group">
                            <label for="cpassword" class="control-label col-md-3 col-sm-3 col-xs-12" >비밀번호확인 <span class="required">*</span>
                            </label>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                              <input type="password" id="cpassword" name="cpassword" class="form-control col-md-7 col-xs-12" required="required">
                            </div>
                            <span id="msg_cpassword"></span>
                          </div>    
   
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">이름 <span class="required">*</span>
                            </label>
                            <div class="col-md-2 col-sm-12 col-xs-12">
                              <input type="text" id="name" name="name" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                            <span id="msg_name"></span>
                          </div>
	                     <div class="form-group">
                   	     <label class="control-label col-md-3 col-sm-3 col-xs-3">핸드폰번호<span class="required">*</span></label>
                        	<div class="col-md-2">
                          <input type="number" id="tel"class="form-control" >
                      	  </div> 
                      	  <span id="msg_tel"></span>                    
	                      </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">성별<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <div id="sex" class="btn-group" data-toggle="buttons">
                                <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                  <input type="radio" name="gender" value="1"> &nbsp; Male &nbsp;
                                </label>
                                <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                  <input type="radio" name="gender" value="2"> Female
                                </label>
                              </div>
                            </div>
                            <span id="msg_gender"></span>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">나이<span class="required">*</span>
                            </label>
                            <div class="col-md-1">
                              <input type="number" id="age" name="age" class="form-control" >
                            </div>
                           <span id="msg_age"></span>
                          </div>
                          
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">거주지역</label>
                        <div class="col-md-3 col-sm-9 col-xs-12">
                          <select class="select2_group form-control" name="address">
                            <optgroup label="특별시">
                              <option value="서울">서울특별시</option>
                            </optgroup>
                            <optgroup label="광역시">
                              <option value="부산">부산광역시</option>
                              <option value="대구">대구광역시</option>
                              <option value="인천">인천광역시</option>
                              <option value="광주">광주광역시</option>
                              <option value="대전">대전광역시</option>
                              <option value="울산">울산광역시</option>
                            </optgroup>
                            <optgroup label="도">
                              <option value="경기">경기도</option>
                              <option value="강원">강원도</option>
                              <option value="충청">충청북도</option>
                              <option value="충청">충청남도</option>
                              <option value="전라">전라북도</option>
                              <option value="전라">전라남도</option>
                              <option value="경상">경상북도</option>
                              <option value="경상">경상남도</option>
                            </optgroup>
                            <optgroup label="특별자치시">
                              <option value="세종">세종시</option>
                            </optgroup>
                            <optgroup label="특별자치도">
                              <option value="제주">제주도</option>
                            </optgroup>
                          </select>
                        </div>
                      </div> 
                          <div class="form-group">
                          <label for="introduce" class="control-label col-md-3 col-sm-3 col-xs-12">자기소개 <span class="required">*</span></label>
                          <div class="col-md-6 col-sm-12 col-xs-12">
                          <textarea id="introduce" required="required" class="form-control " name="introduce" ></textarea>
                          </div>
                          <span id="msg_introduce"></span>
					</div>                      
                     <div class="form-group">
                          <label for="profileimg" class="control-label col-md-3 col-sm-3 col-xs-12">프로필 사진 <span class="required">*</span></label>
                          <div class="col-md-6 col-sm-3 col-xs-12" >
                           <input type="file" name="uploadFile"  id="uploadFile" required="required">
                         </div>
                          <span id="msg_profileimg"></span>
					</div>					
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">검색공개범위 <span class="required">*</span></label>
                          <div class="col-md-6 col-sm-3 col-xs-12" >
                              <input type="radio"  checked name="range" value="1"> 전체공개 &nbsp;&nbsp;&nbsp;
                              <input type="radio"  name="range" value="0"> 비공개
                          </div>				
                            <span id="msg_range"></span>
                          </div>
					 <div class="form-group">
					 <div class="submitFormBtn" >
                        <input type="submit" value="가입하기" class="btn btn-primary" >
                        </div>
                        </div>
                    </form>
                    </div></div>
                    <!-- End SmartWizard Content -->
                  
</section>

<jsp:include page="layout/footer.jsp"></jsp:include>
    
	 <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/vendors/jquery.min.js"></script>
    <!-- Bootstrap -->
  <!--   <script src="vendors/bootstrap.js"></script> -->
    <!-- FastClick -->
    <script src="${pageContext.request.contextPath}/resources/vendors/fastclick.js"></script>
    <!-- NProgress -->
    <script src="${pageContext.request.contextPath}/resources/vendors/nprogress.js"></script>

    <!-- Select2 -->
    <script>
      $(document).ready(function() {
        $(".select2_single").select2({
          placeholder: "Select a state",
          allowClear: true
        });
        $(".select2_group").select2({});
        $(".select2_multiple").select2({
          maximumSelectionLength: 4,
          placeholder: "With Max Selection limit 4",
          allowClear: true
        });
      });
    </script>
    <!-- /Select2 -->
     <!-- Select2 -->
    <script src="${pageContext.request.contextPath}/resources/vendors/select2.full.min.js"></script>

  </body>
</html>    