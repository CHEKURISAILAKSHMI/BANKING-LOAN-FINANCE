<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String code= request.getParameter("code");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "project";
String userid = "root";
String password = "sai@saranya";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
 <head>
    <meta charset="UTF-8">
    <title>Product List</title>
 </head>
 <body align="center">
 
    <jsp:include page="Home.jsp"></jsp:include>

 <div align="center" >
 <table border="1" color="red" align="center" cellpadding="30px" cellspacing="40px">
    <tr><td color="white"><a href="AdminLoanPage.jsp" >LIST OF ALL GOLD LOANS</a></td></tr>
    
 <tr><td><a href="AdminAppicationPage.jsp" >ALL GOLD LOANS APPLICATIONS</a></td></tr>
  <tr><td><a href="KNApplications.jsp" >LIST OF KN APPLICATIONS</a></td></tr>
 
   <table> 
 </div>
 </body>
</html>