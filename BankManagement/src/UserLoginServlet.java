import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String un = request.getParameter("email");
        String pw = request.getParameter("password");
      
        try {
        	Class.forName("com.mysql.jdbc.Driver");
// loads driver
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "sai@saranya"); // gets a new connection

            PreparedStatement ps = c.prepareStatement("select Email,Password from project.RegisterUser where Email=? and Password=?");
            ps.setString(1, un);
            ps.setString(2, pw);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
            	 response.sendRedirect("Home.jsp");
            } 
            else {
            	 response.sendRedirect("UserLogin.jsp");
            }
           
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

}