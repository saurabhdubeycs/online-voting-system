<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
     <title> 'candidate.jsp'</title>
     
     <link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/sl-slide.css">
<script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
 
<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
<style>
header #logo {
    width: 200px;
    height: 105px;
    background: url(images/logo2.png) no-repeat 0 20%
	}
	header.navbar .nav>li>a {
    padding-top: 10px;
    padding-bottom: 10px;
    color: #333;
    font-family: "Fjalla One";
    font-size: 19px;
	}
	.title {
    background-color: #40d866;
	}
	
</style>
   </head>
  
  <body>
  
  <header class="navbar navbar-fixed-top">
<div class="navbar-inner">
<div class="container">
<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</a>
<a id="logo" class="pull-left" href="index.jsp"></a>
<div class="nav-collapse collapse pull-right">
<ul class="nav">
<li class="active"><a href="index.jsp">Home</a></li>
<li><a href="aboutus.jsp">About Us</a></li>
<li><a href="registration.jsp">Registration</a></li>
<li><a href="admin/voterlogin.jsp">Voting</a></li>
<li><a href="results.jsp">Results</a></li>


<li class="divider"></li>

</li><li>&nbsp; &nbsp;</li>
<li>
<image src="images/logo1.jpg" alt="logo image" />
</li>
</ul>
</div> 
</div>
</div>
</header>

 
<section class="title">
<div class="container">
<div class="row-fluid">
<div class="span6">
<h1>Registration</h1>
</div>
<div class="span6">
<ul class="breadcrumb pull-right">
<li><a href="index-2.html">Home</a> <span class="divider">/</span></li>
<li><a href="#">Pages</a> <span class="divider">/</span></li>
<li class="active">Registration</li>
</ul>
</div>
</div>
</div>
</section>
 <div class="container">
 <div class="span6">
<section id="registration-page">
<form class="left" action='servlet/Ad_user' method="POST">
<fieldset class="registration-form">
<center><h2>Candidate Registration<h2></center>
<div class="control-group">
 
<div class="controls">

<input type="text" id="username" name="username" placeholder="Username" class="input-long">

</div>
</div>

<div class="control-group">
 
<div class="controls">

 <input type="text" id="parti" name="partiname" placeholder="Parti Name" class="input-long">
</div>
</div>
<div class="control-group">
 
<div class="controls">
<input type="date" id="age" name="dob" placeholder="dob" class="input-long">

</div>
</div>
<div class="control-group">
 
<div class="controls">
<input type="number" id="id" name="adhar" placeholder="AdharKard no." class="input-long">
</div>
</div>

<div class="control-group">
 
<div class="controls">

<select id="sel1" name="cet">
	<option>Cetegory</option>
    <option>Gen</option>
    <option>Obc</option>
    <option>Sc</option>
    <option>St</option>
	<option>Other</option>
  </select>

</div>
</div>

<div class="control-group">
<div class="controls">
  
    <select id="sel1" name="gender">
	<option>Gender</option>
    <option>Male</option>
    <option>Female</option>
  </select>
</div>
</div>
<div class="control-group">
 
<div class="controls">

 <input type="password" id="password" name="pass" placeholder="Password" class="input-long">
</div>
</div>
<div class="control-group">
 
<div class="controls">
<button class="btn btn-success btn-large btn-block">Register</button>
</div>
</div>
</fieldset>
</form>
</div>

</section>

 <section id="registration-page" class="container">
<form class="right" action='servlet/Ad_voter' method="POST">
<fieldset class="registration-form">
<div class="control-group">
 
<div class="controls">
<center><h2>Voter Registration<h2></center>
<input type="text" id="username" name="username" placeholder="Username" class="input-long">

</div>
</div>
<div class="control-group">
 
<div class="controls">

<input type="Date" id="dob" name="dob"  class="input-long">

</div>
</div>

<div class="control-group">
 
<div class="controls">

<input type="number" id="id" name="voterid" placeholder="VoterId no." class="input-short">
</div>
</div>
<div class="control-group">
 
<div class="controls">
  <select id="sel1" name="cet">
	<option>Cetegory</option>
    <option>Gen</option>
    <option>Obc</option>
    <option>Sc</option>
    <option>St</option>
	<option>Other</option>
  </select>

</div>
</div>

<div class="control-group">
 
<div class="controls">

    <select id="sel1" name="gender">
	<option>Gender</option>
    <option>Male</option>
    <option>Female</option>
  </select>
</div>
</div>
<div class="control-group">
 
<div class="controls">

<input type="password" id="password" name="password" placeholder="Password" class="input-long">
</div>
</div>
<div class="control-group">
 
<div class="controls">
<button class="btn btn-success btn-large btn-block">Register</button>
</div>
</div>
</fieldset>
</form>
</section>
<section id="bottom" class="main">
 
<div class="container">
 
<div class="row-fluid">
 </div>
 </div>
 </div>
</section>
 
 
<footer id="footer">
<div class="container">
<div class="row-fluid">
<div class="span5 cp">
&copy; 2013 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">ShapeBootstrap</a>. All Rights Reserved.
</div>
 
<div class="span6">
<ul class="social pull-right">
<li><a href="#"><i class="icon-facebook"></i></a></li>
<li><a href="#"><i class="icon-twitter"></i></a></li>
<li><a href="#"><i class="icon-pinterest"></i></a></li>
<li><a href="#"><i class="icon-linkedin"></i></a></li>
<li><a href="#"><i class="icon-google-plus"></i></a></li>
<li><a href="#"><i class="icon-youtube"></i></a></li>
<li><a href="#"><i class="icon-tumblr"></i></a></li>
<li><a href="#"><i class="icon-dribbble"></i></a></li>
<li><a href="#"><i class="icon-rss"></i></a></li>
<li><a href="#"><i class="icon-github-alt"></i></a></li>
<li><a href="#"><i class="icon-instagram"></i></a></li>
</ul>
</div>
<div class="span1">
<a id="gototop" class="gototop pull-right" href="#"><i class="icon-angle-up"></i></a>
</div>
 
</div>
</div>
</footer>
 
 
 
</div>
 
<script src="js/vendor/jquery-1.9.1.min.js"></script>
<script src="js/vendor/bootstrap.min.js"></script>
<script src="js/main.js"></script>
  
  
  </body>
</html>
