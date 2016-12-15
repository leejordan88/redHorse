<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="layout/header.jsp"></jsp:include>

<!-- Start Portfolio Section -->
<section id="portfolio-work">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title text-center">
					<h3>Place</h3>
					<p>세부 장소를 선택해주세요</p>
				</div>
				
				<div class="block">
					<div class="portfolio-contant">
						<ul id="portfolio-contant-active">
							<c:forEach items="${placeList }" var="list">
								<li class="mixCategory"><a
									href="detailPlace.do?placeNo=${list.placeNo }"> <img
										src="${pageContext.request.contextPath}/resources/images/place/${list.placeName}.jpg"
										alt="">
										<div class="overly">
												<h2 id="place_abc">${list.placeName }</h2>
										</div>
								</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<jsp:include page="layout/footer.jsp"></jsp:include>

</body>
</html>