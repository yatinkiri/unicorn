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
                          <h3> Login  &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; 
                          	 <h3>
                          </div> 
                        </div>
                        
                        
                       					
                        <div class="row">    
                          <div class="col-sm-8">
                              <div id="loginbox" style="margin-top:50px;">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                    <h4>${message}</h4>
                        <div class="panel-title">Log In</div>
                        
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="loginform" class="form-horizontal" action="/SpringMVC/login" method="post" role="form">
                                    
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="login-username" type="text" class="form-control" name="uname" value="" placeholder="username" id = "luname"  onblur="validate('luname',this.value);">                                        
                                    	<span id="luname"></span>
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input id="login-password" type="password" class="form-control" name="pass" placeholder="password" id = "lpass"  onblur="validate('lpass',this.value);">
                                    	<span id="lpass"></span>
                                    </div>

                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                    <div class="col-sm-12 controls">
                                    
                                      <!--  <a id="btn-login" type="submit" " class="btn btn-success">Login  </a>-->
                                      <button id="btn-login" type="submit" class="btn btn-info"><i class="icon-hand-right"></i> Login</button>
                                     <!-- </form> --> 

                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            Don't have an account! 
                                        <a href="register" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                            Sign Up Here
                                        </a>
                                        </div>
                                    </div>
                                </div>    
                            </form>     



                        </div>                     
                    </div>  
        </div>
                          </div>
                     
                        
                        <div class="row divider">    
                           <div class="col-sm-12"><hr></div>
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
        
        function validate(field, query) {
        	var xmlhttp;
        	if (window.XMLHttpRequest) { // for IE7+, Firefox, Chrome, Opera, Safari
        	xmlhttp = new XMLHttpRequest();
        	} else { // for IE6, IE5
        	xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        	}
        	xmlhttp.onreadystatechange = function() {
        	if (xmlhttp.readyState != 4 && xmlhttp.status == 200) {
        	document.getElementById(field).innerHTML = "Validating..";
        	} else if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
        	document.getElementById(field).innerHTML = xmlhttp.responseText;
        	} else {
        	document.getElementById(field).innerHTML = "Error Occurred.Try reloading the page again.";
        	}
        	}
        	xmlhttp.open("GET", "validate?field=" + field + "&query=" + query, false);
        	xmlhttp.send();
        	}
       
        </script>
        
        
    </body>
</html>