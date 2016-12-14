<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
    <jsp:include page="layout/header.jsp"></jsp:include>
    <!-- Select2 -->
    <link href="${pageContext.request.contextPath}/resources/vendors/select2.min.css" rel="stylesheet">

    
<section id="profile-list">
	<div class="container">
		<div class="row">
			<div class="col-md-12"><br>
				<div class="section-title text-center">
                	<h3>다른 회원 검색</h3>
                    <p>타 회원 프로필 리스트입니다. 조건별 검색이 가능합니다.</p>
				</div>

              <div class="form-group">                    
                      <form id="searchForm">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select class="select2_multiple form-control" multiple="multiple" name="search">
                            <option value="1">남자회원</option>
                            <option value="2">여자회원</option>
                            <option value="10">~10대</option>
                            <option value="20">20대</option>
                            <option value="30">30대</option>
                            <option value="40">40대~</option>
                          </select>
                        </div>
                        <label class="control-label col-md-1"><input type="button" class="btn btn-primary" value="찾기!" id="serachBtn"></label>
               </form>
               
         <form id="searchByNameForm">
            <div class="col-md-2 col-sm-12 col-xs-12">
                    <input type="text" name="name"  id="searchName" placeholder="이름" class="form-control">
                </div>
                     <input type="button" class="btn btn-success" value="검색!" id="searchByNameBtn">
            </form> 
         </div>
				<div class="searchView">
					<div class="form-group">
                      <div class="col-md-12 col-sm-12 col-xs-12 text-center">
             		    <span id="serachResultView"></span>
                  </div>
                </div>
               </div>
             </div>
		</div>
      </div>
      <!-- 쪽지보내기모달 -->
          <div class="modal fade" id="message-modal" tabindex="-1" role="dialog" aria-hidden="true">
          
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="Message">Message</h4>
                    </div>
                    <div class="modal-body">
                        <form method="post" action="messageSend.do">
                            <div class="form-group">
                            <input type="text" id="receiver" name="receiver" value="" readonly="readonly" class="form-control"/>
                            </div>
                            <div class="form-group">
                            	<textarea class="form-control" required="required" id="messageContent" name="messageContent" cols="45" rows="9" placeholder="인터넷은 우리가 함께 만들어가는 소중한 공간입니다. 쪽지 작성 시 타인에 대한 배려와 책임을 담아주세요."></textarea>
                            </div>
                            <p class="text-center">
                                <button class="btn btn-green animated fadeInUp" type="submit"><i class="fa fa-sign-in"></i>전송</button>
                            </p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
   <!-- 쪽지보내기 모달 끝 -->  
      
</section>

 <script type="text/javascript">
    $(document).ready(function(){
    	
    	$("#searchByNameBtn").click(function(){
			$.ajax({
				type:"POST",
				url:"searchMemberByName.do",				
				data:$("#searchByNameForm").serialize(),
				dataType:"json",   
				success:function(result){ 					
					if(result.error=="fail"){
						alert("조건이 일치하는 회원이 없습니다.");	
						$("#serachResultView").html("");						
					}else{
						var sicon="<i class='fa fa-male'></i>";
						var data="";
						for(var i=0;i<result.length;i++){
							if(result[i].sex==2){
								sicon="<i class='fa fa-female'></i>";
							}
							data+="<div class='col-xs-6 col-md-4 profile_details'><div class='well profile_view'><div class='col-sm-12'><div class='left col-xs-7'>";
							data+="<h2><i>"+result[i].name+"</i>&nbsp;"+sicon+"</h2><br>";
							data+="<ul class='list-unstyled'><li><p><strong>자기소개: </strong>"+result[i].introduce+"</p></li>";
							data+=" <li><i class='fa fa-smile-o'></i>나이 : "+result[i].age+"</li>";
							data+=" <li><i class='fa fa-building'></i>지역 : "+result[i].address+"</li></ul></div>";
							data+="<div class='right col-xs-5 text-center'><c:if test='${sessionScope.mvo!=null}'><a href='visitMemberPic.do?id="+result[i].id+"'></c:if>";
							data+="<img src='${pageContext.request.contextPath}/resources/upload/";
							data+=result[i].id+"/profile/"+result[i].profileimg+"' class='img-circle img-responsive'><c:if test='${sessionScope.mvo!=null}'></a></c:if>";
							data+="<c:if test='${sessionScope.mvo!=null}'>";
							data+="<a href='#' data-toggle='modal' data-target='#message-modal'>";
							data+="<button  type='button' class='btn btn-success btn-xs messageBtn' value="+result[i].id+"> <i class='fa fa-user'></i>";
							data+="<i class='fa fa-comments-o'></i>쪽지 </button></a></c:if>";
							data+="</div></div></div></div>";
						}
						$("#serachResultView").html(data);				
					}
				}// success
			  });//ajax 		
    	});
    	
    	
    	
    	$("#serachBtn").click(function(){ 
			$.ajax({
			type:"POST",
			url:"searchMemberByOption.do",				
			data:$("#searchForm").serialize(),
			dataType:"json",   
			success:function(result){ 					
				if(result.error=="fail"){
					alert("조건이 일치하는 회원이 없습니다.");
					$("#serachResultView").html("");
				}else{
					var sicon="<i class='fa fa-male'></i>";
					var data="";
					for(var i=0;i<result.length;i++){
						if(result[i].sex==2){
							sicon="<i class='fa fa-female'></i>";
						}
						data+="<div class='col-xs-6 col-md-4 profile_details'><div class='well profile_view'><div class='col-sm-12'><div class='left col-xs-7'>";
						data+="<h2><i>"+result[i].name+"</i>&nbsp;"+sicon+"</h2><br>";
						data+="<ul class='list-unstyled'><li><p><strong>자기소개: </strong>"+result[i].introduce+"</p></li>";
						data+=" <li><i class='fa fa-smile-o'></i>나이 : "+result[i].age+"</li>";
						data+=" <li><i class='fa fa-building'></i>지역 : "+result[i].address+"</li></ul></div>";
						data+="<div class='right col-xs-5 text-center'><c:if test='${sessionScope.mvo!=null}'><a href='visitMemberPic.do?id="+result[i].id+"'></c:if>";
						data+="<img src='${pageContext.request.contextPath}/resources/upload/";
						data+=result[i].id+"/profile/"+result[i].profileimg+"' class='img-circle img-responsive'><c:if test='${sessionScope.mvo!=null}'></a></c:if>";
						data+="<c:if test='${sessionScope.mvo!=null}'>";
						data+="<a href='#' data-toggle='modal' data-target='#message-modal'>";
						data+="<button  type='button' class='btn btn-success btn-xs messageBtn' value="+result[i].id+"> <i class='fa fa-user'></i>";
						data+="<i class='fa fa-comments-o'></i>쪽지 </button></a></c:if>";
						data+="</div></div></div></div>";
					}
					$("#serachResultView").html(data);				
				}
			}// success
		  });//ajax 			 	 			
    	});
    	
    	$("#serachResultView").on("click",".messageBtn",(function(){
    		var receiver =$(this).val();
    		$("#messageContent").val("");
    		$("#receiver").val(receiver);
    	}))
    });	
</script>


    <!-- Select2 -->
    <script>
      $(document).ready(function() {
        $(".select2_multiple").select2({
          miniimumSelectionLength: 1,
          placeholder: "최소 1개 이상 선택해주세요.",
          allowClear: true
        });
      });
    </script>
    <!-- /Select2 -->
     <!-- Select2 -->
    <script src="${pageContext.request.contextPath}/resources/vendors/select2.full.min.js"></script>

<jsp:include page="layout/footer.jsp"></jsp:include>