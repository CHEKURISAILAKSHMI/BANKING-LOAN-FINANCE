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
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    
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
    width: 70%;
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
<body>
<jsp:include page="Home.jsp"></jsp:include>
         
<div id="logreg-forms">
  <div data-role="main" class="ui-content">
    <form method="post" action="/action_page_post.php">
   <font color="red"> <h1 class="h3 mb-3 font-weight-normal" style="text-align: center">APPLY NOW BY FILLING THE FORM</h1></font>
      <fieldset data-role="collapsible">
        <legend>CUSTOMER DETAILS</legend>
          
          <input type="text" name="text" id="email" placeholder="Enter the registered email">
		 
          <input type="text" name="code" id="code" placeholder="Enter the KN number">
      <input type="submit" data-inline="true" value="Save">
      </fieldset>
    </form>
  </div>
  
  
  <div data-role="main" class="ui-content">
    <form method="post" action="/action_page_post.php">
      <fieldset data-role="collapsible">
        <legend color="red">Asset details</legend>
     
          <input type="text" name="goldtype" id="goldtype" placeholder="Enter the gold type">
         
          <input type="text" name="weight" id="weight" placeholder="Enter the weight">
		 
          <input type="text" name="place" id="place" placeholder="Enter the place where you brought from">
		  
          <input type="text" name="jeweller" id="jeweller" placeholder="Enter the Jewellers name">
		  
          <input type="file" name="pic" id="pic" placeholder="Link the picture of gold">
      <input type="submit" data-inline="true" value="Save">
      </fieldset>
    </form>
  </div>
  
  
  <div data-role="main" class="ui-content">
    <form method="post" action="/action_page_post.php">
      <fieldset data-role="collapsible">
        <legend>Declaration</legend>
        <textarea rows="4" cols="50" name="declare" form="usrform" placeholder="Type your declaration">
</textarea>

          
      <input type="submit" data-inline="true" value="Save">
      </fieldset>
    </form>
  </div>
  
   <div data-role="main" class="ui-content">
    <form method="post" action="/action_page_post.php">
      <fieldset data-role="collapsible">
        <legend>Bank Details</legend>
          
          <input type="text" name="acname" id="acname" placeholder="Enter Account holder Name"> 
		 
          <input type="text" name="acname" id="acname" placeholder="Enter the Joint account"> 
		 
          <input type="text" name="acname" id="acname" placeholder="select savings/current"> 
		  
          <input type="text" name="acname" id="acname" placeholder="Enter Account Number"> 
		  
          <input type="text" name="acname" id="acname" placeholder="Enter IFSC code">
		  
          <input type="text" name="acname" id="acname" placeholder="Enter Bank Name"> 
        
          <input type="text" name="acname" id="acname" placeholder="Enter Branch Name"> 		  
      <input type="submit" data-inline="true" value="Save">
      </fieldset>
    </form>
  </div>
  <div data-role="main" class="ui-content">
    <form method="post" action="/action_page_post.php">
      <fieldset data-role="collapsible">
        <legend>Request for RID</legend>
          	  
      <input type="submit" data-inline="true" value="Request for RID">
      </fieldset>
    </form>
  </div>
  
</div>
</div>
</body>
</html>