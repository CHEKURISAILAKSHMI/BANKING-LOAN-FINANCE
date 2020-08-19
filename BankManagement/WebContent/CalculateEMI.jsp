<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
#EMICapt{

  border-radius: 10px;
  background-color:antiquewhite;
  color: rgb(236, 17, 17);
  padding: 20px;
  text-align: center
}

</style>
</head>
<body align="center">
<jsp:include page="Home.jsp"></jsp:include>

<div id="logreg-forms">
    <form name="loan-form" onsubmit="return calculator()">
            <font color="red"><h1 class="h3 mb-3 font-weight-normal" style="text-align: center">ADMIN SIGN IN</h1></font>
           
		<input type=number id="amount" style="border-radius:5px" placeholder="Enter the Loan amount"><br><br>      
		<input type="number" name="apr" id="apr" style="border-radius:5px"  placeholder="Enter the Interest percentage"><br><br> 
        <input type=number name="tenure" id="tenure" style="border-radius:5px"  placeholder="Enter no of years"><br><br>

            <button class="btn btn-success btn-block" type="submit" id="login" name="login">CALCULATE</button>
            <a href="./LoanList.jsp" id="back">BACK</a>
            <hr>
            </form>
			<P id="EMICapt"></P>
    <script>function calculator() {
        const loanstruct = {
        loanAmount:document.getElementById("amount").value,
        annualInterestrate:document.getElementById("apr").value,
        loanDuration:document.getElementById("tenure").value
        };
      // Passing the object as the arguement. The function also returns an object that includes both EMI & Total
      console.log(loanstruct)
      function EMIVal2(loan){
          interest = loan.annualInterestrate/1200;
          let term = loan.loanDuration*12;
          let top = Math.pow((1+interest),term);
          let bottom = top - 1;
          let ratio = top/bottom;
          EMI = loan.loanAmount * interest * ratio;
          Total = EMI*term;
          const EMIObj = {
            EMI:EMI.toFixed(0),
            Total:Total.toFixed(0)
            };
          return EMIObj
      }
      console.log(EMIVal2(loanstruct));
      document.getElementById("EMICapt").innerHTML='<P><b>EMI: Rs. </b>' + EMIVal2(loanstruct).EMI + '<br>' + '<b> Total: Rs. </b>' + EMIVal2(loanstruct).Total +'</P>';

      return false
    }
	</script>
  </div>
  
  
 </body>
 </html>