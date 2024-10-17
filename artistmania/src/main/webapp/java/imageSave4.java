import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Base64;
import java.util.List;

import com.dao.Dao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



@WebServlet("/imageSave4")
@MultipartConfig(maxFileSize=16177216)
public class imageSave4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession ss = request.getSession(false);
		
		if(ss != null)
		{
		
		String usl = "jdbc:mysql://localhost:3306/artisthub";
		String user = "root";
		String pass = "";
		
		/*
		 * Part p = request.getPart("p_image"); System.out.println(p);
		 */
		//Part p = request.getPart("p_image");
		
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
				con = DriverManager.getConnection(usl, user, pass);
				
				PreparedStatement ps = con.prepareStatement("insert into cart(p_name,p_price,p_des,p_image,email) values(?,?,?,?,?)");
				
				//InputStream io = new ByteArrayInputStream(image.getBytes(StandardCharsets.UTF_8));

				//InputStream io = m.getP_image();
				
				ps.setString(1, name);
				ps.setString(2, price);				
				ps.setString(3, description);
				ps.setBlob(4,io);
				ps.setString(5,email);
				
				
				r = ps.executeUpdate();
			
				if(r>0)
				{
					System.out.println("done");
					
					Dao.deletefromwishlist(id4);
					
					Thread.sleep(1000);
					
					response.sendRedirect("cart.jsp");
				}
				else				{
				System.out.println("error");
				}
				
				
			
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println(e);
			}
		}
		
		
		
		
	}

}