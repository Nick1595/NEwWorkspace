<%@page import="com.dao.Dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		int id2 = Integer.parseInt(id);
		Dao.delete(id2);
		response.sendRedirect("wishlist.jsp");
		%>
		
	
</body>
</html>