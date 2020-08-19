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
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class VerifyCode
 */
@WebServlet("/VerifyCode")
public class VerifyCode extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html;charset=UTF-8");
	        try (PrintWriter out = response.getWriter()) {
	            
	            HttpSession session = request.getSession();
	            User user= (User) session.getAttribute("authcode");
	            String code = request.getParameter("authcode");
	            String email=user.getEmail();
	            if(code.equals(user.getCode())){
	            	 response.sendRedirect("UserChangepswd.jsp");
	            }
	            else{
	                out.println("Incorrect verification code");
	            }
	}
	        catch(Exception e) {
	        	System.out.println(e);
	        }

	}
}
