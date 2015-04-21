<%@page import="java.util.HashMap"%>
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
        <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet">
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
    
    <!-- HTML code from Bootply.com editor -->
    
    <body  >
    
    
        
        <div class="wrapper">
    <div class="box">
        <div class="row">
            <!-- sidebar -->
            <div class="column col-sm-3" id="sidebar">
                <a  href="Homepage"><h1>UNC Movies</h1></a>
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
          
            <!-- main -->
            <div class="column col-sm-9" id="main">
                <div class="padding">
                    <div class="full col-sm-9">
                      
                        <!-- content -->
                        
                        <div class="col-sm-12" id="featured">   
                          <div class="page-header">
                          <h3> Upcoming MOVIES  &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; 
                          <a href="AddUpcomingMovies" class="btn btn-success btn-lg">
     					  <span class="glyphicon plus"></span>Add Upcoming Movies	
   						   </a> 	 <h3>
                          </div> 
                        </div>
                        
                        
                       <!--  <div class="bs-example">
    Button HTML (to Trigger Modal)
    <a href="#myModal" class="btn btn-lg btn-primary" data-toggle="modal">Launch Demo Modal</a>
    
    Modal HTML
    <div id="myModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Confirmation</h4>
                </div>
                <div class="modal-body">
                    <p>Do you want to save changes you made to document before closing?</p>
                    <p class="text-warning"><small>If you don't save, your changes will be lost.</small></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
                        </div>
        </div>
    </div>
</div>     -->
                        
                        <!--/top story
                        <div class="row">    
                          <div class="col-sm-10">
                            <h3>This is Some Awesome Featured Content</h3>
                            <h4><span class="label label-default">techvisually.com</span></h4><h4>
                            <small class="text-muted">1 hour ago â¢ <a href="#" class="text-muted">Read More</a></small>
                            </h4>
                          </div>
                          <div class="col-sm-2">
                            <a href="#" class="pull-right"><img src="http://api.randomuser.me/portraits/thumb/men/19.jpg" class="img-circle"></a>
                          </div> 
                        </div>
                        
                        <div class="col-sm-12" id="stories">  
                          <div class="page-header text-muted divider">
                            Top Stories
                          </div>
                        </div>
                        
                        
                        <!--/stories-->
						<c:if test="${not empty result}">
						<c:forEach var="o" items="${result}">					
                        <div class="row">    
                          <div class="col-sm-10">
                            <h3>${o.movieName}</h3>
                            <h4><span class="label label-default">uncmovies.com</span></h4><h4>
                            <small class="text-muted"> ${o.movieDesc} . ${o.actor} . ${actress} </small>
                            </h4>
                          </div>
                          <div class="col-sm-2">
                            <a href="#" class="pull-right"><button class="btn btn-success btn-lg" onclick="display('a_${o.movieName}');"><img src="${o.movieImage}"  class="img-rounded"></button></a>
                          </div> 
                        
                        <div class="row divider">    
                           <div class="col-sm-12"><hr></div>
                        </div> 
                        </div>       
						 </c:forEach>
						 </c:if>
                        
                        <div class="col-sm-12">
                          <div class="page-header text-muted divider">
                            Up Next
                          </div>
                        </div>
                      
                        <div class="row">    
                          <div class="col-sm-4 text-center">
                            <h4>Related 1</h4>
                            <a href="#"><img src="//placehold.it/400/f0f0f0" class="img-respsonsive img-circle"></a>
                          </div>
                          <div class="col-sm-4 text-center">
                            <h4>Related 2</h4>
                            <a href="#"><img src="//placehold.it/400/f0f0f0" class="img-respsonsive img-circle"></a>
                          </div>
                          <div class="col-sm-4 text-center">
                            <h4>Related 3</h4>
                            <a href="#"><img src="//placehold.it/400/f0f0f0" class="img-respsonsive img-circle"></a>
                          </div>
                        </div>
                      
                      
                        <div class="col-sm-12">
                          <div class="page-header text-muted divider">
                            Connect with Us
                          </div>
                        </div>
                      
                        <div class="row">
                          <div class="col-sm-6">
                            <a href="#">Twitter</a> <small class="text-muted">|</small> <a href="#">Facebook</a> <small class="text-muted">|</small> <a href="#">Google+</a>
                          </div>
                        </div>
                        
                        <hr>
                      
                        <div class="row" id="footer">    
                          <div class="col-sm-6">
                            
                          </div>
                          <div class="col-sm-6">
                            <p>
                            <a href="#" class="pull-right">Â©Copyright Inc.</a>
                            </p>
                          </div>
                        </div>
                      
                      <hr>
                      
                        
                      <hr>
                        
                      
                    </div><!-- /col-9 -->
                </div><!-- /padding -->
            </div>
            <!-- /main -->
        </div>
    </div>
</div>
        
        <script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>


        <script type='text/javascript' src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>






        
        <!-- JavaScript jQuery code from Bootply.com editor  -->
        
        <script type='text/javascript'>
        
        $(document).ready(function() {
        
            
        
        });
        
        $('#InfroTextSubmit').click(function(){
            
            if ($('#title').val()==="") {
              // invalid
              $('#title').next('.help-inline').show();
              return false;
            }
            else {
              // submit the form here
              // $('#InfroText').submit();
              
              return true;
            }
          
              
              
        });
        
       
        </script>
        
        
    </body>
</html>