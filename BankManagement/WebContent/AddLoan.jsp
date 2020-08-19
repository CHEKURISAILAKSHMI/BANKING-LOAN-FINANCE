<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/b99e675b6e.js"></script><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Welcome</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>

<style>

/* sign in FORM */
#logreg-forms{
    width:550px;
    margin:10vh auto;
    background-color:#f3f3f3;
    box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  transition: all 0.3s cubic-bezier(.25,.8,.25,1);
}
#logreg-forms form {
    width: 60%;
    max-width: 410px;
    padding: 15px;
    margin: auto;
}
#logreg-forms .form-control {
    position: relative;
    box-sizing: border-box;
    height: auto;
    padding: 10px;
    font-size: 16px;
}
#logreg-forms .form-control:focus { z-index: 2; }
#logreg-forms .form-signin input[type="email"] {
    margin-bottom: -1px;
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
}
#logreg-forms .form-signin input[type="password"] {
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}
</style>
</head>
<body>
<jsp:include page="Home.jsp"></jsp:include>
<div id="logreg-forms">
         <form id="Form"  action="./AddLoanServlet" method="post">
            <font color="red"><h1 class="h3 mb-3 font-weight-normal" style="text-align: center">ADD A NEW GOLD LOAN</h1></font>
           
            <input type="text" name="Name" class="form-control" placeholder="Enter the Loan Name" required="" autofocus="">
            <input type="text" name="LoanperGram" class="form-control" placeholder="Enter the Loan per gram" required="">
            <input type="text" name="Eligibleage" class="form-control" placeholder="Enter the Eligible age" required="" autofocus="">
             <input type="text" name="MaxLoan" class="form-control" placeholder="Enter the Maximum Loan" required="" autofocus="">
              <input type="text" name="Interest"  class="form-control" placeholder="Enter the Interest per Gram" required="" autofocus="">
              <input type="text" name="PurityofGold" class="form-control" placeholder="Enter the purity of Gold" required="" autofocus="">
               <input type="text" name="TypeofGold"  class="form-control" placeholder="Enter the type of Gold" required="" autofocus="">
                <input type="text" name="Documents" class="form-control" placeholder="Enter the documents required" required="" autofocus="">
            
            <button class="btn btn-success btn-block" type="submit" id="addLoan" name="addLoan">ADD GOLD LOAN</button>
            <a href="AdminHome.jsp" id="back">BACK TO HOME</a>
            <hr>
            </form>
            </div>
</body>
</html>