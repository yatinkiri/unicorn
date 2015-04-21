<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<title>UNC MOVIES</title>
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
<body>




<div id="header">
<table>
<tr>
<td><img src="http://www.toyota.com/toyota-owners-online-theme/images/entune/movietix-logo.png" alt="logo" width="68" height="68" border="0"></td>
<td><h1>UNC MOVIES</h1></td>
</tr>
</table>
</div>


<div id="section">

<h1> Currently Running Movies</h1>
<%-- <table border="1" width="100%" align="center">
<tr>
   <th>movie Name</th>
   <th>Movie Description</th>
   <th>Actor-Actress</th>
   
</tr>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/unicorn"
     user="root"  password="mysql" />

<sql:query dataSource="${snapshot}" var="result">
SELECT * from runningMovie;
</sql:query>

<c:forEach items="${result.rows}" var="row">
<tr>
   <td><c:out value="${row.movieName}"/></td>
   <td><c:out value="${row.MovieDescription}"/></td>
   <td><c:out value="${row.ActorActress}"/></td>
</tr>

</c:forEach>
</table> --%>
<c:if test="${not empty result}">
    <table class="table">
        <c:forEach var="o" items="${result}">
            <tr>
                <td>${o.movieName}</td>
                <td>${o.movieDesc}</td>
                <td>${o.cast}</td>   
            </tr>
        </c:forEach>
    </table>
</c:if>


</div>
<div id="footer">
 SSDI Team 1
</div>

</body>
</html>