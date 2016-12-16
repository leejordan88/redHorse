<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="layout/header.jsp" />
<!-- <span class="glyphicon glyphicon-search" aria-hidden="true"></span> -->
<!-- 이 위로는 헤더 -->
<div class="container" style="margin-top: 6%">
	<form class="navbar-form navbar-right" role="search">
		<div class="form-group">
			<input type="text" class="form-control" placeholder="회원검색">
		</div>
		<button type="submit" class="btn btn-default">검색</button>
	</form>
	<ul class="nav nav-tabs">
		<li role="presentation" class="active"><a href="managerView.do">회원관리</a></li>
		<li role="presentation"><a href="messageReportList.do">신고관리</a></li>
		<li role="presentation"><a href="managerView3.do">블랙리스트관리</a></li>
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
					<th>나이</th>
					<th>신고받은 횟수</th>
					<th>전체쪽지수</th>
					<th>여행등록수</th>
					<th>사진첩 게시글수</th>
					<th>
							<div class="btn-group">
								<button class="btn btn-default btn-xs dropdown-toggle"
									type="button" data-toggle="dropdown" aria-expanded="false">
									탈퇴 유/무<span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">회원</a></li>
									<li><a href="#">탈퇴회원</a></li>
								</ul>
							</div>
							</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${requestScope.rList.reporterList}" var="reporterList" varStatus="status">
				<tr>
					<td>${status.count}</td>
					<td>${reporterList.id}</td>
					<td>${reporterList.name}</td>
					<td>${reporterList.tel}</td>
					<td>${reporterList.age}</td>
					<td>${reporterList.reportCount}</td>
					<td>${reporterList.messageCount}</td>
					<td>${reporterList.travelingCount}</td>
					<td>${reporterList.pictureCount}</td>
					<td><c:if test="${reporterList.enabled == 1}">회원</c:if><c:if test="${reporterList.enabled == 0}">탈퇴회원</c:if></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<nav>
	
	
	
<!-- 페이징부분 -->

	<c:set var="pb" value="${requestScope.rList.pagingBean}"></c:set>	
		
		<ul class="pager">
		
		<c:if test="${pb.previousPageGroup}">
		
			<li class="active"><a href="managerView.do?pageNo=${pb.startPageOfPageGroup-1}" ><span
					aria-hidden="true">◀</span></a></li> </c:if>

			<c:forEach var="i" begin="${pb.startPageOfPageGroup}" end="${pb.endPageOfPageGroup}">
				<c:choose>
					<c:when test="${pb.nowPage!=i}">
						<li class="active"><a href="managerView.do?pageNo=${i}">${i}<span class="sr-only"></span></a></li>
					</c:when>
				<c:otherwise> <li class="disabled"><a href="managerView.do?pageNo=${i}">${i}<span class="sr-only">(current)</span></a></li></c:otherwise>
				</c:choose>					
			</c:forEach>		
					
					<c:if test="${pb.nextPageGroup}">
						<li class="active"><a href="managerView.do?pageNo=${pb.endPageOfPageGroup+1}" ><span
					aria-hidden="true">▶</span></a></li>
					</c:if>			

			<!-- 페이징부분  끝-->
		</ul>
	</nav>
</div>

<!-- 이 아래로는 푸터 -->
<jsp:include page="layout/footer.jsp" />