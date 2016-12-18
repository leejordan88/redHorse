<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="layout/header.jsp" />
<!-- <span class="glyphicon glyphicon-search" aria-hidden="true"></span> -->
<!-- 이 위로는 헤더 -->
<div class="container" style="margin-top: 5%">
   <form class="navbar-form navbar-right" role="search">
      <div class="form-group">
         <input type="text" class="form-control" placeholder="회원검색">
      </div>
      <button type="submit" class="btn btn-default">검색</button>
   </form>
   <ul class="nav nav-tabs">
      <li role="presentation"><a href="managerView.do">회원관리</a></li>
      <li role="presentation" class="active"><a
         href="messageReportList.do">신고관리</a></li>
      <li role="presentation"><a href="managerView3.do">블랙리스트관리</a></li>
   </ul>
   <br>
   <div class="panel panel-default">
      <!-- Default panel contents -->
      <div class="panel-heading">신고관리</div>
      <!-- Table -->
      <table class="table">
         <thead>
            <tr>
               <th>#</th>
               <th>신고한 사람</th>
               <th>신고 받은 사람</th>
               <th>신고 받은 사유</th>
               <th>블랙리스트이동</th>
            </tr>
         </thead>
         <tbody>

            <c:forEach var="mr" items="${requestScope.vo.list}">
               <tr>
                  <td>1</td>
                  <td>${mr.messageVO.receiver}</td>
                  <td>${mr.messageVO.sender}</td>
                  <td>${mr.messageReportContent}</td>
                  <td>
                     <div class="btn-group btn-group-xs" role="group"
                        aria-label="Extra-small button group">
                        <button type="button" class="btn btn-default">블랙리스트이동</button>
                     </div>
                  </td>
               </tr>
            </c:forEach>

         </tbody>
      </table>
   </div>


<%-- 
   <!-- 페이징부분 -->

   <div id="plist">
      <p class="paging">
         <c:set var="pb" value="${requestScope.vo.pagingBean}"></c:set>
         <c:if test="${pb.previousPageGroup}">
            <a href="messageReportList.do?pageNo=${pb.startPageOfPageGroup-1}">◀&nbsp;
            </a>
         </c:if>


         <c:forEach var="i" begin="${pb.startPageOfPageGroup}"
            end="${pb.endPageOfPageGroup}">
            <c:choose>
               <c:when test="${pb.nowPage!=i}">
                  <a href="messageReportList.do?pageNo=${i}">${i}</a>
               </c:when>
               <c:otherwise>
   ${i}
   </c:otherwise>
            </c:choose>
   &nbsp;
   </c:forEach>
         <c:if test="${pb.nextPageGroup}">
            <a href="messageReportList.do?pageNo=${pb.endPageOfPageGroup+1}">▶</a>
         </c:if>
      </p>
      <br> <br>
   </div>
   <!-- 페이징부분  끝--> --%>
 




<nav>
      <ul class="pager">
         <li class="disabled"><a href="#" aria-label="Previous"><span
               aria-hidden="true">&laquo;</span></a></li>
         
         
         <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
      
      
      </ul>
   </nav>


</div>

<!-- 이 아래로는 푸터 -->
<jsp:include page="layout/footer.jsp" />