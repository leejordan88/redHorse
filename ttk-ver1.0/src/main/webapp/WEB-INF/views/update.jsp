<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<jsp:include page="layout/header.jsp"></jsp:include>
<link
	href="${pageContext.request.contextPath}/resources/vendors/smart_wizard.css"
	rel="stylesheet" type="text/css">
<!-- bootstrap-daterangepicker -->
<link
	href="${pageContext.request.contextPath}/resources/vendors/daterangepicker.css"
	rel="stylesheet">

<script
	src="${pageContext.request.contextPath}/resources/vendors/jquery.smartWizard.js"></script>
<!-- Select2 -->
<link
	href="${pageContext.request.contextPath}/resources/vendors/select2.min.css"
	rel="stylesheet">
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<!-- 수정 시작 form -->
	<form class="form-horizontal form-label-left" method="post"
		action="${pageContext.request.contextPath}/updateMemberAction.do" enctype="multipart/form-data">
		<input type="hidden" name="command" value="update">
		<!-- 아이디시작 -->
		<div class="form-group">
			<label class="control-label col-md-3 col-sm-3 col-xs-12">아이디
				<span class="required">*</span>
			</label>
			<div class="col-md-2 col-sm-12 col-xs-12">
				<input type="text" name="id" value="${sessionScope.mvo.id}"
					class="form-control col-md-7 col-xs-12" readonly="readonly"
					required="required">
			</div>
			<span id="msg_id"></span>
		</div>
		<!-- 아이디 끝 -->
		<!-- 비밀번호시작 -->
		<div class="form-group">
			<label for="password"
				class="control-label col-md-3 col-sm-3 col-xs-12">비밀번호 <span
				class="required">*</span>
			</label>
			<div class="col-md-3 col-sm-3 col-xs-12">
				<input type="password" name="password" id="password" value="${sessionScope.mvo.password}"
					class="form-control col-md-7 col-xs-12" required="required">
			</div>
			<span id="msg_password"></span>
		</div>
		<!-- 비밀번호 끝 -->
		 <div class="form-group">
                            <label for="cpassword" class="control-label col-md-3 col-sm-3 col-xs-12" >비밀번호확인 <span class="required">*</span>
                            </label>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                              <input type="password" id="cpassword" name="cpassword"  value="${sessionScope.mvo.password}"
                              class="form-control col-md-7 col-xs-12" required="required">
                            </div>
                            <span id="msg_cpassword"></span>
                          </div>    
		<!-- 이름 시작 -->
		<div class="form-group">
			<label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">이름
				<span class="required">*</span>
			</label>
			<div class="col-md-2 col-sm-12 col-xs-12">
				<input type="name" name="name" value="${sessionScope.mvo.name}"
					class="form-control col-md-7 col-xs-12" readonly="readonly"
					required="required">
			</div>
			<span id="msg_name"></span>
		</div>
		<!-- 이름 끝 -->
		<!-- 프로필 사진 등록 -->
		<!--  글씨 -->
                     <div class="form-group">
           	<label class="control-label col-md-3 col-sm-3 col-xs-12">사진
				<span class="required">*</span>
					</label>
                          <!-- 글씨끝 -->
 					<input type="file" name=uploadFile><br>
               </div>               
               <!-- 프로필사진 끝 -->        
               <!-- 전체 공개 범위
                range 위치 변경 문 12/7 진석 -->
             <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">검색공개범위 
                            <span class="required">*</span></label>
                            
                          <div class="col-md-6 col-sm-3 col-xs-12">
                 <c:choose>
                 	<c:when test="${sessionScope.mvo.range==1}">                              
                              <input type="radio"  checked name="range" value="1"> 전체공개
                              <input type="radio"   name="range" value="0"> 비공개
                     </c:when>
                     <c:otherwise>                              
                              <input type="radio"   name="range" value="1"> 전체공개
                              <input type="radio"  checked name="range" value="0"> 비공개
                     </c:otherwise>
                     </c:choose>                                    
                          </div>				
                            <span id="msg_range"></span>
                          </div>
                         <!-- 전체 공개 범위 끝 -->
		<!-- 폰번호 시작 -->
		<div class="form-group">
			<label class="control-label col-md-3 col-sm-3 col-xs-3">핸드폰번호<span
				class="required">*</span></label>
			<div class="col-md-2">
				<input type="text" name="tel" id="tel"value="${sessionScope.mvo.tel}"
					class="form-control col-md-7 col-xs-12" required="required">
			</div>
			<span id="msg_tel"></span>
		</div>
		<!-- 폰번호 끝 -->
		<!-- 나이 -->
		<div class="form-group">
			<label class="control-label col-md-3 col-sm-3 col-xs-12">나이<span
				class="required">*</span>
			</label>
			<div class="col-md-2">
				<input type="text" id="age" name="age"
					value="${sessionScope.mvo.age}"
					class="form-control col-md-7 col-xs-12" required="required">
			</div>
			<span id="msg_birthday"></span>
		</div>
		<!-- 나이끝 -->
		<!-- 주소 -->
		<div class="form-group">
			<label class="control-label col-md-3 col-sm-3 col-xs-12">주소<span
				class="required">*</span>
			</label>
			<div class="col-md-2">
				<input type="text" id="address" name="address"
					value="${sessionScope.mvo.address}"
					class="form-control col-md-7 col-xs-12" required="required">
			</div>
			<span id="msg_birthday"></span>
		</div>
		<!-- 주소끝 -->
		<!-- 자기소개 시작 -->
			        <div class="form-group">
	                <label for="introduce" class="control-label col-md-3 col-sm-3 col-xs-12">자기소개 <span class="required">*</span>
	                </label>
	                <!-- 자기소개 텍스트 -->
	                  <div class="col-md-6 col-sm-12 col-xs-12">
	                    <textarea id="introduce" required="required" class="form-control " name="introduce">${sessionScope.mvo.introduce}</textarea>
							</div>
	                    <span id="msg_introduce"></span>       
               </div>   
               <!-- 자기소개끝  -->
               <center>
			<button class="btn btn-primary" type="submit" id="update">수정</button>
			<button class="btn btn-primary" type="button" id="delete" name="delete">회원탈퇴</button>
			</center>
	</form>
	<!-- 수정버튼끝 -->
	
	<!-- 회원탈퇴 제이쿼리 비활성화 updateDelete.do -->
	<!-- 12/2 정밀 검사 회원탈퇴 추가 진석 -->
	<script type="text/javascript">
	$(document).ready(function(){
		$('#delete').click(function(){
			 var result = confirm('탈퇴시 해당 아이디로는 재가입이 불가능 합니다. 탈퇴 하시겠습니까?');
		        if(result) {
		           //yes
		        	$(location).attr('href',"updateDelete.do");
		        } else {
		            //no
		        	alert("개인정보수정을 취소합니다.");
		        	  location.replace('index.do');
		        	  return;
		        }
		}); // click
		
	// 숫자 체크 
		$('#update').click(function() {
			// isNaN = Not a Number ==> 숫자가 아니면 true 
			// 숫자면 false  
			if(isNaN($('#age').val())) {
				alert("나이를 숫자로 입력하세요");
					return false;
			}
			if(isNaN($('#tel').val())) {
				alert("휴대폰번호를 숫자로 입력하세요");
					return false;
			}
			if($('#password').val()!=$('#cpassword').val()){
				alert("비밀번호랑 비밀번호확인이랑 일치하지 않습니다");
				return false;
			}
			if($('#tel').val().length != 11) {
				//var tel=$(this).val().trim();
				alert("휴대폰 번호 11자리 입력하세요");
					return false;
			}
		}); // update 버튼 클릭
	}); // ready
	</script>
<!-- 회원탈퇴 제이쿼리 끝 비활성화  -->
</body>

<jsp:include page="layout/footer.jsp"></jsp:include>
</html>