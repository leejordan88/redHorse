<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/asset/css/flatpickr.min.css">
<script src="${pageContext.request.contextPath}/resources/asset/js/flatpickr.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/flatpickr/dist/flatpickr.min.css">
<script src="https://unpkg.com/flatpickr"></script>
<title>Insert title here</title>

</head>
<body>
<input id="range" type="text" placeholder="Select date">
</body>

<script>
flatpickr("#range", {
    "mode": "range"
});
</script>
</html>