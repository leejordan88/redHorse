<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
	<jsp:include page="layout/header.jsp"></jsp:include>

	<link href="vendors/smart_wizard.css" rel="stylesheet" type="text/css">
    <!-- bootstrap-daterangepicker -->
    <link href="vendors/daterangepicker.css" rel="stylesheet">
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/jquery.smartWizard.js"></script>
    <!-- Select2 -->
    <link href="vendors/select2.min.css" rel="stylesheet">

<body>
<br><br><br><br>
    <section id="my-profile" class="my-profile-section">
        <div class="container">
            <div class="row">
	             <div class="x_content">

                    <!-- Smart Wizard -->
                    <div id="wizard" class="form_wizard wizard_horizontal">
                      <ul class="wizard_steps">
                        <li>
                          <a href="#step-1">
                            <span class="step_no">1</span>
                            <span class="step_descr">
                                              Step 1<br />
                                              <small>회원정보</small>
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-2">
                            <span class="step_no">2</span>
                            <span class="step_descr">
                                              Step 2<br />
                                              <small>회원상세정보</small>
                                          </span>
                          </a>
                        </li>
                      </ul>
                      <div id="step-1">
                       <form class="form-horizontal form-label-left">
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">아이디 <span class="required">*</span>
                            </label>
                            <div class="col-md-2 col-sm-12 col-xs-12">
                              <input type="text" id="id" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="password" class="control-label col-md-3 col-sm-3 col-xs-12" >비밀번호 <span class="required">*</span>
                            </label>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                                <input id="password" type="password" name="password" class="form-control col-md-7 col-xs-12" required="required">
                            </div>
                          </div>
                           <div class="form-group">
                            <label for="password2" class="control-label col-md-3 col-sm-3 col-xs-12" >비밀번호확인 <span class="required">*</span>
                            </label>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                              <input id="password2" type="password" name="password2"class="form-control col-md-7 col-xs-12" required="required">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">이름 <span class="required">*</span>
                            </label>
                            <div class="col-md-2 col-sm-12 col-xs-12">
                              <input type="text" id="name" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                          </div>
	                     <div class="form-group">
                   	     <label class="control-label col-md-3 col-sm-3 col-xs-3">핸드폰번호<span class="required">*</span></label>
                        	<div class="col-md-2">
                          <input type="text" class="form-control" data-inputmask="'mask' : '(010) 9999-9999'" id = "tel">
                      	  </div>                     
	                      </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">성별<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <div id="gender" class="btn-group" data-toggle="buttons" id = "sex">
                                <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                  <input type="radio" name="gender" value="1"> &nbsp; Male &nbsp;
                                </label>
                                <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                  <input type="radio" name="gender" value="2"> Female
                                </label>
                              </div>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">생년월일<span class="required">*</span>
                            </label>
                            <div class="col-md-2">
                              <input type="text" class="form-control" data-inputmask="'mask': '9999/99/99'" id = "">
                            </div>
                          </div>
                          
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">거주지역</label>
                        <div class="col-md-3 col-sm-9 col-xs-12">
                          <select class="select2_group form-control">
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
                      </form>
                      </div>
                      <div id="step-2">
                      
                      </div>



                    </div>  </div>
                    <!-- End SmartWizard Content -->
                  
</div></div></section>

<jsp:include page="layout/footer.jsp"></jsp:include>
    
	 <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/vendors/jquery.min.js"></script>
    <!-- Bootstrap -->
  <!--   <script src="vendors/bootstrap.js"></script> -->
    <!-- FastClick -->
    <script src="${pageContext.request.contextPath}/resources/vendors/fastclick.js"></script>
    <!-- NProgress -->
    <script src="${pageContext.request.contextPath}/resources/vendors/nprogress.js"></script>
    <!-- jQuery Smart Wizard -->
    <script src="${pageContext.request.contextPath}/resources/vendors/jquery.smartWizard.js"></script>


    <!-- jQuery Smart Wizard -->
    <script>
      $(document).ready(function() {
        $('#wizard').smartWizard();
        $('.buttonFinish').click(function(){
    		alert("회원가입을 축하드립니다.")
    	})
        $('.buttonNext').addClass('btn btn-success');
        $('.buttonPrevious').addClass('btn btn-default');
        $('.buttonFinish').addClass('btn btn-primary');
      });
    </script>
    <!-- /jQuery Smart Wizard -->
    <!-- jquery.inputmask -->
    <script>
      $(document).ready(function() {
        $(":input").inputmask();
      });
    </script>
    <!-- /jquery.inputmask -->
    <!-- jquery.inputmask -->
    <script src="${pageContext.request.contextPath}/resources/vendors/jquery.inputmask.bundle.min.js"></script>
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
    