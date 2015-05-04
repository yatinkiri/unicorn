<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">

    <link href="http://getbootstrap.com/examples/jumbotron-narrow/jumbotron-narrow.css" rel="stylesheet">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<style>
.thumbnails { text-align:center;
float: none;
 }
</style>
<title>UNC Movies</title>
</head>
<body>

<nav class="navbar navbar-default">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <!-- <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-2">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button> -->
          <img class="navbar-brand" src="http://www.toyota.com/toyota-owners-online-theme/images/entune/movietix-logo.png" alt="logo" width="58" height="68" border="0">
         <a class="navbar-brand" href="Homepage">UNC MOVIES</a>
        </div>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
         
        <div class="collapse navbar-collapse" id="navbar-collapse-2">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="Homepage">Contact Us</a></li>           
            <!-- <li><a href="LoginPage">Sign In</a></li>
            <li><a href="register">Sign Up</a></li>
          </ul>-->  
        </div> 
        <!-- /.navbar-collapse -->
        <div class="collapse navbar-collapse" id="navbar-collapse-2">
          <ul class="nav navbar-nav navbar-right">
          <li><p align="justify">${greeting}</li>
          </ul>
          </div>
      </div><!-- /.container -->
    </nav><!-- /.navbar -->

<!-- 
<div class="row">
<div class="col-md-2"></div>
  <div class="col-md-4">
  
  <form>
  <div class="form-group">
    <label for="exampleInputEmail1" align="center">Running Movies</label>
    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
    <button type="button" class="btn btn-primary btn-lg btn-block">Primary</button>
  </div>
  </form>
  
  </div>
  <div class="col-md-4">.col-md-4</div>
  <div class="col-md-2"></div>
</div> -->

<!-- <div class="jumbotron">
<div class="container">
  <p><a class="btn btn-primary btn-lg" href="#" role="button">Running Movies</a></p>
</div></div>
<div class="jumbotron"><div class="container">
  <p><a class="btn btn-primary btn-lg" href="#" role="button">Upcoming Movies</a></p>
</div></div>
<div class="jumbotron"><div class="container">
  <p><a class="btn btn-primary btn-lg" href="#" role="button">Sign In</a></p>
</div></div>
<div class="jumbotron"><div class="container">

  <p><a class="btn btn-primary btn-lg" href="#" role="button">Sign Up</a></p>
</div></div> -->
<div class="container text-center">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-xs-4 center-block" >
        <a class="btn btn-default" href="RunningMovies" role="button">
          <img src="http://www.designmantic.com/create_thumb?id=12105&company=Movies&slogan=Running&variant=1" alt="running" class="img-thumbnail">
          </a>
        </div>
         &nbsp;&nbsp;
        <div class="col-xs-4">
        <a class="btn btn-default" href="UpcomingMovies" role="button">
          <img src="http://www.designmantic.com/create_thumb?id=12116&company=Movies&slogan=Upcoming&variant=1"  alt="upcoming" class="img-thumbnail">
          </a>
       </div>
       </div>
      <!--  <div class="row">
        <div class="col-md-4">
        <a class="btn btn-default" href="LoginPage" role="button">
          <img src="http://www.designmantic.com/create_thumb?id=10213&company=Sign+In&slogan=&variant=1" alt="signin" class="img-thumbnail">
          </a>
        </div>
        <div class="col-md-4">
          <a class="btn btn-default" href="register" role="button">
          <img src="http://www.designmantic.com/create_thumb?id=10201&company=Sign+Up&slogan=&variant=1" alt="signup" class="img-thumbnail">
          </a>
       </div>
       </div> -->
       
      


   <div class="navbar navbar-default navbar-fixed-bottom">
    <div class="container">
      <p class="navbar-text pull-right">© 2015 - SSDI Team - 1
           
      </p>
      
    </div>
    
    
  </div>
</body>
</html>