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

<%  System.out.println("Entered populate.jsp");
    System.out.println(request.getParameter("name"));
    String name = request.getParameter("name");
    String date = request.getParameter("field1");
    String time = request.getParameter("field2");
    System.out.println(date);
    System.out.println(time);
    if(name.equals("forDeleting")){
    	int id = Integer.valueOf(date);
    	RunningMovies run = new RunningMovies();
    	run.setMovieID(id);
    	System.out.println("Delete movie with Id : " + id);
    	/* DbManager db = new DbManager();
    	db.deleteRunningMovies(run); */
    }else{
    DbManager db = new DbManager();
    String avail = db.getAvailability(name, date, time);
    System.out.println(avail);
    out.print("<h3>"+avail+"</h3>");
    }
 	/* String name = request.getParameter("name");
	DbManager db = new DbManager();
	List<String> dates = db.getShowDates(name);
    for(int i=0;i<dates.size();i++){
    	out.print("<option >"+dates.get(i)+"</option>");
    } */
%>
</head>
<body>

</body>
</html>