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
		<li role="presentation"><a href="managerView.do">회원관리</a></li>
		<li role="presentation"><a href="managerView2.do">신고관리</a></li>
		<li role="presentation" class="active"><a href="managerView3.do">블랙리스트관리</a></li>
	</ul>
	<br>
	<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading">블랙 리스트 관리</div>
		<!-- Table -->
		<table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>아이디</th>
					<th>이름</th>
					<th>신고사유</th>
					<th>블랙리스트삭제</th>

				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>java2</td>
					<td>영해형</td>
					<td>음란물 유포죄</td>
					<td>
						<div class="btn-group btn-group-xs" role="group"
							aria-label="Extra-small button group">
							<button type="button" class="btn btn-default">블랙리스트풀기</button>
						</div>
					</td>

				</tr>
				<tr>
					<td>2</td>
					<td>Table cell</td>
					<td>Table cell</td>
					<td>Table cell</td>
					<td>Table cell</td>
				</tr>
				<tr>
					<td>3</td>
					<td>Table cell</td>
					<td>Table cell</td>
					<td>Table cell</td>
					<td>Table cell</td>
				</tr>
			</tbody>
		</table>
	</div>
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

