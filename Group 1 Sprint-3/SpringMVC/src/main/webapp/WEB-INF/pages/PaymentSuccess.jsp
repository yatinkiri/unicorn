<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
        <meta charset="utf-8">
        <title>UNC MOVIES</title>
        <meta name="generator" content="Bootply" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
       <!--  <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet"> -->
        <!--[if lt IE 9]>
          <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <link rel="shortcut icon" href="/bootstrap/img/favicon.ico">
        <link rel="apple-touch-icon" href="/bootstrap/img/apple-touch-icon.png">
        <link rel="apple-touch-icon" sizes="72x72" href="/bootstrap/img/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="/bootstrap/img/apple-touch-icon-114x114.png">

        <!-- CSS code from Bootply.com editor -->
        
        <style type="text/css">
            /* move special fonts to HTML head for better performance */
@import url('http://fonts.googleapis.com/css?family=Open+Sans:200,300,400,600,700');


/* custom template */
html, body {
   height: 100%;
   font-family:'Open Sans',arial,sans-serif;
   
}

a {
  color:#222222;
}

.wrapper, .row {
   height: 100%;
   margin-left:0;
   margin-right:0;
}

.wrapper:before, .wrapper:after,
.column:before, .column:after {
    content: "";
    display: table;
}

.wrapper:after,
.column:after {
    clear: both;
}

.column {
    height: 100%;
    overflow: auto;
    *zoom:1;
}

.column .padding {
    padding: 20px;
}

.box {
  	bottom: 0; /* increase for footer use */
    left: 0;
    position: absolute;
    right: 0;
    top: 0;
    background:url('http://lorempixel.com/1024/760/nature/3/') no-repeat scroll center
		center/cover transparent;
    background-size:cover;
    background-attachment:fixed;
}

.divider {
	margin-top:32px;
}

#main {
    background-color:#fefefe;
}
#main .img-circle {
  margin-top:18px;
  height:70px;
  width:70px;
}

#sidebar, #sidebar a {
    color:#ffffff;
    background-color:transparent;
	text-shadow:1px 0 1px #888888;
}
#sidebar a.logo {
  display:block;
  padding:3px;
  background-color:#fff;
  color:#777777;
  height:40px;
  width:40px;
  margin:15px;
  font-size:26px;
  font-weight:700;
  text-align:center;
  text-decoration:none;
  text-shadow:0 0 0;
}
#sidebar-footer {
  position:absolute;bottom:5px;
}
#footer {
  margin-bottom:20px;
}

/* center and adjust the sidebar contents on smaller devices */
@media (max-width: 768px) {
  #sidebar,#sidebar a.logo {
    text-align:center;
    margin:0 auto;
    margin-top:30px;
    font-size:26px;
  }
  #sidebar a.logo {
    font-size:50px;
    height:75px;
    width:75px;
    margin-bottom:30px;
  }
}




/* bootstrap overrides */

h1,h2,h3 {
   font-weight:800;
   font-family:'Open Sans',arial,sans-serif;
}

.jumbotron {
  background-color:transparent;
}
.label-default {
  background-color:#dddddd;
}
.page-header {
  margin-top: 55px;
  padding-top: 9px;
  border-top:1px solid #eeeeee;
  font-weight:700;
  text-transform:uppercase;
  letter-spacing:2px;
}

.col-sm-9.full {
    width: 100%;
}

small.text-muted {
  font-family:courier,courier-new,monospace;
}

        </style>
  </head>

  <body>
     <div class="wrapper">
    <div class="box">
        <div class="row">
    <!-- sidebar -->
            <div class="column col-sm-3" id="sidebar">
                <a class="logo" href="#">UNC Movies</a>
                <ul class="nav">
                   <br>
                    <li class="active">
                    <a href="RunningMovies">RunningMovies </a>
                    </li>
                    <li><a href="UpcomingMovies">UpcomingMovies</a>
                    </li>
                </ul>
                <ul class="nav hidden-xs" id="sidebar-footer">
                    <li>
                      <p>SSDI-Team 1</p>
                    </li>
                </ul>
            </div>
            <!-- /sidebar -->
            
            <div class="column col-sm-9" id="main">
                <div class="padding">
                    <div class="full col-sm-9">
                        
                        <div class="col-sm-12" id="featured">   
                          <div class="page-header">
       <h3>${msg}</h3>
     
<div class="form-group">

<h2>Hey ${greeting} !</h2>
<h3>Your Payment has been done successfully !</h3>
<h3>Tickets booked for the movie :${img}</h3>
<h4>

<a href="Homepage">Click Here to continue ...</a>

</h4>
      </div>
    </div>
    </div>
    </div>
    </div>
    </div> 
    </div>
    </div>
    </div>
    

  <script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>


        <script type='text/javascript' src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

        <!-- JavaScript jQuery code from Bootply.com editor  -->
        
        <script type='text/javascript'>
        
        $(document).ready(function() {      
        });
        </script>
  </body>
</html>
