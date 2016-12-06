<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%-- <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/messageCss/home.css"> --%>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/messageCss/list.css">
<title>Insert title here</title>
</head>
<body>
	<table class="layout" >
		<tr>
			<td class="left"><jsp:include page="messageLeft.jsp"></jsp:include></td>
			<td class="main">
				<div class="container">
					<div class="row">
						<section class="content">
						<h3>받은쪽지함</h3>
						<div class="col-md-8 col-md-offset-2">
							<div class="panel panel-default">
								<div class="panel-body">
									<!-- <div class="pull-right">
										<div class="btn-group">
								<button type="button" class="btn btn-success btn-filter"
									data-target="pagado">보낸쪽지함</button>
								<button type="button" class="btn btn-warning btn-filter"
									data-target="pendiente">받은쪽지함</button>
								<button type="button" class="btn btn-danger btn-filter"
									data-target="cancelado">Cancelado</button>
								<button type="button" class="btn btn-default btn-filter"
									data-target="all">Todos</button>
							</div>
									</div> -->

									<!-- 쪽지 내용시작 -->
									<div class="table-container">
										<table class="table table-filter">
											<tbody>
												<c:forEach var="msvo" items="${requestScope.vo.list}">
													<tr data-status="pendiente">
														<td>
															<div class="ckbox">
																<input type="checkbox" id="checkbox3"> <label
																	for="checkbox3"></label>
															</div>
														</td>
														<td>
															<!-- <a href="javascript:;" class="star">
												<i class="glyphicon glyphicon-star"></i>
											</a> --> ${msvo.messageVO.messageState}
														</td>

														<td>
															<div class="media">
																<table>
																	<tr>
																		<td><a href="#" class="pull-left"> <img
																				src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg"
																				class="media-photo">
																		</a></td>

																		<div class="media-body">
																			<td><h4 class="title">
																					${msvo.messageVO.sender}</h4></td>
																			<td><p class="summary">
																					${msvo.messageVO.messageContent}</p></td>
																			<td><span class="media-meta pull-right">${msvo.messageVO.messageDate}</span></td>
																			<!-- <td><span class="pull-right pendiente">(Pendiente)</span></td> -->

																		</div>
																	</tr>
																</table>
															</div>
														</td>

														<td>삭제버튼</td>
													</tr>
												</c:forEach>

			
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						</section>
					</div>
				</div> <!-- 페이징 -->
				<p class="paging">
					<c:set var="pb" value="${requestScope.vo.pagingBean}"></c:set>
					<c:if test="${pb.previousPageGroup}">
						<a href="messageList.do?pageNo=${pb.startPageOfPageGroup-1}">◀&nbsp;
						</a>
					</c:if>
					<c:forEach var="i" begin="${pb.startPageOfPageGroup}"
						end="${pb.endPageOfPageGroup}">
						<c:choose>
							<c:when test="${pb.nowPage!=i}">
								<a href="messageList.do?pageNo=${i}">${i}</a>
							</c:when>
							<c:otherwise>
	${i}
	</c:otherwise>
						</c:choose>
	&nbsp;
	</c:forEach>
					<c:if test="${pb.nextPageGroup}">
						<a href="messageList.do?pageNo=${pb.endPageOfPageGroup+1}">▶</a>
					</c:if>
				</p>

			</td>
		<tr>
	</table>


	<!-- js -->
	<script>
		$(document).ready(
				function() {
					$('.star').on('click', function() {
						$(this).toggleClass('star-checked');
					});
					$('.ckbox label').on('click', function() {
						$(this).parents('tr').toggleClass('selected');
					});
					$('.btn-filter').on(
							'click',
							function() {
								var $target = $(this).data('target');
								if ($target != 'all') {
									$('.table tr').css('display', 'none');
									$(
											'.table tr[data-status="' + $target
													+ '"]').fadeIn('slow');
								} else {
									$('.table tr').css('display', 'none')
											.fadeIn('slow');
								}
							});

				});
	</script>
</body>
</html>


									<%-- <table>
<c:forEach var="msvo" items="${requestScope.vo.list}">	
 
  <tr>
  <td> ${msvo.messageVO.messageState} 이걸로 읽음 유무확인</td> <td>${msvo.messageVO.sender}</td>  <td>${msvo.messageVO.messageDate}</td>   <td>삭제버튼</td> <td> <a href="messageDetail.do?messageNo=${msvo.messageVO.messageNo}" >  ${msvo.messageVO.messageContent} </a>  </td>     
  </tr>
																									
</c:forEach>
</table> --%>