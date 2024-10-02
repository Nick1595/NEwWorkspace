<%@page import="com.model.WishlistModel"%>
<%@page import="com.dao.Dao"%>
<%@page import="com.model.ProductModel"%>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Product Grid View</title>

    <style>
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            grid-gap: 20px;
            padding: 20px;
        }
        .product {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }
        .product img {
            max-width: 100px;
            max-height: 100px;
        }
        .swd-button 
			{
				background: #f2db18;
				border: 1px solid white;
				border-radius: 5px;
				color: white;
				display: inline-block;
				font: bold 12px Arial, Helvetica, sans-serif;
				padding: 10px 15px;
				text-decoration: none;
				text-transform: uppercase;
				margin-top: 15px;
			}
        
    </style>
</head>
<body>

	<jsp:include page="header.jsp"/>    
	
    <div class="product-grid">
        <% 
        
        List<WishlistModel> list = Dao.getwishlistbyemail(session.getAttribute("email").toString());// Method to retrieve product data from the database
        
         for (WishlistModel m : list) 
        {
        %>
        <div class="product">
          
             	<a  style="display:flex; float:right;"  href="delete.jsp?id=<%=m.getId()%>">
								<img src="img/delete.jpg" width="20px" height="20px"/>
				</a>
             
             
             
             <img src="data:image/jpeg;base64,<%=m.getP_image()%>" width="150px" height="200px" />
             <h3><%= m.getP_name() %></h3>
              <p>Price: <%= m.getP_price() %></p>
            
           
           
           <%
           		if(session.getAttribute("project")!=null)
           		{
           			
           		
           %>
           	
         <form action="addtocart.jsp">
         			
            	<input type="hidden" name="id" value="<%=m.getId()%>">
            	<input type="submit" class="swd-button" value="Cart">
            </form>
           <!--   <a class="swd-button" href="addtowishlist.jsp">Add to Wishlist</a> -->
             	
             <form action="addtocart.jsp">
            <input type="hidden" name="id" value="<%=m.getId()%>">
            	<input type="submit" class="swd-button" value="Add to Cart">
            	   </form>
		
          <%
          
           		}
          %>
        
          
       
        </div>
        <% } %>
    </div>
    
    
    	<jsp:include page="footer.jsp"/>    
    
</body>
</html>