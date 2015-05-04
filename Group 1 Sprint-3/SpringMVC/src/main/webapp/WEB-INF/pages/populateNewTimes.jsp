<%@page import="java.util.List"%>
<%@page import="com.movies.db.DbManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<%  System.out.println("Entered populateNewTiems.jsp");
    System.out.println(request.getParameter("id"));
    String id = request.getParameter("id");
    String date = request.getParameter("date");
    String outId = request.getParameter("outId");
    String time =  request.getParameter("time");
    String tick = request.getParameter("tick");
    int cost = Integer.valueOf(tick)*10;
    DbManager db = new DbManager();
    String img = db.getImg(id);
    HttpSession session1 = request.getSession();
    session1.setAttribute("img", id);
    System.out.println("There !!"+ img);
    	db.updateAvailability(id,date,time,tick);
    	System.out.println("Now success");
    out.println("Total Cost :  $"+cost);
%>
</head>
<body>

</body>
</html>