 <%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
 
	<jsp:include page="layout/header.jsp"></jsp:include>

	<link href="${pageContext.request.contextPath}/resources/vendors/smart_wizard.css" rel="stylesheet" type="text/css">
    
	<script src="${pageContext.request.contextPath}/resources/vendors/jquery.smartWizard.js"></script>
    <!-- Select2 -->
    <link href="${pageContext.request.contextPath}/resources/vendors/select2.min.css" rel="stylesheet">

<body>
<br><br><br><br>
 <section id="my-profile" class="my-profile-section">
        <div class="container">
            <div class="row">
	<form action="${pageContext.request.contextPath}/registerMemberAction.do" method="post"  enctype="multipart/form-data" id="regForm" class="form-horizontal form-label-left"> 
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
			<div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">아이디 <span class="required">*</span>
                            </label>
                            <div class="col-md-2 col-sm-12 col-xs-12">
                              <input type="text" id="id" name="id" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                            <span id="msg_id"></span><input type="hidden" id="idCheck" value="">
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
                          <input type="text" id="tel" name="tel"class="form-control">
                      	  </div> 
                      	  <span id="msg_tel"></span>                    
	                      </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">성별<span class="required">*</span></label>
                            <div class="col-md-2">
                              <div id="sex" class="btn-group" data-toggle="buttons">
                                <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                  <input type="radio" name="sex" value="1"> &nbsp; Male &nbsp;
                                </label>
                                <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                  <input type="radio" name="sex" value="2"> Female
                                </label>
                              </div>
                            </div>
                            <span id="msg_sex"></span>
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
                              <option value="서울특별시">서울특별시</option>
                            </optgroup>
                            <optgroup label="광역시">
                              <option value="부산광역시">부산광역시</option>
                              <option value="대구광역시">대구광역시</option>
                              <option value="인천광역시">인천광역시</option>
                              <option value="광주광역시">광주광역시</option>
                              <option value="대전광역시">대전광역시</option>
                              <option value="울산광역시">울산광역시</option>
                            </optgroup>
                            <optgroup label="도">
                              <option value="경기도">경기도</option>
                              <option value="강원도">강원도</option>
                              <option value="충청북도">충청북도</option>
                              <option value="충청남도">충청남도</option>
                              <option value="전라북도">전라북도</option>
                              <option value="전라남도">전라남도</option>
                              <option value="경상북도">경상북도</option>
                              <option value="경상남도">경상남도</option>
                            </optgroup>
                            <optgroup label="특별자치시">
                              <option value="세종시">세종시</option>
                            </optgroup>
                            <optgroup label="특별자치도">
                              <option value="제주도">제주도</option>
                            </optgroup>
                          </select>
                        </div>
                      </div> 
                      </div>
                      <div id="step-2">
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
                          <span id="msg_uploadFile"></span>
					</div>					
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">검색공개범위 <span class="required">*</span></label>
                          <div class="col-md-6 col-sm-3 col-xs-12" >
                              <input type="radio"  checked name="range" value="1"> 전체공개 &nbsp;&nbsp;&nbsp;
                              <input type="radio"  name="range" value="0"> 비공개
                          </div>				
                            <span id="msg_range"></span>
                          </div>
                    </div></div></form></div>
                  
</div></section>

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
<script>

$(":input[name=id]").keyup(function(){
	var id=$(this).val().trim();
		if(id.length<4 || id.length>10){
			$("#msg_id").html("아이디는 4자이상 10자 이하여야 함!").css(
					"color","red");
			$("#idCheck").val("");
			return;
		}
	
	$.ajax({
		type:"POST",
		url:"idcheckAjax.do",				
		data:"id="+id,	
		success:function(data){						
			if(data=="fail"){
			$("#msg_id").html(id+" 사용불가!").css("color","red");
			$("#idCheck").val("");
			}else{						
				$("#msg_id").html(id+" 사용가능!").css(
						"color","blue");		
				$("#idCheck").val(id);
			}					
		}//callback			
	});//ajax
});//keyup



</script>

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
    	        $('#regForm').submit();
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
    	          $('#wizard').smartWizard('showMessage','<p class="validate_msg">에러가 존재합니다. 확인해주세요!</p>');
    	       }
    	              
    	       return isStepValid;
    	    } 	
    			
    			
    			function validateSteps(step){
    			  var isStepValid = true;
    	      // validate step 1
    	      if(step == 1){
    	        if(validateStep1() == false ){
    	          isStepValid = false; 
    	          $('#wizard').smartWizard('showMessage','<p class="validate_msg">step'+step+ '에서 에러가 존재합니다. 확인해주세요!</p>');
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
    	          $('#wizard').smartWizard('showMessage','<p class="validate_msg">step'+step+ '에서 에러가 존재합니다. 확인해주세요!</p>');
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
    	       var idCheck = $('#idCheck').val();
    	       if(!idCheck && idCheck.length <= 0){
      	         isValid = false;
      	         $('#msg_id').html('<p class="validate_msg">잘못된 아이디입니다</p>').show();
      	       }else{
      	         $('#msg_id').html('').hide();
      	       }
    	       
    	       // Validate Username
    	       var name = $('#name').val();
    	       if(!name && name.length <= 0){
    	         isValid = false;
    	         $('#msg_name').html('<p class="validate_msg">이름을 입력해주세요</p>').show();
    	       }else{
    	         $('#msg_name').html('').hide();
    	       }
    	       
    	       // validate password
    	       var pw = $('#password').val();
    	       if(!pw && pw.length <= 0){
    	         isValid = false;
    	         $('#msg_password').html('<p class="validate_msg">비밀번호를 입력해주세요</p>').show();         
    	       }else{
    	         $('#msg_password').html('').hide();
    	       }
    	       
    	       // validate confirm password
    	       var cpw = $('#cpassword').val();
    	       if(!cpw && cpw.length <= 0){
    	         isValid = false;
    	         $('#msg_cpassword').html('<p class="validate_msg">비밀번호확인칸을 입력해주세요</p>').show();         
    	       }else{
    	         $('#msg_cpassword').html('').hide();
    	       }  
    	       
    	       // validate password match
    	       if(pw && pw.length > 0 && cpw && cpw.length > 0){
    	         if(pw != cpw){
    	           isValid = false;
    	           $('#msg_cpassword').html('<p class="validate_msg">비밀번호가 일치하지 않습니다</p>').show();            
    	         }else{
    	           $('#msg_cpassword').html('').hide();
    	         }
    	       }
       	    // Validate age
    	       var age = $('#age').val();
    	       if(!age && age.length <= 0){
    	         isValid = false;
    	         $('#msg_age').html('<p class="validate_msg">나이를 입력해주세요</p>').show();
    	       }else{
    	         $('#msg_age').html('').hide();
    	       }

    	    // Validate Tel
    	       var tel = $('#tel').val();
    	       if(!tel && tel.length <= 0){
    	         isValid = false;
    	         $('#msg_tel').html('<p class="validate_msg">전화번호를 입력해주세요</p>').show();
    	       }else{
    	         $('#msg_tel').html('').hide();
    	       }
    	       
    	       if(isNaN(tel)){
      	         isValid = false;
      	         $('#msg_tel').html('<p class="validate_msg">전화번호를 숫자로 입력해주세요</p>').show();
      	       }else{
      	         $('#msg_tel').html('').hide();
      	       }
    	       
       	    // Validate sex
    	       var sex = $("input[name=sex]:radio:checked");
    	       if(sex.length == 0){
    	         isValid = false;
    	         $('#msg_sex').html('<p class="validate_msg">성별을 선택해주세요</p>').show();
    	       }else{
    	         $('#msg_sex').html('').hide();
    	       }
    	       
    	       
    	       return isValid;
    	    }
    	    
    	    function validateStep2(){
    	      var isValid = true;    
         
      	    // Validate introduce
   	       var introduce = $('#introduce').val();
   	       if(!introduce && introduce.length <= 0){
   	         isValid = false;
   	         $('#msg_introduce').html('<p class="validate_msg">자기소개를 입력해주세요</p>').show();
   	       }else{
   	         $('#msg_introduce').html('').hide();
   	       }

     	    // Validate uploadFile
   	       var uploadFile = $('#uploadFile').val();
   	       if(!uploadFile && uploadFile.length <= 0){
   	         isValid = false;
   	         $('#msg_uploadFile').html('<p class="validate_msg">프로필 사진을 업로드해주세요</p>').show();
   	       }else{
   	         $('#msg_uploadFile').html('').hide();
   	       }
   	       
      	    // Validate range
	       var range = $("input[name=range]:radio:checked");
	       if(range.length == 0){
	         isValid = false;
	         $('#msg_range').html('<p class="validate_msg">공개범위를 선택해주세요</p>').show();
	       }else{
	         $('#msg_range').html('').hide();
	       }   	       
    	      return isValid;
    	    }

    </script>
    <!-- /jQuery Smart Wizard -->

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

