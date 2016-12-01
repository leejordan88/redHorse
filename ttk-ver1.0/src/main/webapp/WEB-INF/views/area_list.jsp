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
					<h3>Area</h3>
					<p>지역을 선택하세요</p>
				</div>

				<div class="block">
					<div class="portfolio-contant">
						<ul id="portfolio-contant-active">
							<c:forEach items="${areaList }" var="list">
								<li class="mix Category"><a href="placeList.do?categoryName=${param.categoryName }&areaName=${list.areaName }" >
										<img src="${pageContext.request.contextPath}/resources/images/area/${list.areaPicture}" alt="">
										<div class="overly">
											<div class="position-center">
												<h2 style="text-align: center">${list.areaName }</h2>
											</div>
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