<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="layout/header.jsp"/>
<!-- <span class="glyphicon glyphicon-search" aria-hidden="true"></span> -->
<!-- 이 위로는 헤더 -->
<div class="container" style="margin-top:5%">
<ul class="nav nav-tabs">
  <li role="presentation" class="active"><a href="#">회원관리</a></li>
  <li role="presentation" ><a href="#">신고관리</a></li>
   <li role="presentation" ><a href="#">블랙리스트관리</a></li>
</ul>
 <br>
 <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">회원관리</div>
  <!-- Table -->
  <table class="table">
    <thead>
          <tr>
            <th>#</th>
            <th>아이디</th>
            <th>이름</th>
            <th>핸드폰번호</th>
            <th>주소</th>
            <th>성별</th>
            <th>나이</th>
            
          </tr>
        </thead>
        
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
              <td>@mdo</td>
                <td>@mdo</td>
                  <td>@mdo</td> 
          </tr>         
        </tbody>
  </table>
</div>
<nav>
  <ul class="pagination">
    <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
  </ul>
</nav>
</div>

<!-- 이 아래로는 푸터 -->
<jsp:include page="layout/footer.jsp"/>

