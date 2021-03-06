<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/header.jsp"></jsp:include>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.1.0.min.js"></script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDXgY2_QloeiWmqWax41miqR-eI87X4ZdA"></script>
<script type="text/javascript">
	//여행지역 선택 시 여행지역 마크업
	$(document).ready(function() {
				var map;
				var placeName = $("#placeName").val();
				var placeX = $("#placeX").val();
				var placeY = $("#placeY").val();
				var latlng = new google.maps.LatLng(placeX, placeY);
				var myOptions = {
					zoom : 15,
					center : latlng,
					mapTypeId : google.maps.MapTypeId.ROADMAP
				};
				map = new google.maps.Map(
						document.getElementById("google_map"), myOptions);
				map.setTilt(45);
				var marker = new google.maps.Marker({
					position : latlng,
					map : map,
					title : placeName
				});
				marker.setMap(map);
				//날짜 지정 시 ajax를 통한 여행자 리스트 제공
				$("#enableNextMonth").change(function(){
				 var placeNo = $("#placeNo").val();
				 var tDate = $("#enableNextMonth").val();
					 $.ajax({
						 type:"get",
						 url: "findTravelerByDate.do",
						 dataType: "json",
						 data: "placeNo=" + placeNo + "&tDate=" + tDate,
						 success: function(json){
						 var data = "<h2 align='center'>여행자 정보</h2>";
						 for(var i = 0; i < json.length; i++){
							 var sex = "";
							 if(json[i].sex==1){
								 sex = "male";
							 }else{
								 sex = "female"
							 }
						 data += "<div class='col-xs-6 col-md-4 profile_details'><div class='well profile_view'>";
						 data += "<div class='col-sm-12'><div class='left col-xs-7'>";
						 data += "<h2><i>"+json[i].name+"</i> <i class='fa fa-"+sex+"'></i></h2><br><ul class='list-unstyled'>";
						 data += "<li><p><strong>"+json[i].introduce+"</p></li><li><i class='fa fa-smile-o'></i>나이 : "+json[i].age+"</li>";
			     		 data += "<li><i class='fa fa-building'></i>지역 : "+json[i].address+"</li></ul></div>";
						data+="<div class='right col-xs-5 text-center'><c:if test='${sessionScope.mvo!=null}'><a href='visitMemberPic.do?id="+json[i].id+"'></c:if>";
						data+="<img src='${pageContext.request.contextPath}/resources/upload/";
						data+=json[i].id+"/profile/"+json[i].profileimg+"' class='img-circle img-responsive'><c:if test='${sessionScope.mvo!=null}'></a></c:if>";
						data+="<c:if test='${sessionScope.mvo!=null}'>";
						data+="<a href='#' data-toggle='modal' data-target='#message-modal'>";
						data+="<button  type='button' class='btn btn-success btn-xs messageBtn' value="+json[i].id+"> <i class='fa fa-user'></i>";
						data+="<i class='fa fa-comments-o'></i>쪽지 </button></a></c:if>";
					    data += "</div></div></div></div>";
						 }
						 data += "<input type='button' id ='regiTraveler' value='여행등록' class='btn btn-primary'>";
						 document.getElementById("travelerListByDate").innerHTML = data;
						 } 
					 });
					 
				    	$("#travelerListByDate").on("click",".messageBtn",(function(){
				    		var receiver =$(this).val();
				    		$("#messageContent").val("");
				    		$("#receiver").val(receiver);
				    	}))
					 
					 $("#travelerListByDate").on("click","#regiTraveler",function(){	
						 $('#popup_layer, #overlay_t').show(); 
					     $('#popup_layer').css("top", Math.max(0, $(window).scrollTop() + 100) + "px");
					     $('#overlay_t, .close').click(function(e){ 
					         e.preventDefault(); 
					         $('#popup_layer, #overlay_t').hide(); 
					     }); 
						 //$(location).attr('href',"regiTraveler.do?placeNo="+placeNo+"&tDate="+tDate);
					 });//여행 등록 팝업 on/off
					 $("#popup_layer").on("click","#openToMale",function(){
						 $(location).attr('href',"regiTraveler.do?placeNo="+placeNo+"&tDate="+tDate+"&tRange=1");
					 });
					 $("#popup_layer").on("click","#openToFemale",function(){
						 $(location).attr('href',"regiTraveler.do?placeNo="+placeNo+"&tDate="+tDate+"&tRange=2");
					 });
					 $("#popup_layer").on("click","#openToAll",function(){
						 $(location).attr('href',"regiTraveler.do?placeNo="+placeNo+"&tDate="+tDate+"&tRange=3");
					 });//openToMale: 1, openToFemale=2, openToAll=3
				 });//날짜 선택 
			});//ready
</script>



<!-- Start Portfolio Section -->

<section id="portfolio-work">

	<div class="container">

		<div class="row">

			<div class="col-md-12">

				<div class="section-title text-center"></div>

				<div class="block"></div>

			</div>

		</div>

	</div>

</section>



<div class="close-modal" data-dismiss="modal">

	<div class="lr">

		<div class="rl"></div>

	</div>

</div>



<div class="container">

	<div class="row">

		<div class="col-md-12">

				<div class="col-md-8">

					<div class="col-md-4 datepickertitle">

						<h2>날짜선택</h2>

					</div>

					<div class="col-md-4">

						<input id="enableNextMonth" type="text" placeholder="Select date"

							class=" form-control "> <br> <br>

					</div>

				</div>

				<div class="right_col" role="main">

					<div class="row">

						<div  id="travelerListByDate" class="col-md-12 col-sm-12 col-xs-12 text-center"></div>

					</div>

				<h2 align="center">MAP</h2>

				<div id="google_map" style="width: 100%; height: 400px"></div>

				<input type="hidden" id="placeX" value="${placeVO.placeX }">

				<input type="hidden" id="placeY" value="${placeVO.placeY }">

				<input type="hidden" id="placeName" value="${placeVO.placeName }">

				<input type="hidden" id="placeNo" value="${placeVO.placeNo }">
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
                            <input type="text" id="receiver" name="receiver" value="" readonly="readonly" class="form-control" style="color:black";/>
                            </div>
                            <div class="form-group">
                            	<textarea class="form-control" id="messageContent" name="messageContent" cols="45" rows="9" style="color:black";
                            	placeholder="인터넷은 우리가 함께 만들어가는 소중한 공간입니다. 쪽지 작성 시 타인에 대한 배려와 책임을 담아주세요."></textarea>
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
      
			
		</div>
	</div>

<div id="overlay_t"></div> 
<div id="popup_layer">
<div class="btn-group-vertical">
<input type='button' id ='openToMale' value='남자에게만 공개' class='btn btn-success'>
<input type='button' id ='openToFemale' value='여자에게만 공개' class='btn btn-primary'>
<input type='button' id ='openToAll' value='모두에게 공개' class='btn btn-inverse'>
</div>
</div>

<script type="text/javascript">
	flatpickr("#enableNextMonth", {
		enable : [ {
			from : "today",
			to : new Date().fp_incr(31)
		} ]
	})
</script>
<jsp:include page="../layout/footer.jsp"></jsp:include>