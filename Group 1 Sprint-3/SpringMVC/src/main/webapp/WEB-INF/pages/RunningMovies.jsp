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
                <a  href="${admin}Homepage"><h1>UNC Movies</h1></a>
                <ul class="nav">
                   <br>
                    <li class="active">
                    <a href="RunningMovies">RunningMovies </a>
                    </li>
                    <li><a href="UpcomingMovies">UpcomingMovies</a>
                    </li>
                    <li> <h3> ${greeting} </h3>
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
                          <h3> RUNNING MOVIES  &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; 
                          <!-- <a href="AddMovies" class="btn btn-success btn-lg">
     					  <span class="glyphicon plus"></span>Add Movies	
   						   </a>  -->	 <h3>
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
                            <div class="addshow">
                          <button style="display:${hide};" onclick="display('calndr_${o.movieID}','a_${o.movieName}');" class="btn btn-info"><i class="icon-hand-right"></i>Add Shows</button>
                          </div> 
                            <h4><span class="label label-default">uncmovies.com</span></h4><h4>
                            <small class="text-muted"> ${o.movieDesc} . ${o.actor} . ${o.actress} </small>
                            </h4>
                          </div>
                          <div class="col-sm-2">
                            <a href="#" class="pull-right"><button class="btn btn-success btn-lg" onclick="displayTime('a_${o.movieName}');"><img src="${o.img}"  class="img-rounded"></button></a>
                         	<input id ="img" style="display:none;" value="${o.img}"/>
                          </div> 
                          <form id="showtimes" class="form-horizontal" style="display:${log};" action="/SpringMVC/AddShowTimes" method="post" role="form">
                          <input name="movieID" value="${o.movieID}" hidden="true" style="display:none;"></input>
                          <div class="adates" style="display:none;" id="calndr_${o.movieID}">
                          <input type="date" Id="datepicker1" name="newShowDate" onchange="displayTime('times_${o.movieID}');">
                          </div>
                          <br>
                          <div class="atimes" style="display:none;" id="times_${o.movieID}">
                          <c:forEach var="i" items="${o.showTimes}">
                          <label> <input type="checkbox" name="showTimes" value="${i}"/>${i}   <input type="text" name="availability" placeholder="Enter the tickets available" ID="${i}"></label>						     
							</c:forEach>
							<button id="btn-addshows" type="submit" class="btn btn-info"><i class="icon-hand-right"></i>Submit</button>							
							</div>
							</form>
                          
                          <div class="col-sm-10" style="display:none;" id="a_${o.movieName}">
					       <!--  <form id="cascade" action="/SpringMVC/cascade" method="post" > -->
							<h4 id ="abc">Date : </h4>
							<form id = "details" action = "/Runn">
							<select class="form-control" id="hello_${o.movieName}"  onchange="displayTime('aa_${o.movieName}');populateTimes('${o.movieID}','hello_${o.movieName}','hello2_${o.movieName}');">
							<option value='default'>Select Date!</option>
							<c:forEach var="i" items="${o.dates}">
							 <option value ="${i}"><c:out value="${i}"/></option>
							</c:forEach>
                            </select>
                               </form>
                            <!-- </form> -->
					     
					      <br>
					       <div class="col-sm-10" style="display:none;" id="aa_${o.movieName}">
					       <h4>Time : </h4>
					        <select class="form-control" id="hello2_${o.movieName}" onchange="displayTime('av_${o.movieName}');populate('${o.movieName}','hello_${o.movieName}','hello2_${o.movieName}','avail_${o.movieName}');">
							<%-- <c:forEach var="i" items="${o.showTimes}">
							 <option value ="${i}" id><c:out value="${i}"/></option>
							</c:forEach> --%>
                            </select> 
                            <%-- <div class="radio">
                            <c:forEach var="i" items="${o.showTimes}">
						      <label><input type="radio" name="1"> ${i} </label>
							</c:forEach>
						      </div> --%>
					      
					   
					      <div class="col-sm-10" style="display:none;" id="av_${o.movieName}" >
					       <h4>Availabilty : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cost : 10$ </h4>
					       <h3 id = "avail_${o.movieName}"></h3>
					       <h4>Tickets : </h4>	
					        <select class="form-control" id="tick_${o.movieName}" onchange="displayTime('book_${o.movieName}');populateNewTimes('${o.movieName}','hello_${o.movieName}','hello2_${o.movieName}','tick_${o.movieName}');">
							<option value='default'>Select Tickets</option>
							 <option value ="1" id><c:out value="1"/></option>
							 <option value ="2" id><c:out value="2"/></option>
							 <option value ="3" id><c:out value="3"/></option>
							 <option value ="4" id><c:out value="4"/></option>
                            </select>                             
                            <div class="col-sm-10" style="display:none;" id = "book_${o.movieName}">
                            <h3 id = "tick_${o.movieName}_cost"></h3>
                            <a href="Payment"><button type="button" class="btn btn-success" onclick ="populateNewTimes('${o.movieName}','hello_${o.movieName}','hello2_${o.movieName}','tick_${o.movieName}');"/> Book </a> 
                            </div>
                            </div>
                            </div>
					      </div>
                        </div>                      
                        
                        <div class="row divider">    
                           <div class="col-sm-12"><hr></div>
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
        
        function display(field1,field2) {
       	 /*  DispWin = window.open('','NewWin', 'toolbar=no,status=no,width=300,height=200')
       	  message = "<ul><li><b>NAME: </b>" + document.form1.yourname.value;
       	  message += "<li><b>ADDRESS: </b>" + document.form1.address.value;
       	  message += "<li><b>PHONE: </b>" + document.form1.phone.value + "</ul>";
       	  DispWin.document.write(message); */
       	if(document.getElementById(field2).style.display=="block") 
        		 document.getElementById(field2).style.display = "none"
         
         	 if(document.getElementById(field1).style.display=="none") 
         		 document.getElementById(field1).style.display = "block"
         	else
         		document.getElementById(field1).style.display = "none"
       	  
       	}
         function displayTime(field) {
       	 /*  DispWin = window.open('','NewWin', 'toolbar=no,status=no,width=300,height=200')
       	  message = "<ul><li><b>NAME: </b>" + document.form1.yourname.value;
       	  message += "<li><b>ADDRESS: </b>" + document.form1.address.value;
       	  message += "<li><b>PHONE: </b>" + document.form1.phone.value + "</ul>";
       	  DispWin.document.write(message); */
       	  //var n = value.localeCompare("default");
       	  
       	 if(document.getElementById(field).style.display=="none") 
       		 document.getElementById(field).style.display = "block"
       	else
       		document.getElementById(field).style.display = "none"
       		
       			
       	} 
       
        function populate(name,field1,field2,field) {
        	
            var e1 = document.getElementById(field1);
        	var strDate = e1.options[e1.selectedIndex].value;
        	var e2 = document.getElementById(field2);
        	var strTime = e2.options[e2.selectedIndex].value; 
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
        	}  else {
        	document.getElementById(field).innerHTML = "Error Occurred.Try reloading the page again.";
        	} 
        	}
        	xmlhttp.open("GET", "populate?name=" + name + "&field1=" +strDate+ "&field2="+strTime , false);
        	xmlhttp.send();
        	} 
        
         function populateNewTimes(id,date,time,tick) {
        	 var e1 = document.getElementById(date);
         	var strDate = e1.options[e1.selectedIndex].value;
          	 var e2 = document.getElementById(tick);
           	var ticks = e2.options[e2.selectedIndex].value;
            var e3 = document.getElementById(time);
           	var times = e3.options[e3.selectedIndex].value;
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
        	document.getElementById(tick+"_cost").innerHTML = xmlhttp.responseText;
        	}  else {
        	document.getElementById(field).innerHTML = "Error Occurred.Try reloading the page again.";
        	} 
        	}
        	xmlhttp.open("GET", "populateNewTimes?id=" + id + "&date=" +strDate+ "&time=" +times+"&tick="+ticks , false);
        	xmlhttp.send();
        	} 
         
         function availabilty(avail ,tickets) {
        	 var e = document.getElementById(avail);
         	var ava = e.innertext;
         	 var e1 = document.getElementById(date);
          	var tick = e1.options[e1.selectedIndex].value;
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
        	document.getElementById(outId).innerHTML = xmlhttp.responseText;
        	}  else {
        	document.getElementById(field).innerHTML = "Error Occurred.Try reloading the page again.";
        	} 
        	}
        	xmlhttp.open("GET", "availabilty?avail=" + ava + "&tick=" +tick , false);
        	xmlhttp.send();
        	} 
         
         function populateTimes(id,date,outId) {
        	 var e1 = document.getElementById(date);
         	var strDate = e1.options[e1.selectedIndex].value;
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
        	document.getElementById(outId).innerHTML = xmlhttp.responseText;
        	}  else {
        	document.getElementById(field).innerHTML = "Error Occurred.Try reloading the page again.";
        	} 
        	}
        	xmlhttp.open("GET", "populateTimes?id=" + id + "&date=" +strDate+ "&outId="+outId , false);
        	xmlhttp.send();
        	} 
         
        </script>
        
        
    </body>
</html>