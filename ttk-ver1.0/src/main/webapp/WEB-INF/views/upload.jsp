<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="layout/header_profile.jsp"></jsp:include>
<link 	href="${pageContext.request.contextPath}/resources/vendors/dropzone/dist/min/dropzone.min.css" rel="stylesheet">
<!-- 사진첩 사진 업로드 페이지 -->


<body>
<br>
<br>
<!-- 12/2 효민 추가 부분  -->
		<form action="${pageContext.request.contextPath}/uploadMemberPic.do"
		method="post" enctype="multipart/form-data">
		제목   <input type="text" id="pictureTitle" name="pictureTitle" size="48"><br>
		작성자 ${sessionScope.mvo.name} <br>
		내용 <br><textarea cols="33" rows="15" id="pictureContent" name="pictureContent"></textarea><br>
		<%-- file upload를 위해 type을 file로 명시 --%>
		 <input type="file" name="uploadFile"><br> 
		<input type="submit" value="등록">
	</form>
<!-- 12/2 효민 추가 부분  끝-->


	<jsp:include page="layout/footer.jsp"></jsp:include>
	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/resources/vendors/jquery.min.js"></script>
	<!-- Bootstrap -->
	<!--   <script src="vendors/bootstrap.js"></script> -->
	<!-- FastClick -->
	<script
		src="${pageContext.request.contextPath}/resources/vendors/fastclick.js"></script>
	<!-- NProgress -->
	<script
		src="${pageContext.request.contextPath}/resources/vendors/nprogress.js"></script>
	<!-- Dropzone.js -->
	<script
		src="${pageContext.request.contextPath}/resources/vendors/dropzone/dist/min/dropzone.min.js"></script>
</body>
