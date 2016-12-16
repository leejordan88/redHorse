<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="layout/header.jsp" />
<!-- <span class="glyphicon glyphicon-search" aria-hidden="true"></span> -->
<!-- 이 위로는 헤더 -->
<div class="container" style="margin-top: 5%">
	<form class="navbar-form navbar-right" role="search" id="adminSearchByNameForm">
		<div class="form-group">
			<input type="text"  name="name"  id="adminSearchName"class="form-control" placeholder="회원검색">
		</div>
	<input type="button" value="검색" id="adminSearchByNameBtn" class="btn btn-default">
</form>
	<ul class="nav nav-tabs">
		<li role="presentation" class="active"><a href="managerView.do">회원관리</a></li>
		<li role="presentation"><a href="managerView2.do">신고관리</a></li>
		<li role="presentation"><a href="managerView3.do">블랙리스트관리</a></li>
	</ul>
	<br>
	<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading">회원관리</div>
		
		<!-- Table -->
		<table class="table">
			<thead>
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>핸드폰번호</th>
					<th>나이</th>
					<th>신고받은 횟수</th>
					<th>전체쪽지수</th>
					<th>여행등록수</th>
					<th>사진첩 게시글수</th>
					<th>
							<div class="btn-group">
								<button class="btn btn-default btn-xs dropdown-toggle"
									type="button" data-toggle="dropdown" aria-expanded="false">
									탈퇴 유/무<span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">회원</a></li>
									<li><a href="#">탈퇴회원</a></li>
								</ul>
							</div>
							</th>
				</tr>
			</thead>

			<tbody id="adminSearchView">
			<c:forEach items="${requestScope.rList.reporterList}" var="reporterList">
				<tr>
					<td>${reporterList.id}</td>
					<td>${reporterList.name}</td>
					<td>${reporterList.tel}</td>
					<td>${reporterList.age}</td>
					<td>${reporterList.reportCount}</td>
					<td>${reporterList.messageCount}</td>
					<td>${reporterList.travelingCount}</td>
					<td>${reporterList.pictureCount}</td>
					<td><c:if test="${reporterList.enabled == 1}">회원</c:if><c:if test="${reporterList.enabled == 0}">탈퇴회원</c:if></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</div>
	<nav>
	
	
<!-- 페이징부분 -->
<div id="adminPagingArea">
	<c:set var="pb" value="${requestScope.rList.pagingBean}"></c:set>	
		
		<ul class="pager">
		
		<c:if test="${pb.previousPageGroup}">
		
			<li class="active"><a href="managerView.do?pageNo=${pb.startPageOfPageGroup-1}" ><span
					aria-hidden="true">◀</span></a></li> </c:if>

			<c:forEach var="i" begin="${pb.startPageOfPageGroup}" end="${pb.endPageOfPageGroup}">
				<c:choose>
					<c:when test="${pb.nowPage!=i}">
						<li class="active"><a href="managerView.do?pageNo=${i}">${i}<span class="sr-only"></span></a></li>
					</c:when>
				<c:otherwise> <li class="disabled"><a href="managerView.do?pageNo=${i}">${i}<span class="sr-only">(current)</span></a></li></c:otherwise>
				</c:choose>					
			</c:forEach>		
					
					<c:if test="${pb.nextPageGroup}">
						<li class="active"><a href="managerView.do?pageNo=${pb.endPageOfPageGroup+1}" ><span
					aria-hidden="true">▶</span></a></li>
					</c:if>			

			<!-- 페이징부분  끝-->
		</ul></div>
	</nav>
</div>

<script type="text/javascript">
    $(document).ready(function(){
    	
    	$("#adminSearchByNameBtn").click(function(){
    		
    		if($("#adminSearchName").val()==""){
    			alert("검색하려는 이름을 입력해주세요");
    			$("#adminSearchView").html("");	
    			return;
    		}
  		
    		
			$.ajax({
				type:"POST",
				url:"adminSearchByName.do",				
				data:$("#adminSearchByNameForm").serialize(),
				dataType:"json",   
				success:function(result){ 					
					if(result.error=="fail"){
						alert("조건이 일치하는 회원이 없습니다.");	
						$("#adminSearchView").html("");						
					}else{
						var memberState="";
						var data="";
						for(var i=0;i<result.length;i++){
							if(result[i].enabled==1){
								memberState="회원";
							}else{
								memberState="탈퇴회원";
							}							

							data+="<tr><td>"+result[i].id+"</td>";
							data+="<td>"+result[i].name+"</td>";
							data+="<td>"+result[i].tel+"</td>";
							data+="<td>"+result[i].age+"</td>";
							data+="<td>"+result[i].reportCount+"</td>";
							data+="<td>"+result[i].messageCount+"</td>";
							data+="<td>"+result[i].travelingCount+"</td>";
							data+="<td>"+result[i].pictureCount+"</td>";
							data+="<td>"+memberState+"</td></tr>";
							
						}
						$("#adminSearchView").html(data);	
						$("#adminPagingArea").html("");
					}
				}// success
			  });//ajax 		
    	});
    	

    });	
</script>

<!-- 이 아래로는 푸터 -->
<jsp:include page="layout/footer.jsp" />