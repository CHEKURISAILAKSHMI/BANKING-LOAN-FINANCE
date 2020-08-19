import java.io.IOException;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class UserChngPswdServlet
 */
@SuppressWarnings("unused")
@WebServlet("/UserChngPswdServlet")
public class UserChngPswdServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String DB_CONNECTION_URL = "jdbc:mysql://localhost:3306/project";
	String DB_USERNAME = "root";
	String DB_PASSWORD = "sai@saranya";
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
		String email=request.getParameter("email");
        String oldpwd=request.getParameter("oldpassword");
        String newpwd=request.getParameter("newpassword");
        String cpswd=request.getParameter("conpassword");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			 Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "sai@saranya");			
			 PreparedStatement ps = c.prepareStatement("update RegisterUser set Password= ? where Email=? and Password= ?");

                   
                        ps.setString(1,newpwd);
                        ps.setString(2,email);
                        ps.setString(3,oldpwd);
                        int i= ps.executeUpdate();

                     if(i>0)

                     {
                    	 response.sendRedirect("Home.jsp");
                     }
                     else {
                    	 response.sendRedirect("UserChngPswd.jsp");
                     }
		}
    catch(Exception e)

    {
    	e.getMessage();
    }

    }

   }

