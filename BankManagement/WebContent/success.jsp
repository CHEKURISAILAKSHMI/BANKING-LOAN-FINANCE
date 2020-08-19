<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
 
 String email=(String)request.getParameter("email");
 try
 {
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "sai@saranya");

 PreparedStatement ps = conn.prepareStatement("select Email from project.RegisterUser where Email=?");
 ps.setString(1, email);
 

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
 %>