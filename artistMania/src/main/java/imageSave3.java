import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Base64;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



@WebServlet("/imageSave3")
@MultipartConfig(maxFileSize=16177216)
public class imageSave3 extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		HttpSession ss = request.getSession(false);
		
		if(ss != null)
		{
		
		String id3 = request.getParameter("id");
		int id4 = Integer.parseInt(id3);
		String name = request.getParameter("p_name");
		String price = request.getParameter("p_price");
		String description = request.getParameter("p_des");
		String image = request.getParameter("p_image");
		String email = request.getParameter("email");
		
		String base64ImageData = image.split(",")[1];
		 byte[] imageData = Base64.getDecoder().decode(base64ImageData);
		 InputStream io = new ByteArrayInputStream(imageData);
		
		
		int r = 0;
		Connection con = null;
		
			try {
				
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisthub","root","");
				
				PreparedStatement ps = con.prepareStatement("insert into wishlist(p_name,p_price,p_des,p_image,email,id) values(?,?,?,?,?,?)");
				
				ps.setString(1, name);
				ps.setString(2, price);				
				ps.setString(3, description);
				ps.setBlob(4,io);
				ps.setString(5,email);
				ps.setInt(6,id4);
				
				r = ps.executeUpdate();
			
				if(r>0)
				{
					System.out.println("done");
					response.sendRedirect("wishlist.jsp");
				}
				else	
				{
					System.out.println("error");
				}
				
				
			
			}
			catch (Exception e)
			{
				
				System.out.println(e);
			}
		}
		
		
		
		
	}

}