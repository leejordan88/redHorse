<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="layout/header.jsp"></jsp:include>
   <link href="${pageContext.request.contextPath}/resources/vendors/smart_wizard.css" rel="stylesheet" type="text/css">
    <!-- bootstrap-daterangepicker -->
    <link href="${pageContext.request.contextPath}/resources/vendors/daterangepicker.css" rel="stylesheet">
    
   <script src="${pageContext.request.contextPath}/resources/vendors/jquery.smartWizard.js"></script>
    <!-- Select2 -->
    <link href="${pageContext.request.contextPath}/resources/vendors/select2.min.css" rel="stylesheet">
</head>
<body>
<br><br><br><br><br><br><br>
     <form class="form-horizontal form-label-left" method="post" action="${pageContext.request.contextPath}/updateMemberAction.do">
     						<input type="hidden" name="command" value="update">
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">아이디 <span class="required">*</span>
                            </label>
                            <div class="col-md-2 col-sm-12 col-xs-12">                         
                           <input type="text" name="id" value="${sessionScope.mvo.id}" class="form-control col-md-7 col-xs-12" readonly="readonly" required="required">
                            </div>
                            <span id="msg_id"></span>
                          </div>
                          <div class="form-group">
                            <label for="password" class="control-label col-md-3 col-sm-3 col-xs-12" >비밀번호 <span class="required">*</span>
                            </label>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="password" name="password" value="${sessionScope.mvo.password}" class="form-control col-md-7 col-xs-12" required="required">
                            </div>
                            <span id="msg_password"></span>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">이름 <span class="required">*</span>
                            </label>
                            <div class="col-md-2 col-sm-12 col-xs-12">
                               <input type="name" name="name" value="${sessionScope.mvo.name}" class="form-control col-md-7 col-xs-12" readonly="readonly" required="required">
                            </div>
                            <span id="msg_name"></span>
                          </div>
                    <div class="form-group">
                           <label class="control-label col-md-3 col-sm-3 col-xs-3">핸드폰번호<span class="required">*</span></label>
                           <div class="col-md-2">
                <input type="text" name="tel" value="${sessionScope.mvo.tel}" class="form-control col-md-7 col-xs-12" required="required">
                           </div> 
                           <span id="msg_tel"></span>                    
                         </div>
                 <!-- 나이 -->
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">나이<span class="required">*</span>
                            </label>
                            <div class="col-md-2">
                                <input type="text" id="age"name="age" value="${sessionScope.mvo.age}" class="form-control col-md-7 col-xs-12" required="required">
                            </div>
                           <span id="msg_birthday"></span>
                          </div> 
                    <!-- 나이끝 -->
                    <!-- 주소 -->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">주소<span class="required">*</span>
                            </label>
                            <div class="col-md-2">
                                <input type="text" id="address"name="address" value="${sessionScope.mvo.address}" class="form-control col-md-7 col-xs-12" required="required">
                            </div>
                           <span id="msg_birthday"></span>
                          </div> 
                          <!-- 주소끝 -->   
<!-- <p>
 <button class="btn btn-primary" type="submit">수정수정</button>
 <button class="btn btn-primary" type="button" >탈퇴</button>
</p> -->
<button class="btn btn-primary" type="submit">수정완료</button>
<a href="DeleteForm.jsp" class="btn btn-large btn-primary">탈퇴</a>


                    </form>

</body>

<jsp:include page="layout/footer.jsp"></jsp:include>
</html>