
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
        .product-grid  h3
        {
        	font:  20px Arial, Helvetica, sans-serif;
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
        // Your Java code to retrieve product data from the database goes here
        // For demonstration purposes, let's assume you have a list of Product objects
        
        List<ProductModel> list = Dao.viewproducts();// Method to retrieve product data from the database
        
        // Iterate over the product list and generate HTML for each product
         for (ProductModel m : list) 
        {
        %>
        <div class="product">
            <img src="data:image/jpeg;base64,<%=m.getP_image()%>" width="150px" height="200px" />
            <h3><%= m.getP_name() %></h3>
            <p>Price: <%= m.getP_price() %></p>
            
           
           
           <%
           		if(session.getAttribute("project")!=null)
           		{
           			
           		
           %>
           		  
         <form action="addtowishlist.jsp">
            	<input type="hidden" name="id" value="<%=m.getId()%>">
            	<input type="submit" style="background:#7099CC;" class="swd-button" value="Wishlist">
            </form>
           <!--   <a class="swd-button" href="addtowishlist.jsp">Add to Wishlist</a> -->
            <!--  <a class="swd-button" href="addtocart.jsp">Add to Cart</a> -->
		
		
		  <form action="addtocart.jsp">
            	<input type="hidden" name="id" value="<%=m.getId()%>">
            	<input type="submit" style="background:#86E496;" class="swd-button" value="Add to Cart">
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