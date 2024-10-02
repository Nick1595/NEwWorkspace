<%@page import="com.dao.Dao"%>
<%@page import="com.model.SignupModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="m" class="com.model.SignupModel"></jsp:useBean>
    <jsp:setProperty property="*" name="m"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 		
 		

			<%
				SignupModel m2 = Dao.login(m);
				
			if(m2!=null)
			{
				session.setAttribute("project",true);
				session.setAttribute("email",m2.getEmail());
				session.setAttribute("name",m2.getName());
				session.setAttribute("num",m2.getPhone());
			
				response.sendRedirect("dashboard.jsp");
			}
			else
			{
				response.sendRedirect("signin.jsp");
			}
		%>
</body>
</html>