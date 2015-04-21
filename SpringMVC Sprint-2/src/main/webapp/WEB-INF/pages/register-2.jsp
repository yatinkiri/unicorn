<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
    rel="stylesheet">
<style>
#header {
    background-color:black;
    color:white;
    text-align:center;
    padding:5px;
}
#nav {
    line-height:30px;
    background-color:#eeeeee;
    height:570px;
    width:100px;
    float:left;
    padding:5px;	      
}

#nav1 {
    line-height:30px;
    background-color:#eeeeee;
    height:570px;
    width:100px;
    float:right;
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
<script src="js/registration.js"></script>
<body >

<div id="header">
<table>
<tr>
<td><img src="http://www.toyota.com/toyota-owners-online-theme/images/entune/movietix-logo.png" alt="logo" width="68" height="68" border="0"></td>
<td><h1>UNC MOVIES</h1></td>
</tr>
</table>
</div>
<div id="nav">
</div>

<div id="section">
<h2 align="center">Registration</h2>
<form name="registration" action="/SpringMVC/regServlet" onsubmit="return validateForm()" method="post">
<input type="hidden" name="pagename" value="register"/>
<table cellpadding="5" cellspacing="5" align="center">


	<tr><td> User Name</td><td><input type="text" name="uname"/></td></tr>
	<tr><td> Password</td><td><input type="password" name="pass"/></td></tr>
	<tr><td> First Name</td><td><input type="text" name="fname"/></td></tr>
	<tr><td>Last Name</td><td><input type="text" name="lname"/></td></tr>
	<tr><td>Email</td><td><input type="text" name="email"/></td></tr>
	<tr><td>City</td><td><input type="text" name="city"/></td></tr>
	<tr></tr><tr></tr>
	<tr><td><button type="submit">Submit</button></td><td><button type="reset" value="reset">Reset</button></td></tr>
	
</table>
</form>
</div>
<div id="nav1">
</div>
<div id="footer">
 SSDI Team 1
</div>

</body>
</html>
