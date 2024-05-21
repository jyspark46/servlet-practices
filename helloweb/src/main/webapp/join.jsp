<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");

	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String birthYear = request.getParameter("birthYear");
	String gender = request.getParameter("gender");
	String profile = request.getParameter("profile");
	// multi return --> 살짝 형식이 다름 !!
	String[] hobbies = request.getParameterValues("hobby");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=email %>
	<br>
	
	<%=password %>
	<br>
	
	<%=birthYear %>
	<br>
	
	<%=gender %>
	<br>
	
	<p>
		<%=profile %>
	</p>
	
	<%
		for(String hobby : hobbies) {
	%>
		<span><%=hobby %></span>
	<%
		}
	%>
</body>
</html>