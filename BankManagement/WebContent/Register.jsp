<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}

function validate()
{ 
     var username = document.regForm.username.value;
     var age = document.regForm.age.value;
     var email = document.regForm.email.value;
     var address = document.regForm.address.value;
     var phone = document.regForm.phone.value;
     var password = document.regForm.password.value;
     if (username==null || username=="")
     { 
     alert("User Name can't be blank"); 
     return false; 
     }
     else if (age==null || age<10)
     { 
     alert("Enter the valid age"); 
     return false; 
     }
     else if (email==null || email=="")
     { 
     alert("Email can't be blank"); 
     return false; 
     }
     else if (address==null || address=="")
     { 
     alert("Address can't be blank"); 
     return false; 
     }
     else if(password.length<6)
     { 
     alert("Password must be at least 6 characters long."); 
     return false; 
     } 
     else if (phone==null ||phone<1000000000)
     { 
     alert("Enter a valid phone number"); 
     return false; 
     } 
 } 

</script>
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

#logreg-forms .social-login{
    width:390px;
    margin:0 auto;
    margin-bottom: 14px;
}
#logreg-forms .social-btn{
    font-weight: 100;
    color:white;
    width:190px;
    font-size: 0.9rem;
}

#logreg-forms a{
    display: block;
    padding-top:10px;
    color:lightseagreen;
}

#logreg-form .lines{
    width:200px;
    border:1px solid red;
}


#logreg-forms button[type="submit"]{ margin-top:10px; }

#logreg-forms .facebook-btn{  background-color:#3C589C; }

#logreg-forms .google-btn{ background-color: #DF4B3B; }

#logreg-forms .form-reset, #logreg-forms .form-signup{ display: none; }

#logreg-forms .form-signup .social-btn{ width:210px; background:red;}

#logreg-forms .form-signup input { margin-bottom: 2px;}

.form-signup .social-login{
    width:210px !important;
    margin: 0 auto;
}

/* Mobile */

@media screen and (max-width:500px){
    #logreg-forms{
        width:300px;
    }
    
    #logreg-forms  .social-login{
        width:200px;
        margin:0 auto;
        margin-bottom: 10px;
    }
    #logreg-forms  .social-btn{
        font-size: 1.3rem;
        font-weight: 100;
        color:white;
        width:200px;
        height: 56px;
        
    }
    
	 .login-box{
 width:360px;
 position:absolute;
 top: 50%;
 left: 50%;
 transform:translate(-50%,-50%);
 background:black;
 height:380px;
 
 }
    #logreg-forms .social-btn:nth-child(1){
        margin-bottom: 5px;
		background-color:#3C589C;
    }
    #logreg-forms .social-btn span{
        display: none;
    }
    #logreg-forms  .facebook-btn:after{
        content:'Facebook';
		background-color:#3C589C;
    }
  
    #logreg-forms  .google-btn:after{
        content:'Google+';
		background-color:#3C589C;
    }
    
}
</style>

<title>Insert title here</title>
</head>
<body bgcolor="skyblue">
<jsp:include page="Home.jsp"></jsp:include>
         <div id="logreg-forms" bgcolor="skyblue">
         <form name="regForm"  action="./UserRegisterServlet" method="post" onsubmit="return validate()>
            <font color="red"><h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> <b>Sign Up</b></h1></font>
            
           
        
          <table>
          <tr>
    <td><i class="fa fa-user icon"></i>&nbsp;&nbsp;</td>
    <td> <input type="text" class="form-control" placeholder="Enter User name" name="username" id="username" required="" autofocus="">
    </td></tr>

<tr>
    <td><i class="fa fa-male" aria-hidden="true"></i></td><td><input type="text" name="age" id="age" class="form-control" placeholder="Enter your Age" required="" autofocus="" >
    </td></tr>

<tr>
    <td><i class="fa fa-envelope" aria-hidden="true"></i></td><td><input type="email" name="email" id="email" class="form-control" placeholder="Enter your Email" required="" autofocus="" >
</td></tr>
<tr>
    <td><i class="fa fa-map-marker" aria-hidden="true"></i></td><td><input type="text" name="city" id="city" class="form-control" placeholder="Enter your City" required="" autofocus="" >
</td></tr>
<tr>
    <td><i class="fa fa-phone-square" aria-hidden="true"></i></td><td><input type="tel" name="phone" id="phone" pattern="[0-9]{10}" placeholder="Enter your Contact Number" class="form-control" required="" autofocus="" >

       </td></tr>
       <tr>
    <td><i class="fa fa-key" aria-hidden="true"></i></td><td><input type="password"  name="password" id="password" class="form-control" placeholder="Enter the Password" required="" autofocus=""></td>
    </tr>
       </table>     
            <button class="btn btn-success btn-block" type="submit" id="signup" name="login"><i class="fas fa-sign-in-alt"></i> Register</button>
            <a href="Home.jsp" id="back">Back To Home</a>
            <hr>
            <!-- <p>Don't have an account!</p>  -->
            <button class="btn btn-primary btn-block" type="button" id="btn-signup"> <a href="UserLogin.jsp">LOGIN NOW !</button>
            </form>
            <br>
            
    </div>
</body>
</html>