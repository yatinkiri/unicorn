<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
    rel="stylesheet">
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

<div id="header">
<table>
<tr>
<td><img src="http://www.toyota.com/toyota-owners-online-theme/images/entune/movietix-logo.png" alt="logo" width="68" height="68" border="0"></td>
<td><h1>UNC MOVIES</h1></td>
</tr>
</table>
</div>
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
<div id="footer">
 SSDI Team 1
</div>

</body>
</html>