<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOG OUT</title>
</head>
<body>
<%
    
	    response.setHeader("cache-control", "no-cache");
	    response.setHeader("cache-control", "no-store");
	    response.setHeader("pragma", "no-cache");
	    response.setDateHeader("Expires", 0);
    
    %>

	<%
			session.removeAttribute("project");
			session.invalidate();
			response.sendRedirect("index.jsp");
	
	%>
</body>
</html>