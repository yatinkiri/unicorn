<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<!-- <style>
#wrap{
background-image: -ms-linear-gradient(top, #FFFFFF 0%, #D3D8E8 100%);
/* Mozilla Firefox */ 
background-image: -moz-linear-gradient(top, #FFFFFF 0%, #D3D8E8 100%);
/* Opera */ 
background-image: -o-linear-gradient(top, #FFFFFF 0%, #D3D8E8 100%);
/* Webkit (Safari/Chrome 10) */ 
background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #FFFFFF), color-stop(1, #D3D8E8));
/* Webkit (Chrome 11+) */ 
background-image: -webkit-linear-gradient(top, #FFFFFF 0%, #D3D8E8 100%);
/* W3C Markup, IE10 Release Preview */ 
background-image: linear-gradient(to bottom, #FFFFFF 0%, #D3D8E8 100%);
background-repeat: no-repeat;
background-attachment: fixed;
}
legend{
	color:#141823;
	font-size:25px;
	font-weight:bold;
}
.signup-btn {
  background: #79bc64;
  background-image: -webkit-linear-gradient(top, #79bc64, #578843);
  background-image: -moz-linear-gradient(top, #79bc64, #578843);
  background-image: -ms-linear-gradient(top, #79bc64, #578843);
  background-image: -o-linear-gradient(top, #79bc64, #578843);
  background-image: linear-gradient(to bottom, #79bc64, #578843);
  -webkit-border-radius: 4;
  -moz-border-radius: 4;
  border-radius: 4px;
  text-shadow: 0px 1px 0px #898a88;
  -webkit-box-shadow: 0px 0px 0px #a4e388;
  -moz-box-shadow: 0px 0px 0px #a4e388;
  box-shadow: 0px 0px 0px #a4e388;
  font-family: Arial;
  color: #ffffff;
  font-size: 20px;
  padding: 10px 20px 10px 20px;
  border: solid #3b6e22  1px;
  text-decoration: none;
}

.signup-btn:hover {
  background: #79bc64;
  background-image: -webkit-linear-gradient(top, #79bc64, #5e7056);
  background-image: -moz-linear-gradient(top, #79bc64, #5e7056);
  background-image: -ms-linear-gradient(top, #79bc64, #5e7056);
  background-image: -o-linear-gradient(top, #79bc64, #5e7056);
  background-image: linear-gradient(to bottom, #79bc64, #5e7056);
  text-decoration: none;
}
.navbar-default .navbar-brand{
		color:#fff;
		font-size:30px;
		font-weight:bold;
	}
.form .form-control { margin-bottom: 10px; }
@media (min-width:768px) {
	#home{
		margin-top:50px;
	}
	#home .slogan{
		color: #0e385f;
		line-height: 29px;
		font-weight:bold;
	}
}
</style>
 -->
</head>
<script type="text/javascript">
/* function validate(field, query) {
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
xmlhttp.open("GET", "validate.jsp?field=" + field + "&query=" + query, false);
xmlhttp.send();
} */
</script>
<body>


<!-- Header -->
	
	
<!-- <nav class="navbar navbar-default">
      <div class="container">
        Brand and toggle get grouped for better mobile display
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-2">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <img class="navbar-brand" src="http://www.toyota.com/toyota-owners-online-theme/images/entune/movietix-logo.png" alt="logo" width="58" height="68" border="0">
          <a class="navbar-brand" href="#">UNC MOVIES</a>
        </div>
    
        Collect the nav links, forms, and other content for toggling
        <div class="collapse navbar-collapse" id="navbar-collapse-2">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="Homepage">Home</a></li>
            
            <li>
              <a href="LoginPage">Sign In</a>
            </li>
          </ul>
          
        </div>/.navbar-collapse
      </div>/.container
    </nav>/.navbar
     -->
     
     
     
    

<div class="container">  

<div class="col-sm-12" id="featured">   
                          <div class="page-header">
                          <h3> Sign Up  &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; 
                          	 <h3>
                          </div> 
                        </div>
<div id="signupbox" style=" margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Sign Up</div>
                            <!-- <div style="float:right; font-size: 85%; position: relative; top:-10px">
                            <a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign In</a></div> -->
                        </div>  
                        <div class="panel-body" >
                            <form id="signupform" class="form-horizontal" action="/SpringMVC/regServlet" role="form">
                                
                                <div id="signupalert" style="display:none" class="alert alert-danger">
                                    <p>Error:</p>
                                    <span></span>
                                </div>
                                    
                                
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">First Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="fname" placeholder="First Name" id = "firstname1"  onblur="validate('firstname',this.value);">
                                    	<span id="firstname"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="lastname" class="col-md-3 control-label">Last Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="lname" placeholder="Last Name" id = "lastname1">
                                    </div>
                                </div>  
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">Email</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="email" placeholder="Email Address" id = "emailid1"  onblur="validate('emailid',this.value);">
                                    	<span id="emailid"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="icode" class="col-md-3 control-label">UserName</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="uname" placeholder="User Name" id = "nm1"  onblur="validate('nm',this.value);">
                                    	<span id="nm"></span>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="password" class="col-md-3 control-label">Password</label>
                                    <div class="col-md-9">
                                        <input type="password" class="form-control" name="pass" placeholder="Password" id = "password1"  onblur="validate('password',this.value);">
                                    	<span id="password"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="col-md-3 control-label">Re-enter Password</label>
                                    <div class="col-md-9">
                                        <input type="password" class="form-control" name="repass" placeholder="Password" id = "retype_pass1"  onblur="validate('retype_pass',this.value);">
                                    	<span id="retype_pass"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="icode" class="col-md-3 control-label">City</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="city" placeholder="City" id = "cityname1"  onblur="validate('cityname',this.value);">
                                    	<span id="cityname"></span>
                                    </div>
                                </div>
                                    
                                

                                <div class="form-group">
                                    <!-- Button -->                                        
                                    <div class="col-md-offset-3 col-md-9">
                                        <button id="btn-signup" type="submit" class="btn btn-info"><i class="icon-hand-right"></i> &nbsp Sign Up</button>
                                      
                                    </div>
                                </div>
                                
                                     
                                
                                
                            </form>
                         </div>
                    </div>

               
               
                
         </div> 

</div>


 <div class="row" id="footer">    
 <hr>
                          <div class="col-sm-6">
                            
                          </div>
                          <div class="col-sm-6">
                            <p>
                            <a href="#" class="pull-right">Â©Copyright Inc.</a>
                            </p>
                          </div>
                        </div>
                      
                      <hr>

        <script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>


        <script type='text/javascript' src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>






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
 
   <!--  <div class="navbar navbar-default navbar-fixed-bottom">
    <div class="container">
      <p class="navbar-text pull-right">© 2015 - SSDI Team - 1
           
      </p>
      
    </div>
    
    
  </div> -->
</body>
</html>