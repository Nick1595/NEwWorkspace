<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fontawesome/css/all.min.css">

    <link rel="stylesheet" href="css/templatemo-style.css">
</head>
<body>

       
     <%
               			if(session.getAttribute("project")!=null)
               			{
               				
               			
               		%>
               		<div style="justify-content:center; display:flex; width:100%;  background-color:#7099CC;">
                   
                      	<p style="margin:10px; color:black; border-bottom:3px solid green;"> <%=session.getAttribute("name") %></p> 
                        <p style="margin:10px; color:black; "> <%=session.getAttribute("email") %></p>
                        <p style="margin:10px; color:black;"><%=session.getAttribute("num") %></p>
                     </div>
                     
                     
                     <%
               			}
                     %> 
<nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <i class="fas fa-film mr-2"></i>
                Artist Hub
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link nav-link-3" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-3" href="product.jsp">product</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-4" href="contact.jsp">Contact</a>
                </li>                
                			<%
                              	if(session.getAttribute("project")!=null)
                              	{
                              		
                              	
                             %>
                              
                              <li class="nav-item">
                                 <a class="nav-link nav-link-2" href="wishlist.jsp">Wishlist</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link nav-link-2" href="cart.jsp">Cart</a>
                              </li>
                              
                              <%
                              	}
                              %>
            
           			 <%
                       		if(session.getAttribute("project")!=null)
                       		{
                       			
                       %>	
                      
                       <li class="nav-item">
                    	<a class="nav-link nav-link-2" href="logout.jsp">Log out</a>
                	</li>
                       	
                       	<% 		
                       		}
                       		else
                       		{
                       			
                       		
                       %>
                        <li class="nav-item">
                    		<a class="nav-link nav-link-2" href="signin.jsp">Sign in</a>
               		 </li>
                    
                    	<%
                       		}
                    	%>
            </ul>
            </div>
        </div>
    </nav>
		
</body>
</html>