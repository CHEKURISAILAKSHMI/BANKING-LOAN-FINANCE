<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import ="javax.servlet.ServletException"%>
<%@page import ="javax.servlet.annotation.WebServlet"%>
<%@page import ="javax.servlet.http.HttpServlet"%>
<%@page import ="javax.servlet.http.HttpServletRequest"%>
<%@page import ="javax.servlet.http.HttpServletResponse"%>
<%@page import ="javax.servlet.http.HttpSession"%>
<%

String Email=(String)request.getParameter("Email");
try{
 
		//create instance object of the SendEmail Class
   SendEmail2 sm = new SendEmail2();
		//get the 6-digit code
   String code = sm.getRandom();
   
		//craete new user using all information
   UserKN user = new UserKN(Email,code);
   
   //call the send email method
   boolean test = sm.sendEmail2(user);
   
		//check if the email send successfully
   if(test){
       HttpSession session2  = request.getSession();
       session2.setAttribute("authcode", user);
       out.println("MAIL SENT");
   }else{
		  out.println("Failed to send verification email");
		  out.println(code);
	   }
}
catch (Exception e){
	System.out.println(e);
}
  
%>

