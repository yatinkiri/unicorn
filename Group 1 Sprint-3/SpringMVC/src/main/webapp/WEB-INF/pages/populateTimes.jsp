<%@page import="java.util.List"%>
<%@page import="com.movies.db.DbManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<%  System.out.println("Entered populateTiems.jsp");
    System.out.println(request.getParameter("id"));
    String id = request.getParameter("id");
    String date = request.getParameter("date");
    String outId = request.getParameter("outId");
    //String time =  request.getParameter("time");
   // String tick = request.getParameter("tick");
    DbManager db = new DbManager();
    List<String> times = db.getMovieTimes(id,date);
    for(int i=0;i<times.size();i++){
    	out.print("<option value='"+times.get(i)+"'>"+times.get(i)+"</option>");
    } 
%>
</head>
<body>

</body>
</html>