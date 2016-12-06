<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="layout/header.jsp"></jsp:include>
    <!-- Select2 -->
    <link href="${pageContext.request.contextPath}/resources/vendors/select2.min.css" rel="stylesheet">

    
<section id="profile-list">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title text-center">
                	<h3>다른 회원 검색</h3>
                    <p>타 회원 프로필 리스트입니다. 조건별 검색이 가능합니다.</p>
				</div>
                     <form id="searchForm">
                      <div class="form-group">
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
                        <label class="control-label col-md-3"><input type="button" class="btn btn-primary" value="찾기!" id="serachBtn"></label>
                      </div>
					</form>


					<div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12">
					<span id="serachResultView">
					                      <div class="col-md-3 col-xs-12 widget widget_tally_box">
                        <div class="x_panel fixed_height_390">
                          <div class="x_content">

                            <div class="flex">
                              <ul class="list-inline widget_profile_box">
                                <li>
                                  <a>
                                    <i class="fa fa-facebook"></i>
                                  </a>
                                </li>
                                <li>
                                  <img src="images/user.png" alt="..." class="img-circle profile_img">
                                </li>
                                <li>
                                  <a>
                                    <i class="fa fa-twitter"></i>
                                  </a>
                                </li>
                              </ul>
                            </div>

                            <h3 class="name">Musimbi</h3>

                            <div class="flex">
                              <ul class="list-inline count2">
                                <li>
                                  <h3>123</h3>
                                  <span>Articles</span>
                                </li>
                                <li>
                                  <h3>1234</h3>
                                  <span>Followers</span>
                                </li>
                                <li>
                                  <h3>123</h3>
                                  <span>Following</span>
                                </li>
                              </ul>
                            </div>
                            <p>
                              If you've decided to go in development mode and tweak all of this a bit, there are few things you should do.
                            </p>
                          </div>
                        </div>
                      </div>
					
					
					</span>
					</div>
					</div>
                </div>
              </div>
			</div>
</section>

 <script type="text/javascript">
    $(document).ready(function(){
    	$("#serachBtn").click(function(){ 
			$.ajax({
			type:"POST",
			url:"searchMemberByOption.do",				
			data:$("#searchForm").serialize(),
			dataType:"json",   
			success:function(result){ 					
				if(result.error=="fail"){
					alert("조건이 일치하는 회원이 없습니다.");					
				}else{
					var data="<table><tr><th>이름</th><th>성별</th><th>나이</th></tr>";
					for(var i=0;i<result.length;i++){
						data+="<tr>";
						data+="<td>"+result[i].name+"</td>";
						data+="<td>"+result[i].sex+"</td>";
						data+="<td>"+result[i].age+"</td>";
						data+="</tr>";
					}
					data+="</table>";
					$("#serachResultView").html(data);				
				}
			}// success
		  });//ajax 			 	 			
    	});

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