

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserRegisterServlet
 */
@WebServlet("/UserRegisterServlet")
public class UserRegisterServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String DB_CONNECTION_URL = "jdbc:mysql://localhost:3306/project";
	String DB_USERNAME = "root";
	String DB_PASSWORD = "sai@saranya";
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
		 String username = request.getParameter("username");
         String age = request.getParameter("age");
         String email = request.getParameter("email");
         String city= request.getParameter("city");
         String phone= request.getParameter("phone");
         String password= request.getParameter("password");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(DB_CONNECTION_URL, DB_USERNAME, DB_PASSWORD);
			
			PreparedStatement ps = con.prepareStatement("insert into RegisterUser(SIno,username,age,email,city,phone,password) values(Null,?,?,?,?,?,?)");
			ps.setString(1, username);
			ps.setString(2, age);
			ps.setString(3, email);
			ps.setString(4,city);
			ps.setString(5,phone);
			ps.setString(6,password);
	
			int result = ps.executeUpdate();
			
			if(result == 1){
				response.sendRedirect("UserLogin.jsp");
			}
			else{
				response.sendRedirect("error.html");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}





 
