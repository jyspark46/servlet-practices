<%@page import="jstlel.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	UserVo vo4 = new UserVo();
	vo4.setNo(4L);
	vo4.setName("둘리4");
	pageContext.setAttribute("vo", vo4);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>scope (객체의 존속 범위)</h4>
	${vo.no } <br>
	${vo.name } <br>
	
	<br> == request scope == <br>
	${requestScope.vo.no } <br>
	${requestScope.vo.name } <br>
	
	<br> == sessioin scope == <br>
	${sessionScope.vo.no } <br>
	${sessionScope.vo.name } <br>
	
	<br> == application scope == <br>
	${applicationScope.vo.no } <br>
	${applicationScope.vo.name } <br>
</body>
</html>