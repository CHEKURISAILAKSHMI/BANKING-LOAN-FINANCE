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
 * Servlet implementation class AddLoanServlet
 */
@WebServlet("/AddLoanServlet")
public class AddLoanServlet extends HttpServlet {
	
	/**
	 * 
	 */
		private static final long serialVersionUID = 1L;
		String DB_CONNECTION_URL = "jdbc:mysql://localhost:3306/project";
		String DB_USERNAME = "root";
		String DB_PASSWORD = "sai@saranya";
	
		public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
		 String Name = request.getParameter("Name");
         String LoanperGram = request.getParameter("LoanperGram");
         String Eligibleage = request.getParameter("Eligibleage");
         String MaxLoan= request.getParameter("MaxLoan");
         String Interest= request.getParameter("Interest");
         String PurityofGold= request.getParameter("PurityofGold");
         String TypeofGold= request.getParameter("TypeofGold");
         String Documents= request.getParameter("Documents");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(DB_CONNECTION_URL, DB_USERNAME, DB_PASSWORD);
			
			PreparedStatement ps = con.prepareStatement("insert into Goldloans(SINO,Name,LoanperGram,Eligibleage,MaxLoan,Interest,PurityofGold,TypeofGold,Documents) values(Null,?,?,?,?,?,?,?,?)");
			ps.setString(1,Name);
			ps.setString(2,LoanperGram);
			ps.setString(3,Eligibleage);
			ps.setString(4,MaxLoan);
			ps.setString(5,Interest);
			ps.setString(6,PurityofGold);
			ps.setString(7,TypeofGold);
			ps.setString(8,Documents);
			int result = ps.executeUpdate();
			
			if(result == 1){
				response.sendRedirect("AdminLoanPage.jsp");
			}
			else{
				response.sendRedirect("AddLoan.jsp");
			}
		} catch (Exception E) { 
	           System.out.println(E); 
	           
	                }
	}
}
