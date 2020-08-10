
<%@ page import="admin.Action" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>

<%
String user_session=(String)session.getAttribute("user");
if(user_session ==null)
{
}							    
%>

<head>
<title>Voting</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">
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
		 header.navbar .nav>li>a {
    padding-top: 10px;
    padding-bottom: 10px;
    color: #333;
    font-family: "Fjalla One";
    font-size: 19px;
	}
ul li a{color:red;}
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
<a id="logo" class="pull-left" href="index-2.html"></a>
<div class="nav-collapse collapse pull-right">
<ul class="nav">
<li class="active"><a href="index.jsp">Home</a></li>
<li><a href="aboutus.jsp">About Us</a></li>
<li><a href="registration.jsp">Registration</a></li>
<li><a href="admin/voterlogin.jsp">Voting</a></li>
<li><a href="results.jsp">Results|Announcement</a></li>


<li class="divider"></li>

<li><a href="#">  </a></li>

<li>&nbsp;</li>
<li>&nbsp;</li>
<li>&nbsp;</li>
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
<h1>Vote Please....</h1>
</div>
<div class="span6">
<ul class="breadcrumb pull-right">
<li><a href="index-2.html">Home</a> <span class="divider">/</span></li>
<li><a href="#">Pages</a> <span class="divider">/</span></li>
<li class="active">Voting</li>
</ul>
</div>
</div>
</div>
</section>
 
 <section>
 <div class="container">
 <div class="row">
 
 <div class="col-md-3">
 </div>
 
 <div class="col-md-6">
 <form action="servlet/Vote" method="post">

 <table class="table">
    <thead>
      <tr>
        <th>candidate name</th>
        <th>Party</th>
        <th>gender</th>
		<th>Action</th>
      </tr>
    </thead>
    <tbody>
    
    <% 
	String id=request.getParameter("id");
	System.out.println("frist id="+id);
    Action a =new Action();
    
    ResultSet rs=a.selectall("candidate");
    
    while(rs.next())
    {
    %>
   
      <tr class="success">
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(6) %></td>
        <td><%=rs.getString(7) %></td>
		<td>
			
		<input type="hidden" name="id" value="<%=id %>"/>
		
		<a href="voting.jsp?id=<%=rs.getInt(1) %>" type="button" class="btn btn-info">select</a>
            <input  type="radio" name="vote" value="<%=1+rs.getInt(9)%>" />
            
			 	
		</td>	
      </tr>
 <%} %>
    </tbody>
  </table>
  <center><input type="submit" class="btn btn-success" value="vote"></center>
  </form>
 </div>
 </div>
 <div class="col-md-3">
 
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

<!-- Mirrored from shapebootstrap.net/demo/html/nova/terms.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Jan 2017 11:38:01 GMT -->
</html>
