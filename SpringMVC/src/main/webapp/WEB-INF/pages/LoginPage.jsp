<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<title>Login</title>
<style>
#header {
    background-color:black;
    color:white;
    text-align:center;
    padding:5px;
}
#section {
	
	height:560px;
	
    width:400px;
    float:left;
    padding:10px;
	 	 
}
#footer {
    background-color:black;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	 	 
}
</style>
</head>
<script src="js/Login.js"></script>
<body >
<nav class="navbar navbar-default">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <!-- <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-2">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button> -->
          <img class="navbar-brand" src="http://www.toyota.com/toyota-owners-online-theme/images/entune/movietix-logo.png" alt="logo" width="58" height="68" border="0">
          <a class="navbar-brand" href="#">UNC MOVIES</a>
        </div>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-collapse-2">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="login.jsp">Home</a></li>
            
            <li>
              <a href="#">Sign In</a>
            </li>
          </ul>
          
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
    </nav><!-- /.navbar -->
    
<div id="section">
<h2 align="center">Login</h2>
<form name="LoginForm" action="/SpringMVC/login" method="post">
     <center>
            <table border="4" width="40%" cellpadding="5">
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                    <form name = "loginSubmit" action="/SpringMVC/Home">
                        <td><input type="submit" value="Login" /></td></form>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Not a Registered User? <a href="register">Click Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
</form>
</div>
<div class="navbar navbar-default navbar-fixed-bottom">
    <div class="container">
      <p class="navbar-text pull-right">© 2015 - SSDI Team - 1
           
      </p>
      
    </div>
    
    
  </div>
</body>
</html>