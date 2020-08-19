<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="UTF-8">
    <title>GOLD LOANS LIST</title>
 </head>
 <style>
 table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 85%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color:white;
}
tr:nth-child(odd) {
  background-color:skyblue;
}
 </style>
 <body align="center">
 
    <jsp:include page="Home.jsp"></jsp:include>
<br>
 
    <font color="red"><h3>GOLD LOANS AVAILABLE</h3></font><br><br>
    
    <p style="color: red;">${errorString}</p>
 
    <table border="1" align="right">
       <tr>
          <th>NAME</th>
          <th>Maximum Loan Per Gram</th>
          <th>Eligible Age</th>
         <th>Maximum Loan</th>
         <th>Interest Rate</th>
         <th>Purity Of Gold</th>
          <th>Type of Gold</th>
          <th>Documents Required</th>
           <th>Apply</th>
            <th>Claculate EMI</th>
       </tr>
       
       <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from Goldloans";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
      
      
      <tr>
<td><%=resultSet.getString("Name") %></td>
<td><%=resultSet.getString("LoanperGram") %></td>
<td><%=resultSet.getString("EligibleAge") %></td>
<td><%=resultSet.getString("MaxLoan") %></td>
<td><%=resultSet.getString("Interest") %></td>
<td><%=resultSet.getString("PurityofGold") %></td>
<td><%=resultSet.getString("TypeofGold") %></td>
<td><%=resultSet.getString("Documents") %></td>

             <td>
                <a href="./ApplyLoan.jsp">Apply Now</a>
                
             </td>
             <td>
                <a href="CalculateEMI.jsp">Calculate Here.</a>
                
             </td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

    </table>

 
</body>
</html>