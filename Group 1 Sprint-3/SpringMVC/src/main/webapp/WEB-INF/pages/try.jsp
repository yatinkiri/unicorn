<%@page import="com.movies.controller.RunningMovies"%>
<%@page import="java.util.List"%>
<%@page import="com.movies.db.DbManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<%  System.out.println("Entered try.jsp");
    String name = request.getParameter("id");
    System.out.println(name);
     //if(name.equals("forDeleting")){
    	int id = Integer.valueOf(name);
    	RunningMovies run = new RunningMovies();
    	run.setMovieID(id);
    	System.out.println("Delete movie with Id : " + id);
    	 DbManager db = new DbManager();
    	db.deleteRunningMovies(run);
     
%>
</head>
<body>

</body>
</html>