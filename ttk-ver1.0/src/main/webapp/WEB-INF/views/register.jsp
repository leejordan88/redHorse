<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
   <jsp:include page="layout/header.jsp"></jsp:include>

   <link href="${pageContext.request.contextPath}/resources/vendors/smart_wizard.css" rel="stylesheet" type="text/css">
    <!-- bootstrap-daterangepicker -->
    <link href="${pageContext.request.contextPath}/resources/vendors/daterangepicker.css" rel="stylesheet">
    
   <script src="${pageContext.request.contextPath}/resources/vendors/jquery.smartWizard.js"></script>
    <!-- Select2 -->
    <link href="${pageContext.request.contextPath}/resources/vendors/select2.min.css" rel="stylesheet">

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
                          <input type="text" id="tel"class="form-control" data-inputmask="'mask' : '(010) 9999-9999'">
                           </div> 
                           <span id="msg_tel"></span>                    
                         </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">성별<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <div id="gender" class="btn-group" data-toggle="buttons">
                                <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                  <input type="radio" name="gender" value="male"> &nbsp; Male &nbsp;
                                </label>
                                <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                  <input type="radio" name="gender" value="female"> Female
                                </label>
                              </div>
                            </div>
                            <span id="msg_gender"></span>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">생년월일<span class="required">*</span>
                            </label>
                            <div class="col-md-2">
                              <input type="text" id="birthday" class="form-control" data-inputmask="'mask': '9999/99/99'">
                            </div>
                           <span id="msg_birthday"></span>
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


                    </div></div></div>
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
          
       $('#wizard').smartWizard({transitionEffect:'slideleft',onLeaveStep:leaveAStepCallback,onFinish:onFinishCallback,enableFinishButton:true}); 
        $('.buttonNext').addClass('btn btn-success');
        $('.buttonPrevious').addClass('btn btn-default');
        $('.buttonFinish').addClass('btn btn-primary');

             function leaveAStepCallback(obj){
               var step_num= obj.attr('rel');
               return validateSteps(step_num);
             }
             
             function onFinishCallback(){
              if(validateAllSteps()){
                 alert("회원가입을 축하드립니다.")
               $('form').submit();
              }
             }
             });
             
           function validateAllSteps(){
              var isStepValid = true;
              
              if(validateStep1() == false){
                isStepValid = false;
                $('#wizard').smartWizard('setError',{stepnum:1,iserror:true});         
              }else{
                $('#wizard').smartWizard('setError',{stepnum:1,iserror:false});
              }
              
              if(validateStep2() == false){
                isStepValid = false;
                $('#wizard').smartWizard('setError',{stepnum:2,iserror:true});         
              }else{
                $('#wizard').smartWizard('setError',{stepnum:2,iserror:false});
              }
              
              if(!isStepValid){
                 $('#wizard').smartWizard('showMessage','Please correct the errors in the steps and continue');
              }
                     
              return isStepValid;
           }    
             
             
             function validateSteps(step){
               var isStepValid = true;
             // validate step 1
             if(step == 1){
               if(validateStep1() == false ){
                 isStepValid = false; 
                 $('#wizard').smartWizard('showMessage','Please correct the errors in step'+step+ ' and click next.');
                 $('#wizard').smartWizard('setError',{stepnum:step,iserror:true});         
               }else{
                 $('#wizard').smartWizard('hideMessage');
                 $('#wizard').smartWizard('setError',{stepnum:step,iserror:false});
               }
             }
             
             // validate step2
             if(step == 2){
               if(validateStep2() == false ){
                 isStepValid = false; 
                 $('#wizard').smartWizard('showMessage','Please correct the errors in step'+step+ ' and click next.');
                 $('#wizard').smartWizard('setError',{stepnum:step,iserror:true});         
               }else{
                 $('#wizard').smartWizard('hideMessage');
                 $('#wizard').smartWizard('setError',{stepnum:step,iserror:false});
               }
             }
             
             return isStepValid;
           }
             
          function validateStep1(){
              var isValid = true; 
              
              // Validate id
              var id = $('#id').val();
              if(!id && id.length <= 0){
                isValid = false;
                $('#msg_id').html('id를 입력해주세요').show();
              }else{
                $('#msg_id').html('').hide();
              }
              
              // Validate Username
              var name = $('#name').val();
              if(!name && name.length <= 0){
                isValid = false;
                $('#msg_name').html('Please fill username').show();
              }else{
                $('#msg_name').html('').hide();
              }
              
              // validate password
              var pw = $('#password').val();
              if(!pw && pw.length <= 0){
                isValid = false;
                $('#msg_password').html('Please fill password').show();         
              }else{
                $('#msg_password').html('').hide();
              }
              
              // validate confirm password
              var cpw = $('#cpassword').val();
              if(!cpw && cpw.length <= 0){
                isValid = false;
                $('#msg_cpassword').html('Please fill confirm password').show();         
              }else{
                $('#msg_cpassword').html('').hide();
              }  
              
              // validate password match
              if(pw && pw.length > 0 && cpw && cpw.length > 0){
                if(pw != cpw){
                  isValid = false;
                  $('#msg_cpassword').html('Password mismatch').show();            
                }else{
                  $('#msg_cpassword').html('').hide();
                }
              }
              
           // Validate birthday
              var birthday = $('#birthday').val();
              if(!birthday && birthday.length <= 0){
                isValid = false;
                $('#msg_birthday').html('Please fill birthday').show();
              }else{
                $('#msg_birthday').html('').hide();
              }
              
           // Validate gender
              var gender = $("input[name=gender]:radio:checked");
              if(gender.length == 0){
                isValid = false;
                $('#msg_gender').html('Please fill gender').show();
              }else{
                $('#msg_gender').html('').hide();
              }
              
           // Validate Tel
              var tel = $('#tel').val();
              if(!tel && tel.length <= 0){
                isValid = false;
                $('#msg_tel').html('Please fill tel').show();
              }else{
                $('#msg_tel').html('').hide();
              }
              
              return isValid;
           }
           
           function validateStep2(){
             var isValid = true;    

             return isValid;
           }

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
    