import java.io.IOException; 

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/Actionresolved")
public class Actionresolved extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String fieldValue = request.getParameter("action");
        String id = request.getParameter("id");
        int id2 = Integer.parseInt(id);
        System.out.println("vivek");
        Connection conn = null;
        PreparedStatement stmt = null;

        try 
        {
            
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisthub","root","");

            String sql = "UPDATE contact SET action =? WHERE id = ?";
            stmt = conn.prepareStatement(sql);

          
            stmt.setString(1, fieldValue);  
            stmt.setInt(2, id2);          

            int rowsUpdated = stmt.executeUpdate();
            
            if (rowsUpdated > 0) 
            {
                response.getWriter().println("feedback resolved successfully!");
            }
            else 
            {
                response.getWriter().println("Failed to resolved");
            }

        }
        catch (Exception e) 
        {
			e.printStackTrace();
		}
    }
}
        