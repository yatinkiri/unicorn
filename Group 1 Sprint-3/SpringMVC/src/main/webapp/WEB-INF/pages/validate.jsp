<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%!
String pass;
%>
<%
String field = request.getParameter("field");
String query = request.getParameter("query");
System.out.println(" Helloaaadav !! " + field + query);
if(field.equals("nm"))
{
        if(query.length() == 0)
            out.print("<span style='color:red;'>*Mandatory Field</span>");
        else if(query.length()<5)
        {
        	out.print("<span style='color:red;'>Minimum length should be 5</span>");
        }
}

if(field.equals("password"))
{
    if(query.length() == 0)
        out.print("<span style='color:red;'>*Mandatory Field</span>");
    else if(query.length() > 0 && query.length() <=6)
    {
        out.print("<span style='color:red;'>Weak</span>");

    }
    else
        out.print("<html><body><span style='color:green;'>Strong</span></body></html>");
    pass = query;
}
if(field.equals("firstname"))
{
    if(query.length() == 0)
        out.print("<span style='color:red;'>*Mandatory Field</span>");
    else if(!query.matches("[A-Z/a-z]+"))
    {
    	out.print("<span style='color:red;'>*Not a valid first name</span>");
    }
}
if(field.equals("retype_pass"))
{
    if(query.length() == 0)
        out.print("<span style='color:red;'>*Mandatory Field</span>");
    else if(!(query.equals(pass)))
        out.print("<span style='color:red;'>Password does not Mismatch</span>");
}
if(field.equals("emailid"))
{
    if(query.length() == 0)
    {
        out.print("<span style='color:red;'>*Mandatory Field</span>");
    }
    else if(!query.matches("(.*)@(.*).(.*)"))
    {
    	out.print("<span style='color:red;'>Enter a valid email id</span>");
    }
}
if(field.equals("cityname"))
{
    if(query.length() == 0)
        out.print("<span style='color:red;'>*Mandatory Field</span>");
}
if(field.equals("contactnum"))
{
    if(query.length() == 0)
    {
        out.print("<span style='color:red;'>*Mandatory Field</span>");
        }
    else if(query.length()!=10 || !query.matches("[0-9]+"))
    {
    	out.print("<span style='color:red;'>*Not a valid phone number</span>");
    }
}
if(field.equals("luname"))
{
        if(query.length() == 0)
            out.print("<span style='color:red;'>*Mandatory Field</span>");
        else if(query.length()<5)
        {
        	out.print("<span style='color:red;'>*Not a valid user name</span>");
        }
}
if(field.equals("lpass"))
{
    if(query.length() == 0)
        out.print("<span style='color:red;'>*Mandatory Field</span>");
    else if(query.length() > 0 && query.length() <=4)
    {
        out.print("<span style='color:red;'>*Not a valid password</span>");

    }
   
}

if(field.equals("cardname1"))
{
    if(query.length() == 0)
        out.print("<span style='color:red;'>*Mandatory Field</span>");
   
}
if(field.equals("cnumber1"))
{ System.out.println("entered");
	if(query.length() == 0)
    {  System.out.println(field); 
        out.print("<span style='color:red;'>*Mandatory Field</span>");
        }
    else if(query.length()!=16 || !query.matches("[0-9]+"))
    {
    	out.print("<span style='color:red;'>*Not a valid card number</span>");
    }
}

if(field.equals("cvv1"))
{ System.out.println("entered");
	if(query.length() == 0)
    {  System.out.println(field); 
        out.print("<span style='color:red;'>*Mandatory Field</span>");
        }
    else if(!query.matches("[0-9]+"))
    {
    	out.print("<span style='color:red;'>*Not a valid CVV</span>");
    }
}

%>
</head>
<body>

</body>
</html>