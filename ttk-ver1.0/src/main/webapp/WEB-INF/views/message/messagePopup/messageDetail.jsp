<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
	$(document).ready(function() {
		$('#msgmodal').modal('show');
	});
</script>

<%-- 메세지디테일화면
<table>
<tr>
<td>sender(img)</td>   <td>${requestScope.messageVO.memberVO.profileimg}</td>
<td>발신자</td>    <td>${requestScope.messageVO.sender}</td>
<td>내용</td>    <td>${requestScope.messageVO.messageContent}</td>
 <td>날짜</td>    <td>${requestScope.messageVO.messageDate}</td>
<td>답장버튼</td><td>삭제버틴</td>
</tr>
</table> --%>

<!-- 로그인모달 -->
	<div class="modal fade" id="msgmodal" tabindex="-1" role="dialog"
		aria-labelledby="Login" aria-hidden="true">
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="Login">Member Login</h4>
				</div>
				<div class="modal-body">
					<form method="post" action="login.do">
						<input type="hidden" name="command" value="login">
						<div class="form-group">
							<input type="text" class="form-control" id="email-modal"
								placeholder="ID" name="id">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" id="password-modal"
								placeholder="password" name="password">
						</div>

						<p class="text-center">
							<button class="btn btn-green animated fadeInUp" type="submit">
								<i class="fa fa-sign-in"></i> Log in
							</button>
						</p>
					</form>

					<p class="text-center text-muted">Not registered yet?</p>
					<p class="text-center text-muted">
						<a href="register.do"><strong>Register now</strong></a>! It is
						easy and done in 1&nbsp;minute and gives you access to special
						discounts and much more!
					</p>

				</div>
			</div>
		</div>
	</div>

	<!-- 로그인 모달 끝 -->


