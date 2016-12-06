<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="layout/header.jsp"></jsp:include>
<script type="text/javascript">
	alert("사진게시물 등록이 완료되었습니다.");
	/*12/5효민수정부분  */
	location.href = "getPictureList.do?id=${sessionScope.mvo.id }";
	/*12/5효민수정부분 끝 */
</script>
<jsp:include page="layout/footer.jsp"></jsp:include>