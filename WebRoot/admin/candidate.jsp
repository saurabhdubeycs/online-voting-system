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
                    <li><a href="#">Candidate-panel</a></li>
                </ul>
                <!-- END BREADCRUMB -->
                
                <!-- PAGE TITLE -->
                <div class="page-title">                    
                    <h2><span class="fa fa-arrow-circle-o-left"></span>Candidate Action</h2>
                </div>
                <!-- END PAGE TITLE -->                
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">  
                  <div class="row">
                        <div class="col-md-12">
                            
                            <!-- START DATATABLE EXPORT -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Candidate List</h3>
                                    <div class="btn-group pull-right">
                                        <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i> Export Data</button>
                                        <ul class="dropdown-menu">
												<li><a href="#" onClick ="$('#customers2').tableExport({type:'excel',escape:'false'});"><img src='img/icons/xls.png' width="24"/> XLS</a></li>
												<li><a href="#" onClick ="$('#customers2').tableExport({type:'pdf',escape:'false'});"><img src='img/icons/pdf.png' width="24"/> PDF</a></li>
                                        </ul>
                                    </div>                                    
                                    
                                </div>
                                <div class="panel-body">
                                    <table id="customers2" class="table datatable">
                                        <thead>
                                            <tr>
                                                <th>Candidate Name</th>
                                                <th>D.o.b </th>
                                                <th>Adhar-no.</th>
                                                <th>Party</th>
												<th>Category</th>
												<th>Gender</th>
												<th>vote</th>
												<th>password</th>
												<th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <%Action o1=new Action();
                                        ResultSet rs=o1.selectall("candidate");
                                        while(rs.next())
                                        {
                                         %>
                                            <tr>
                                                <td><%=rs.getString(2)%></td>
                                                <td><%=rs.getString(3)%></td>
												<td><%=rs.getString(4)%></td>
												<td><%=rs.getString(5)%></td>
												<td><%=rs.getString(6)%></td>
												<td><%=rs.getString(7)%></td>
                                                <td><%=rs.getString(9)%></td>
                                                <td><%=rs.getString(10)%></td>
                                                <td><span class="label label-success"><%=rs.getString(8) %></span></td>
                                               <td>
													<a href="operation.jsp?id=<%=rs.getInt(1) %>&act=v" class="btn btn-info btn-rounded btn-sm"><span class="fa fa-eye" style="margin-right: 0px;"></span></a>
													<a href="operation.jsp?id=<%=rs.getInt(1) %>&act=u" class="btn btn-default btn-rounded btn-sm"><span class="fa fa-pencil" style="margin-right: 0px;"></span></a>
													<a href="operation.jsp?id=<%=rs.getInt(1) %>&act=d" class="btn btn-danger btn-rounded btn-sm"><span class="fa fa-times"style="margin-right: 0px;"></span></a>
                                            </td>
                                            </tr>
                                            <%} %>
                                           </tbody>
                                    </table>                                    
                                    
                                </div>
                            </div>
                            <!-- END DATATABLE EXPORT -->                            
                         </div>
                    </div>
                </div>
                <!-- END PAGE CONTENT WRAPPER -->                
            </div>            
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END PAGE CONTAINER -->

      <!-- END MESSAGE BOX-->

        <!-- START PRELOADS -->

        <!-- END PRELOADS -->                      

    <!-- START SCRIPTS -->
        <!-- START PLUGINS -->
        <script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="js/plugins/jquery/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/plugins/bootstrap/bootstrap.min.js"></script>        
        <!-- END PLUGINS -->
        
        <!-- START THIS PAGE PLUGINS-->        
        <script type='text/javascript' src='js/plugins/icheck/icheck.min.js'></script>
        <script type="text/javascript" src="js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>
        
        <script type="text/javascript" src="js/plugins/datatables/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="js/plugins/tableexport/tableExport.js"></script>
			<script type="text/javascript" src="js/plugins/tableexport/jquery.base64.js"></script>
			<script type="text/javascript" src="js/plugins/tableexport/html2canvas.js"></script>
			<script type="text/javascript" src="js/plugins/tableexport/jspdf/libs/sprintf.js"></script>
			<script type="text/javascript" src="js/plugins/tableexport/jspdf/jspdf.js"></script>
			<script type="text/javascript" src="js/plugins/tableexport/jspdf/libs/base64.js"></script>        
        <!-- END THIS PAGE PLUGINS-->  
        
        <!-- START TEMPLATE -->
        <script type="text/javascript" src="js/plugins.js"></script>        
        <script type="text/javascript" src="js/actions.js"></script>        
        <!-- END TEMPLATE -->
    <!-- END SCRIPTS --> 
  
  
  </body>

