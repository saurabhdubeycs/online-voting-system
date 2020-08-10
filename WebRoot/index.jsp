<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
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
    padding-top:10px;
    padding-bottom: 10px;
    color: #333;
    font-family: "Fjalla One";
    font-size: 15px
	}
.sl-slider-wrapper
{
height:500px;
}
.item3 .sl-slide-inner {
     background: red; 
}
sl-slide.css:1
.sl-slide-horizontal .sl-slide-inner {
     background: white; 
	 }
	 header.navbar .nav>li>a {
    padding-top: 10px;
    padding-bottom: 10px;
    color: #333;
    font-family: "Fjalla One";
    font-size: 19px;}
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


</li><li>&nbsp &nbsp</li>
<li>
<image src="images/logo1.jpg" alt="logo image" />
</li>
</ul>
</div> 
</div>
</div>
</header>
 
 
<section id="slide-show">
<div id="slider" class="sl-slider-wrapper">
 
<div class="sl-slider">
 
<div class="sl-slide item1" " data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">
<div class="sl-slide-inner">
<div class="container">
<img class="pull-right" src="images/slied1.jpg" height="100%" width="100%" alt=""/>
</div>
</div>
</div>
.
 
 
<div class="sl-slide item2" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">
<div class="sl-slide-inner">
<div class="container">
<img class="pull-right" src="images/slied2.jpg" height="100%" width="100%" alt=""/>
</div>
</div>
</div>
 
 
<div class="sl-slide item3" data-orientation="horizontal" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">
<div class="sl-slide-inner">
<div class="container">
<img class="pull-right" src="images/slied7.jpg"  height="100%" width="100%" alt="slide"/>
</div>
</div>
</div>
 
</div>
 
 
<nav id="nav-arrows" class="nav-arrows">
<span class="nav-arrow-prev"><i class="icon-angle-left"></i></span>
<span class="nav-arrow-next"><i class="icon-angle-right"></i></span>
</nav>
 
</div>
 
</section>
 
<section class="main-info">
<div class="container">
<div class="row-fluid">
<div class="span9">

</div>
<div class="span3">
</div>
</div>
</div>
</section>
 
<section id="services">
<div class="container">
<div class="center gap">
</div>
</div>
</section>
 
<section id="recent-works">
<div class="container">
<div class="center">
</div>
</div>
</section>
<section id="clients" class="main">
<div class="container">
<div class="row-fluid">
<div class="span2">
<div class="clearfix">
<h4 class="pull-left">OUR PARTNERS</h4>
<div class="pull-right">
<a class="prev" href="#myCarousel" data-slide="prev"><i class="icon-angle-left icon-large"></i></a> <a class="next" href="#myCarousel" data-slide="next"><i class="icon-angle-right icon-large"></i></a>
</div>
</div></section>
 
 
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
 
<script src="js/jquery.ba-cond.min.js"></script>
<script src="js/jquery.slitslider.js"></script>
 
 
<script type="text/javascript"> 
$(function() {
    var Page = (function() {

        var $navArrows = $( '#nav-arrows' ),
        slitslider = $( '#slider' ).slitslider( {
            autoplay : true
        } ),

        init = function() {
            initEvents();
        },
        initEvents = function() {
            $navArrows.children( ':last' ).on( 'click', function() {
                slitslider.next();
                return false;
            });

            $navArrows.children( ':first' ).on( 'click', function() {
                slitslider.previous();
                return false;
            });
        };

        return { init : init };

    })();

    Page.init();
});
</script>
 
 
 
  </body>
</html>
