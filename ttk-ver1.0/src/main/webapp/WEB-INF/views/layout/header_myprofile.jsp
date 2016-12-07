<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>
	<body>
	<header id="header">
		<div id="head" class="parallax" >
		<h1 id="logo" class="text-center">

			<img class="img-circle" src="${pageContext.request.contextPath}/resources/upload/${sessionScope.mvo.id}/profile/${sessionScope.mvo.profileimg}" >
			<span class="title">${sessionScope.mvo.name}'s Page</span>
		</h1>
		<h5 class="text-center">방문자수 <strong>${sessionScope.mvo.hit}</strong></h5>
		<h4 class="text-center">${sessionScope.mvo.introduce}</h4>
		
			<div class="text-center">
				<div class="container-fluid">
                    	<a href="upload.do" class="btn btn-default" >글쓰기</a>
                        <a href="getPictureList.do?id=${sessionScope.mvo.id}" class="btn btn-default" >사진첩보기</a>
                        <a href="schedule.do" class="btn btn-default">여행일정보기</a>
				</div>
			</div>
	</div>

</header>


