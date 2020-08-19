<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

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
    <title>APPLICATIONS FOR KN</title>
 </head>
 <style>
 table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 75%;
  align:right;
}

td, th {
  border: 1px solid #dddddd;
  text-align:center;
  padding: 5 px;
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

 <br><br><br>
    <font color="Green"><h3>APPLICATIONS FOR KN</h3></font>
    
    <br><br><br>
     
 
    <p style="color: red;">${errorString}</p>
 
    <table border="1" align="right">
       <tr>
          
          <th>USER NAME</th>
          <th>EMAIL</th>
         <th>AADHAR NUMBER</th>
         <th>KN NUMBER</th>
         <th>STATUS</th>
       
           <th>SEND KN</th>
           <th>STATUS</th>
       </tr>
       
       <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from KN";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
      
      
      <tr>
<td><%=resultSet.getString("Username") %></td>
<td><%=resultSet.getString("Email") %></td>
<td><%=resultSet.getString("AadharNumber") %></td>
<td><%=resultSet.getString("KN") %></td>
<td><%=resultSet.getString("Status") %></td>


             <td>
                <a href="./knVerify?Email=<%=resultSet.getString("Email") %>">Send EMAIL</a>
                
             </td>
             <td>
                <a href="updateKN.jsp">UPDATE STATUS</a>
                
             </td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
	System.out.println(e);
e.printStackTrace();
}
%>

    </table>

 
</body>
</html>