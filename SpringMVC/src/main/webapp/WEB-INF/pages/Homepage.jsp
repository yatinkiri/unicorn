<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UNC Movies</title>
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
a {
display:inline-block; 
color: black;
margin-right:15px;
}
</style>
</head>
<script src="js/Homepage.js"></script>
<body>
<div id="header">
<table>
<tr>
<td><img src="http://www.toyota.com/toyota-owners-online-theme/images/entune/movietix-logo.png" alt="logo" width="68" height="68" border="0"></td>
<td><h1>UNC MOVIES</h1></td>
</tr>
<tr></tr>
<tr>
<td> ${greeting} </td>
</tr>
</table>
</div>
<div id="section">
<a href="RunningMovies.jsp">Running Movies</a>
<a href="UpcomingMovies.jsp">Upcomming Movies</a>
<form:form method="GET" action="/redirect">
<a href="LoginPage">Login</form:form>
</a>
<a href="register">Signup</a>
</div>
<div id="footer">
SSDI Team 1
</div>
</body>
</html>