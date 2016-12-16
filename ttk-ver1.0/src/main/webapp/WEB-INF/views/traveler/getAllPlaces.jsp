<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

  <jsp:include page="../layout/header.jsp"></jsp:include>

<!-- Datatables -->
    <link href="${pageContext.request.contextPath}/resources/vendors/dataTables.bootstrap.min.css" rel="stylesheet">

    
<section id="place-list">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title text-center">
                	<h3>Place List</h3>
                    <p>전체 장소 리스트입니다. 검색이 가능합니다.</p>
				</div>

                    <table id="datatable" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>이름</th>
                          <th>주소</th>
                          <th>지역명</th>
                          <th>카테고리명</th>
                          <th>View</th>
                        </tr>
                      </thead>

                      <tbody>
                      
                      <c:forEach items="${requestScope.places}" var="list">
                      
                        <tr>
                          <td>${list.placeName}</td>
                          <td>${list.placeAddress}</td>
                          <td>${list.areaName}</td>
                          <td>${list.categoryName}</td>
                          <td><a href="detailPlace.do?placeNo=${list.placeNo}">CLICK!</a></td>
                        </tr>
                        
                        </c:forEach>
               
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>

</section>

    <!-- Datatables -->
    <script>
      $(document).ready(function() {

        $('#datatable').dataTable();

      });
    </script>
    <!-- /Datatables -->
    <!-- Datatables -->
    <script src="${pageContext.request.contextPath}/resources/vendors/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/dataTables.bootstrap.min.js"></script>
<jsp:include page="../layout/footer.jsp"></jsp:include>