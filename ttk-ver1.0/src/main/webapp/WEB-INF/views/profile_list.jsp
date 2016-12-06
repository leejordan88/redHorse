<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="layout/header.jsp"></jsp:include>
        <!-- Datatables -->
    <link href="${pageContext.request.contextPath}/resources/vendors/dataTables.bootstrap.min.css" rel="stylesheet">

    
<section id="profile-list">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title text-center">
                	<h3>Profile List</h3>
                    <p>타 회원 프로필 리스트입니다. 조건별 검색이 가능합니다.</p>
				</div>

                  <div class="x_content">
                    <p class="text-muted font-13 m-b-30">
                    </p>
                    <table id="datatable" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>Name</th>
                          <th>Position</th>
                          <th>Office</th>
                          <th>Age</th>
                          <th>Start date</th>
                          <th>Salary</th>
                        </tr>
                      </thead>

                      <tbody>
                        <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>2011/04/25</td>
                          <td>$320,800</td>
                        </tr>
                        <tr>
                          <td>Garrett Winters</td>
                          <td>Accountant</td>
                          <td>Tokyo</td>
                          <td>63</td>
                          <td>2011/07/25</td>
                          <td>$170,750</td>
                        </tr>
                        <tr>
                          <td>Ashton Cox</td>
                          <td>Junior Technical Author</td>
                          <td>San Francisco</td>
                          <td>66</td>
                          <td>2009/01/12</td>
                          <td>$86,000</td>
                        </tr>
                        <tr>
                          <td>Cedric Kelly</td>
                          <td>Senior Javascript Developer</td>
                          <td>Edinburgh</td>
                          <td>22</td>
                          <td>2012/03/29</td>
                          <td>$433,060</td>
                        </tr>
                        <tr>
                          <td>Airi Satou</td>
                          <td>Accountant</td>
                          <td>Tokyo</td>
                          <td>33</td>
                          <td>2008/11/28</td>
                          <td>$162,700</td>
                        </tr>
                        <tr>
                          <td>Brielle Williamson</td>
                          <td>Integration Specialist</td>
                          <td>New York</td>
                          <td>61</td>
                          <td>2012/12/02</td>
                          <td>$372,000</td>
                        </tr>
                        <tr>
                          <td>Herrod Chandler</td>
                          <td>Sales Assistant</td>
                          <td>San Francisco</td>
                          <td>59</td>
                          <td>2012/08/06</td>
                          <td>$137,500</td>
                        </tr>
                        <tr>
                          <td>Rhona Davidson</td>
                          <td>Integration Specialist</td>
                          <td>Tokyo</td>
                          <td>55</td>
                          <td>2010/10/14</td>
                          <td>$327,900</td>
                        </tr>
                        <tr>
                          <td>Colleen Hurst</td>
                          <td>Javascript Developer</td>
                          <td>San Francisco</td>
                          <td>39</td>
                          <td>2009/09/15</td>
                          <td>$205,500</td>
                        </tr>
                        <tr>
                          <td>Sonya Frost</td>
                          <td>Software Engineer</td>
                          <td>Edinburgh</td>
                          <td>23</td>
                          <td>2008/12/13</td>
                          <td>$103,600</td>
                        </tr>
                        <tr>
                          <td>Jena Gaines</td>
                          <td>Office Manager</td>
                          <td>London</td>
                          <td>30</td>
                          <td>2008/12/19</td>
                          <td>$90,560</td>
                        </tr>
                        <tr>
                          <td>Quinn Flynn</td>
                          <td>Support Lead</td>
                          <td>Edinburgh</td>
                          <td>22</td>
                          <td>2013/03/03</td>
                          <td>$342,000</td>
                        </tr>
                        <tr>
                          <td>Charde Marshall</td>
                          <td>Regional Director</td>
                          <td>San Francisco</td>
                          <td>36</td>
                          <td>2008/10/16</td>
                          <td>$470,600</td>
                        </tr>
                        <tr>
                          <td>Haley Kennedy</td>
                          <td>Senior Marketing Designer</td>
                          <td>London</td>
                          <td>43</td>
                          <td>2012/12/18</td>
                          <td>$313,500</td>
                        </tr>
                      </tbody>
                    </table>
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
                            	<textarea class="form-control" id="messageContent" name="messageContent" cols="45" rows="9" placeholder="인터넷은 우리가 함께 만들어가는 소중한 공간입니다. 쪽지 작성 시 타인에 대한 배려와 책임을 담아주세요."></textarea>
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
							data+="<div class='right col-xs-5 text-center'><a href='mypage2.do'><img src='${pageContext.request.contextPath}/resources/upload/";
							data+=result[i].id+"/profile/"+result[i].profileimg+"' class='img-circle img-responsive'></a>";
							data+="<a href='#' data-toggle='modal' data-target='#message-modal'>";
							data+="<button  type='button' class='btn btn-success btn-xs messageBtn' value="+result[i].id+"> <i class='fa fa-user'></i>";
							data+="<i class='fa fa-comments-o'></i>쪽지 </button></a>";
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
						data+="<div class='right col-xs-5 text-center'><a href='mypage2.do'><img src='${pageContext.request.contextPath}/resources/upload/";
						data+=result[i].id+"/profile/"+result[i].profileimg+"' class='img-circle img-responsive'></a>";
						data+="<a href='#' data-toggle='modal' data-target='#message-modal'>";
						data+="<button  type='button' class='btn btn-success btn-xs messageBtn' value="+result[i].id+"> <i class='fa fa-user'></i>";
						data+="<i class='fa fa-comments-o'></i>쪽지 </button></a>";
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
        $('#datatable').dataTable();
      });
    </script>
    <!-- /Datatables -->
    <!-- Datatables -->
    <script src="${pageContext.request.contextPath}/resources/vendors/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/dataTables.bootstrap.min.js"></script>
<jsp:include page="layout/footer.jsp"></jsp:include>