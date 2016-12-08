<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="layout/header_visitprofile.jsp" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="section-title text-center">
				<h3>내가 등록한 여행</h3>
				<br>
			</div>
		</div>
	</div>
	<!-- 리스트에서 사진 3개씩 출력 위한 소스 -->
	<c:set var="i" value="0" />
	<c:set var="j" value="3" />
	<div class="row">
		<div class="col-md-12">
			<!-- Start Portfolio items -->
			<div id="travelView">
				<c:forEach items="${travelingList}" var="list">
					<c:if test="${i%j == 0 }">
						<ul id="portfolio-list">
					</c:if>
					<li>
						<div class="col-md-12">
							<div class="portfolio-item">
								<img
									src="${pageContext.request.contextPath}/resources/images/place/${list.placeVO.placeName}.jpg">
								<div class="portfolio-caption">
								<div class="overly">
									<div class="position-center">
									<h2 style="text-align: center" id="placeName">${list.placeVO.placeName}</h2>
									<h3 style="text-align: center" id="areaName">${list.placeVO.areaName}</h3>
									<h3 style="text-align: center" id="tDate">${list.tDate}</h3>
									<input type="hidden" value="${list.placeVO.placeNo}">
									</div></div>
								</div>
							</div>
						</div> <c:if test="${i%j == j-1 }">
					</li>
					</c:if>
					<c:set var="i" value="${i+1 }" />
				</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>

<jsp:include page="layout/footer.jsp"></jsp:include>

</body>
</html>