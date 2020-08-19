import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserVerifyServlet
 */
@WebServlet("/UserVerifyServlet")
public class UserVerifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
    	
    	response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //fetch form value
          
           String email = request.getParameter("email");
         
      		//create instance object of the SendEmail Class
           SendEmail sm = new SendEmail();
      		//get the 6-digit code
           String code = sm.getRandom();
           
      		//craete new user using all information
           User user = new User(email,code);
           
           //call the send email method
           boolean test = sm.sendEmail(user);
           
      		//check if the email send successfully
           if(test){
               HttpSession session  = request.getSession();
               session.setAttribute("authcode", user);
               
               response.sendRedirect("verify.jsp");
           }else{
      		  out.println("Failed to send verification email");
      		  out.println(code);
      	   }
           
        }
    }

   
	}
