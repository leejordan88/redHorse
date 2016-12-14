<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/header.jsp"></jsp:include>

<!-- Start Portfolio Section -->
<section id="portfolio-work">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title text-center">
					<h3>Category</h3>
					<p>카테고리를 선택하세요</p>
				</div>
				<div class="block">
					<div class="portfolio-contant">
						<ul id="portfolio-contant-active">
							<c:forEach items="${categoryList }" var="list">
								<li class="mix Category"><a href="placeList.do?areaName=${param.areaName }&categoryName=${list.categoryName }" >
										<img src="${pageContext.request.contextPath}/resources/images/category/${list.categoryPicture}" alt="">
										<div class="overly">
												<h1>${list.categoryName }</h1>
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



<jsp:include page="../layout/footer.jsp"></jsp:include>

</body>
</html>