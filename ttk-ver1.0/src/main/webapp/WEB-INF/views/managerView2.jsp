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
      <li role="presentation" class="active"><a href="messageReportList.do">신고관리</a></li>
      <li role="presentation"><a href="managerView3.do">블랙리스트관리</a></li>
   </ul>
   <br>
   <div class="panel panel-default">
      <!-- Default panel contents -->
      <div class="panel-heading">신고관리<div class="btn-group">
                        <button class="btn btn-default btn-xs dropdown-toggle"
                           type="button" data-toggle="dropdown" aria-expanded="false">
                           신고목록<span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                           <li><a href="#">쪽지신고</a></li>
                           <li><a href="#">게시물신고</a></li>
                        </ul>
                     </div></div>
      <!-- Table -->
      <table class="table">
         <thead>
            <tr>
               <th>신고한 사람</th>
               <th>신고 받은 사람</th>
               <th>신고 받은 사유</th>
               <th>블랙리스트이동</th>
            </tr>
         </thead>
         <tbody>
            <c:forEach var="mr" items="${requestScope.vo.list}">
               <tr>
                  
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

<!-- 페이징부분 -->

   <c:set var="pb" value="${requestScope.vo.pagingBean}"></c:set>   
      
      <ul class="pager">
      
      <c:if test="${pb.previousPageGroup}">
      
         <li class="active"><a href="messageReportList.do?pageNo=${pb.startPageOfPageGroup-1}" ><span
               aria-hidden="true">◀</span></a></li> </c:if>

         <c:forEach var="i" begin="${pb.startPageOfPageGroup}" end="${pb.endPageOfPageGroup}">
            <c:choose>
               <c:when test="${pb.nowPage!=i}">
                  <li class="active"><a href="messageReportList.do?pageNo=${i}">${i}<span class="sr-only"></span></a></li>
               </c:when>
            <c:otherwise> <li class="disabled"><a href="messageReportList.do?pageNo=${i}">${i}<span class="sr-only">(current)</span></a></li></c:otherwise>
            </c:choose>               
         </c:forEach>      
               
               <c:if test="${pb.nextPageGroup}">
                  <li class="active"><a href="messageReportList.do?pageNo=${pb.endPageOfPageGroup+1}" ><span
               aria-hidden="true">▶</span></a></li>
               </c:if>         
         <!-- 페이징부분  끝-->
      </ul>
</div>

<!-- 이 아래로는 푸터 -->
<jsp:include page="layout/footer.jsp" />
