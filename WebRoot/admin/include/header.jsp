<%@ page import="admin.Action" %>
<%@page import="java.sql.*" %>

<%
String user_session=(String)session.getAttribute("user");
if(user_session ==null)
{
//response.sendRedirect("home.jsp");
out.print("<script>window.location.href='login.jsp'</script>");
}
							    
%>

<!DOCTYPE html>
<html lang="en">
<head>        
        <!-- META SECTION -->
        <title>Ebus Admin Panel</title>            
        <link rel="icon" href="favicon.ico" type="image/x-icon" />    
        <link rel="stylesheet" type="text/css" id="theme" href="css/theme-default.css"/>
        <!-- EOF CSS INCLUDE -->   
        <style>
	.btn.btn-rounded {
	    background: transparent;
	    color: #22262e;
	    -moz-border-radius: 12px;
	    -webkit-border-radius: 12px;
	    border-radius: -5px;
	    border-width: 4px;
	    padding: 2px 5px;
	    font-weight: 600;
	}
		</style>	                                          
</head>