<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">-->
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>UNC Movies</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
    rel="stylesheet">
<style>
#header {
    background-color:#5ECC9E;
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
<table>
<tr>
<td>
<form:form method="GET" action="/runmov">
<a href="RunningMovies">NOW PLAYING! <img src="https://cdn0.iconfinder.com/data/icons/flat-green-icon-set/128/Play_Icon_FlatGreen.png"></a></form:form>
</td>

<td>
<form:form method="GET" action="/upmov">
<a href="UpcomingMovies">Upcoming Movies
<img src="http://octavia-rs.com/wcf/images/avatars/bb/527-bbb0b126234144f60db887bf374d11ac8f968610-128.jpg"></a></form:form>
</td>
</tr>
<tr>
<td>
<form:form method="GET" action="/redirect">
<a href="LoginPage">Login
<img src="https://cdn3.iconfinder.com/data/icons/angular-ui/128/lock-512x512px.png"></form:form></a>
</td>
<td>
<a href="register">Signup</a>
</td>
</tr>
</div>
</table>
<div id="footer">
SSDI Team 1
</div>
<script src="<c:url value="//bootstrap/js/bootstrap.min.js"/>"></script>
</body>
</html>