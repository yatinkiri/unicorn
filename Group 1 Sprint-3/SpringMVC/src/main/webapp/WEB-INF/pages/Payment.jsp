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
                 <a  href="${admin}Homepage"><h1>UNC Movies</h1></a>
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
      <h2>Payment</h2>
     <form role="form" id="payment" action="/SpringMVC/payment" method="post">
	<div class="form-group">
    <label for="cardname">Name on Card</label>
    <input type="text"  id="cname" name="cname" autocomplete="off" placeholder="Jack White" onblur="validate('cardname1',this.value);"/>
     <span id="cardname1"></span>
  </div>
  <div class="form-group">
    <label for="cnumber">Card Number</label>
    <input type="text" id="cnumber" name="cnumber"  placeholder="1111222233334444" maxlength="16" onblur="validate('cnumber1',this.value);" /> 
    <span id="cnumber1"></span>
  </div>
  <div class="form-group">
    <label>Expiration</label>
    <select id="cmonth" name="cmonth" >
  <option value="01">01</option>
  <option value="02">02</option>
  <option value="03">03</option>
  <option value="04">04</option>
  <option value="05">05</option>
  <option value="06">06</option>
  <option value="07">07</option>
  <option value="08">08</option>
  <option value="09">09</option>
  <option value="10">10</option>
  <option value="11">11</option>
  <option value="12">12</option>
</select>
<select id="cyear" name="cyear">
  <option value="2015">2015</option>
  <option value="2016">2016</option>
  <option value="2017">2017</option>
  <option value="2018">2018</option>
  <option value="2019">2019</option>
  <option value="2020">2020</option>
  <option value="2021">2021</option>
  <option value="2022">2022</option>
  <option value="2023">2023</option>
  <option value="2024">2024</option>
  <option value="2025">2025</option>
  <option value="2026">2026</option>
  <option value="2027">2027</option>
  <option value="2028">2028</option>
  <option value="2029">2029</option>
  <option value="2030">2030</option>
</select>
   <!--  <input type="text" id="cmonth" name="cmonth" autocomplete="off" placeholder="01" maxlength="2" />
    <input type="text" id="cyear" name="cyear" autocomplete="off" placeholder="2013" maxlength="4" /> -->
  </div>
  <div class="form-group">
    <label>Card Verification Code (CVV)</label>
    <input type="password" id="cvv" name="cvv" autocomplete="off" placeholder="453" maxlength="4" onblur="validate('cvv1',this.value);"/>
    <span id="cvv1"></span>
  </div>
			
	<button type="submit" class="btn btn-default">Submit</button>
	</form>
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
        
        <!-- <script type='text/javascript'>
        
        $(document).ready(function() {      
        });
        </script> -->
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
