<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="admin.Action" %>
<%@ page import="java.sql.*" %>



<%@include file="include/header.jsp" %>
  
  <body>
 
   <!-- START PAGE CONTAINER -->
        <div class="page-container">
            
            <!-- START PAGE SIDEBAR -->
            <div class="page-sidebar">
                <!-- START X-NAVIGATION -->
                <%@include file="include/y-navigation.jsp" %>
                <!-- END X-NAVIGATION -->
            </div>
            <!-- END PAGE SIDEBAR -->
            
            <!-- PAGE CONTENT -->
            <div class="page-content">
                
                 <!-- START X-NAVIGATION VERTICAL -->
                  <%@include file="include/x-navigation.jsp" %>

                <!-- END X-NAVIGATION VERTICAL -->                      
                
                <!-- START BREADCRUMB -->
                <ul class="breadcrumb">
                    <li><a href="home.html">Home</a></li>
                    <li><a href="#">Add New Bus</a></li>
                </ul>
                <!-- END BREADCRUMB -->
                
                <!-- PAGE TITLE -->
                <div class="page-title">                    
                    <h2><span class="fa fa-arrow-circle-o-left"></span>Update voter data</h2>
                </div>
                <!-- END PAGE TITLE -->                
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">  
                  <form id="id" action="../servlet/Up_voter" method="post" role="form" class="form-horizontal" >
                  
        <%
  	String user_id=request.getParameter("id");
  	String action=request.getParameter("act");
  	Action o1=new Action();
  	if(user_id !=null&& action.equals("u"))
  	
  	{
  	
  		String fields=null;
  		ResultSet rs=o1.selectall(" voter"," WHERE id="+user_id+"","  *");
  	  	if(rs!=null)
  		{
  		while(rs.next())
 	{
 %>
                  				
                    <div class="row">
        
                         <div class="col-md-6">                        
                            <div class="block">
                               
                                <div class="panel-body">                                    
                                    <div class="form-group">
                                        <label class="col-md-3 control-label"> Name:</label>  
                                        <div class="col-md-9">
                                        <input type="hidden" class="form-control" name="id" value="<%=rs.getInt(1) %>"/>
                                            <input type="text" class="form-control" name="name" value="<%=rs.getString(2) %>"/>
                                         </div>
                                    </div>
										<div class="form-group">
                                        <label class="col-md-3 control-label">Gender:</label>  
                                        <div class="col-md-9">
                                            <select  class="form-control" name="gender" value="<%=rs.getString(6) %>">
												<option >Male</option>
												<option >Female</option>
											    </select>
											
                                        </div>
                                    </div>
									  <div class="form-group">
                                        <label class="col-md-3 control-label">D.o.b:</label>  
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="dob" value="<%=rs.getString(3) %>"/>
                                         </div>
                                    </div>
								 
								     <div class="form-group">
                                        <label class="col-md-3 control-label">Cetegory</label>  
                                        <div class="col-md-9">
                                           <select class="form-control select" name="cet" value="<%=rs.getString(5) %>">
                                                <option></option>
                                                <option >gen</option>
                                                <option >obc</option>
                                                <option >sc</option>
                                                <option >st</option>
                                            </select>
											
                                        </div>
                                    </div>
								 
                                  </div>                                               
                                </div>
                        </div>
							<div class="col-md-6">
							 <div class="block">
									<div class="panel-body">                                    
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">voterid:</label>  
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="voterid" value="<%=rs.getString(4) %>"/>
                                         </div>
                                    </div>
									
										<div class="form-group">
                                        <label class="col-md-3 control-label">Password:</label>  
                                        <div class="col-md-9">
										<input type="password" class="form-control" name="password" value="<%=rs.getString(7) %>"/>
                                            
										</div>
                                    </div>
								 
								     <div class="form-group">
                                        <label class="col-md-3 control-label">Status</label>  
                                        <div class="col-md-9">
                                            <select  class="form-control" name="status" value="<%=rs.getString(8) %>">
												<option value="1">Active</option>
												<option value="0">Deactive</option>
											    </select>
											
                                        </div>
                                    </div>
									<div class="btn-group pull-right">
                                       
                                        <button class="btn btn-primary" type="submit">Submit</button>
                                    </div>
								 
                                  </div>                                               
								   </div>
							</div>
                    </div>
                    
					  </form>
                <%
                }}}
                else if(user_id !=null&& action.equals("d"))
                {
                %>
                			
				<div class="row">
				<% 
				boolean rs=o1.deleterecord(" voter"," WHERE id="+user_id+"");
  	  	
  				%>
				<center><h2>Data Deleted.........</h2></center>
				</div>
                <%} 
                else if(user_id !=null&& action.equals("v"))
                {%>
                <div class="row">
             <%       
          ResultSet rs=o1.selectall(" voter"," WHERE id="+user_id+"","  *");
  	  		if(rs!=null)
  			{
  			while(rs.next())
  			{
         %>     
		    
          
                
				<h2>user list</h2>
			 <div class="panel-body"> 
				<div class="col-md-3">
				
				</div>
	<div class="col-md-5">
					
          
  <table class="table">
      <tr>
        <th>Name</th>
        <td><%=rs.getString(2) %></td>
      </tr>
      <tr>
      <th>dob</th>
        <td><%=rs.getString(3) %></td>
      </tr>
      <tr>
      <th>voterid</th>
        <td><%=rs.getString(4) %></td>
      </tr>
		      <tr>
      <th>Cetegory</th>
        <td><%=rs.getString(5) %></td>
        </tr>
		 <tr>
      <th>Gender</th>
        <td><%=rs.getString(6) %></td>
        </tr>
        
      <th>Password</th>
        <td><%=rs.getString(7) %></td>
        </tr>     

  </table>
					
</div>
</div>
<div class="col-md-4"></div>
	</div>
                
  <%}}}
  
  else{
  %>
  <h1>invalid</h1>
    <%} %>            
                

			

                <!-- END PAGE CONTENT WRAPPER -->                
            </div>            
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END PAGE CONTAINER -->

         </div>     
        
    <!-- START SCRIPTS -->
        <!-- START PLUGINS -->
        <script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="js/plugins/jquery/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/plugins/bootstrap/bootstrap.min.js"></script>
        <!-- END PLUGINS -->
        
        <!-- THIS PAGE PLUGINS -->
        <script type='text/javascript' src='js/plugins/icheck/icheck.min.js'></script>
        <script type="text/javascript" src="js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>
        
         <script type="text/javascript" src="js/plugins/bootstrap/bootstrap-datepicker.js"></script>
        <script type="text/javascript" src="js/plugins/bootstrap/bootstrap-timepicker.min.js"></script>        
        <script type='text/javascript' src='js/plugins/bootstrap/bootstrap-select.js'></script>        

        <script type='text/javascript' src='js/plugins/validationengine/languages/jquery.validationEngine-en.js'></script>
        <script type='text/javascript' src='js/plugins/validationengine/jquery.validationEngine.js'></script>        

        <script type='text/javascript' src='js/plugins/jquery-validation/jquery.validate.js'></script>                

        <script type='text/javascript' src='js/plugins/maskedinput/jquery.maskedinput.min.js'></script>
        <!-- END THIS PAGE PLUGINS -->               

        <!-- START TEMPLATE -->
        <script type="text/javascript" src="js/plugins.js"></script>
        <script type="text/javascript" src="js/actions.js"></script>
        <!-- END TEMPLATE -->
        
        <script type="text/javascript">
            var jvalidate = $("#jvalidate").validate({
                ignore: [],
                rules: {                                            
                        bus_name: {
                                required: true,
                                minlength: 2
                                
                        },
                        bus_type: {
                                required: true,
                                
                        },
                        bus_max_sheat: {
                                required: true,
								number:true
                                
                        },
                        bus_regno: {
                                required: true,
                                minlength:10
                        },
                        bus_end_point: {
                                required: true,
                                minlength:10
                        },
                        bus_arrival_time: {
                                required: true
                                
                        },
                        bus_status: {
                                required: true
                               
                        },
						bus_start_point: {
                                required: true,
								minlength:5
                               
                        },
						bus_amenties: {
                                required: true
								
                               
                        }
                        
                    }                                        
                });                                    

        </script>
 
  </body>
</html>
