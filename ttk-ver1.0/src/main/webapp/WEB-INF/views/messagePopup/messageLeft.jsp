<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<p>
${sessionScope.mvo.profileimg}<br>
${sessionScope.mvo.id}<br>

<a href="messageList.do">받은쪽지함 </a><br>
<a href="messageSendList.do">보낸쪽지함 </a><br>
</p>



<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.ArrayList,model.ItemVO,model.MemberVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/home.css">
<title>상품 목록</title>
</head>
<body>
<table class="layout">
	<tr>
		<td colspan="2" class="header">
			<jsp:include page="layout/header.jsp"></jsp:include>
		</td>
	</tr>
	<tr>
		<td class="left">
			<jsp:include page="layout/left.jsp"></jsp:include>
		</td>
		
		<td class="main">
			<% ArrayList<ItemVO>list=
		(ArrayList)request.getAttribute("list"); %> 
		<table class=inner>
			<thead>
				<tr>
					<th>번호</th><th>제품명</th><th>제조사</th>
				</tr>
			</thead>
			<tbody>				
					<% for(ItemVO ivo:list){ %>
					<tr>
					<td>						
						<a href="DispatcherServlet?command=itemdetail&no=<%=ivo.getItemNo() %>">
						<%=ivo.getItemNo() %>
						</a>
					</td>
					<td><%=ivo.getName() %></td>
					<td><%=ivo.getMaker() %></td>
					</tr>
					<%} %>				
			</tbody>
		</table>
		</td>
	</tr>
	<tr>
		<td colspan="2" class="footer"><jsp:include page="layout/footer.jsp"></jsp:include>
		</td>
	</tr>
</table>

</body>
</html> --%>