<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
    <meta charset="UTF-8">
    <title>Financials System Project</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="resources/https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="resources/https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!-- global css -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="resources/css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>    
    <!-- end of global css -->

    <!-- Added Scripts -->
    <!-- advanced modal scripts -->
    <link href="resources/vendors/modal/css/component.css" rel="stylesheet" />
    <!-- /advanced modal scripts -->
    
    <!-- responsive tables scripts -->
    <link href="resources/css/pages/tables.css" rel="stylesheet" type="text/css" />
    <!-- responsive tables scripts -->
    
    <!-- /Added Scripts -->
</head>

<body class="skin-josh">
	<header class="header">
	
		<!-- Logo -->
		<a href="financials_dashboard" class="logo">
			<!-- <img src="resources/img/logo.png" alt="Logo"> -->
			FINANCIALS
        </a>       
        <!-- /Logo -->
        
        <!-- Navigation Icon -->
        <nav class="navbar navbar-static-top" role="navigation" style="background:rgb(81,87,99);">
        	<!-- Sidebar toggle button-->
        	<div>
        		<a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button" style="background:rgb(81,87,99);">	
        			<div class="responsive_nav"></div>
 				</a>	
 			</div>
 		<!-- /Navigation Icon -->
 		
 		<div class="navbar-right">
 			<ul class="nav navbar-nav">
 				
 				<!-- Messages -->
 				<li class="dropdown messages-menu">
 					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
 						<i class="livicon" data-name="message-flag" data-loop="true" data-color="#fff" data-hovercolor="#fff" data-size="28"></i>
 							<!-- <span class="label label-success">Number of Messages</span> -->
 					</a>
 					
 					<ul class="dropdown-menu dropdown-messages pull-right">
 						<li class="dropdown-title">Messages</li>
 							<li class="read message">
 								<a href="javascript:;" class="read message"> <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Unread">
 									<span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span></i>
 										<img data-src="resources/holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
 											<div class="message-body">
 												<strong>Administrator</strong>
 												<br>Are you okay?<br>
 												<small>1 minute ago</small>
 											</div>
 								</a>
 							</li>
 							
 							<li class="footer">
 								<a href="#">View all</a>
 							</li>
 					</ul>
                </li>
                <!-- /Messages -->
                
                <!-- Notifications -->
                <li class="dropdown notifications-menu">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown">
                		<i class="livicon" data-name="bell" data-loop="true" data-color="#fff" data-hovercolor="#fff" data-size="28"></i>
                			<!-- <span class="label label-warning">Number of Notifications</span> -->
                   	</a>
                   	
                   	<ul class=" notifications dropdown-menu">
                   		<li class="dropdown-title">Notifications</li>
                   			<li>
                   				<ul class="menu">
                   					<li>
                   						<i class="livicon danger" data-n="timer" data-s="20" data-c="white" data-hc="white"></i>
                   							<a href="#">Capstone deliverables</a>
                   								<small class="pull-right">
                   									<span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                   									Just Now
                   								</small>
                                    </li>
                                    
                                    <li>
                                    	<i class="livicon danger" data-n="timer" data-s="20" data-c="white" data-hc="white"></i>
                                    		<a href="#">PM deliverables</a>
                                    			<small class="pull-right">
                                    				<span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                   									Just Now
                   								</small>
                                    </li>
                                    
                                    <li>
                                    	<i class="livicon danger" data-n="timer" data-s="20" data-c="white" data-hc="white"></i>
                                    		<a href="#">BI/InfoSec deliverables</a>
                                    			<small class="pull-right">
                                    				<span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                    				Just Now
                                    			</small>
                                    </li>
                                </ul>
                            </li>
                            
                            <li class="footer">
                            	<a href="#">View all</a>
                            </li>
                    </ul>
                </li>
                <!-- /Notifications -->
                
                <!-- User Information -->
                <li class="dropdown user user-menu">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown">
                		<img data-src="resources/holder.js/35x35/#fff:#000" width="35" class="img-circle img-responsive pull-left" height="35" alt="F">
                			<div class="riot">
                				<div> User
                					<span>
                						<i class="caret"></i>
                   					</span>
                   				</div>
                   			</div>
                   	</a>
                   	
                   	<ul class="dropdown-menu">
                   		<!-- user image -->
                   		<li class="user-header bg-light-blue">
                   			<img data-src="resources/holder.js/90x90/#fff:#000" class="img-responsive img-circle" alt="User Image">
                   				<p class="topprofiletext">Accountant</p>
                   		</li>
                   		
                   		<!-- user information sub-menu -->
                   		<li>
                   			<a href="#">
                   				<i class="livicon" data-name="user" data-s="18"></i>
                   				Profile
                            </a>
                        </li>
                        
                        <!-- <li role="presentation"></li> -->
                        
                        <li>
                        	<a href="#">
                        		<i class="livicon" data-name="gears" data-s="18"></i>
                        		Account Settings
                            </a>
                         </li>
                         
                         <li class="user-footer">
                         	<div class="pull-left">
                         		<a href="#">
                         			<i class="livicon" data-name="lock" data-s="18"></i>
                         			Lock
                                </a>
                            </div>
                            
                            <div class="pull-left">
                         		<a href="#">
                         			<i class="livicon" data-name="sign-out" data-s="18"></i>
                         			Logout
                                </a>
                            </div>
                         </li>
                	</ul> 
                </li>
            </ul>
        </div>
        </nav>
	</header>
	
	<!-- left side (logo and sidebar) -->
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<aside class="left-side sidebar-offcanvas">
			<section class="sidebar">
				<div class="page-sidebar sidebar-nav">
					<div class="clearfix"></div>
					
					<!-- Sidebar -->
					<ul id="menu" class="page-sidebar-menu">
					
					<!-- Dashboard -->
					<li>
						<a href="financials_dashboard">
							<!--  <i class="livicon" data-name=" " data-size="18" data-c="#fff" data-hc="#fff" data-loop="true"></i> -->
  								<span class="title">Dashboard</span>
  						</a>
  					</li>
  					
  					<!-- System Setup -->
  					<li>
  						<a href="#">
  							<!-- <i class="livicon" data-name=" " data-size="18" data-c="#fff" data-hc="#fff" data-loop="true"></i> -->
  								<span class="title">System Setup</span>
  								<span class="fa arrow"></span>
                        </a>
                        
                        <!-- System Setup sub-menu -->
                        <ul class="sub-menu">
                        	<li>
                        		<a href="admin_accountTypes">
                        			<i class="fa fa-angle-double-right"></i>
                        			Account Types
                                </a>
                             </li>
                             
                             <li>
                             	<a href="admin_rCenters">
                             		<i class="fa fa-angle-double-right"></i>
                             		Responsibility Centers
                             	</a>
                             </li>
                             
                             <li>
                             	<a href="admin_CoA">
                             		<i class="fa fa-angle-double-right"></i>
                             		Chart of Accounts
                             	</a>
                             </li>
                             
                             <li>
                             	<a href="admin_transaction">
                             		<i class="fa fa-angle-double-right"></i>
                             		Transaction Type
                             	</a>
                             </li>
                             
                             <li>
                             	<a href="admin_funds">
                             		<i class="fa fa-angle-double-right"></i>
                             		Fund
                             	</a>
                             </li>
                        </ul>     
                    </li>
                    
                    <!-- Transaction-->
                    <li>
                    	<a href="#">
                    		<!--i class="livicon" data-name=" " data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i-->
                    			<span class="title">Transaction</span>
                    			<span class="fa arrow"></span>
                    	</a>
                    	
                    	<!-- Transaction sub-menu -->
                    	<ul class="sub-menu">
                    		
                    		<!-- Journal Entry Voucher -->
                    		<li>
                    			<a href="#">
                    				<i class="livicon" data-name="notebook" data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i>
                    					<span class="title">Journal Entry Voucher</span>
                                </a>
                                
                                <ul class="sub-menu">
                                	<li>
                                		<a href="JEV/create">
                                			<i class="fa fa-angle-double-right"></i>
                                			Create JEV
                                		</a>
                                	</li>
                                	
                                	<li>
                                		<a href="JEV/list">
                                			<i class="fa fa-angle-double-right"></i>
                                			Review JEV
                                    	</a>
                                	</li>
                                </ul>
                            </li>
                            
                            <!-- Accounts Receivable -->
                            <li>
                            	<a href="#">
                            		<i class="livicon" data-name="sign-in" data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i>
                            			<span class="title">Accounts Receivable</span>
                            	</a>
                            </li>
                            
                            <!-- Accounts Payable -->
                            <li>
                            	<a href="#">
                            		<i class="livicon" data-name="sign-out" data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i>
                            			<span class="title">Accounts Payable</span>
                            	</a>
                            </li>
                            
                            <!-- Collections -->
                            <li>
                            	<a href="#">
                            		<i class="livicon" data-name="piggybank" data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i>
                            			<span class="title">Collections</span>
                            	</a>
                            </li>
                            
                            <!-- Disbursement -->
                            <li>
                            	<a href="#">
                            		<i class="livicon" data-name="money" data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i>
                            			<span class="title">Disbursement</span>
                            	</a>
                            </li>
                        </ul>        
					</li>
					
					<!-- Queries -->
					<li>
						<a href="#">
							<!-- <i class="livicon" data-name=" " data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i> -->
									<span class="title">Queries</span>
									<span class="fa arrow"></span>
						</a>
						
						<!-- Queries sub-menu -->
						<ul class="sub-menu">
							
							<!-- Journal Entry Voucher -->
							<li>
								<a href="#">
									<i class="livicon" data-name="notebook" data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i>
										<span class="title">Journal Entry Voucher</span>
								</a>
							</li>
							
							<!-- Accounts Receivable -->
							<li>
								<a href="#">
									<i class="livicon" data-name="sign-in" data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i>
										<span class="title">Accounts Receivable</span>
								</a>
							</li>
							
							<!-- Accounts Payable -->
							<li>
								<a href="#">
									<i class="livicon" data-name="sign-out" data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i>
										<span class="title">Accounts Payable</span>
								</a>
							</li>
							
							<!-- Chart of Accounts -->
							<li>
								<a href="#">
									<i class="fa fa-angle-double-right"></i>
									Chart of Accounts
								</a>
							</li>
							
							<!-- Responsibility Center -->
							<li>
								<a href="#">
									<i class="fa fa-angle-double-right"></i>
									Responsibility Center
								</a>
							</li>
							
							<!-- Fund -->
							<li>
								<a href="#">
									<i class="fa fa-angle-double-right"></i>
									Fund
								</a>
							</li>
                        </ul>
                    </li>
                    
                    <!-- Reports -->
                    <li>
                    	<a href="#">
                    		<!-- <i class="livicon" data-name=" " data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i> -->
                    			<span class="title">Reports</span>
                    			<span class="fa arrow"></span>
                    	</a>
                    	
                    	<!-- Reports sub-menu -->
                    	<ul class="sub-menu">
                    		
                    		<!-- Financial Statements -->
                    		<li>
                    			<a href="#">
                    				<i class="fa fa-angle-double-right"></i>
                                 	Financial Statements
                             	</a>
                             	
                             	<!-- Financial Statement sub-menu -->
                             	<ul class="sub-menu">
                             		
                             		<!-- Trial Balance -->
                             		<li>
                             			<a href="#">
                             				<i class="fa fa-angle-double-right"></i>
                             				Trial Balance
                             			</a>
                             			
                             			<!-- Trial Balance sub-menu -->
                             			<ul class="sub-menu">
                             				
                             				<!-- Unadjusted Trial Balance -->
                             				<li>
                             					<a href="#">
                             					Unadjusted Trial Balance
                             					</a>
                             				</li>
                             				
                             				<!-- Pre-Closing Trial Balancee -->
                             				<li>
                             					<a href="#">
                             					Pre-Closing Trial Balance
                             					</a>
                             				</li>
                             				
                             				<!-- Post-Closing Trial Balance -->
                             				<li>
                             					<a href="#">
                             					Post-Closing Trial Balance
                             					</a>
                             				</li>
                             			</ul>       
                        			</li>
                        			
                        			<!-- Statement of Financial Position -->
                        			<li>
                        				<a href="#">
                        					<i class="fa fa-angle-double-right"></i>
                        					Statement of Financial Position
                        				</a>
                        			</li>
                             		
                             		<!-- Statement of Financial Performance -->
                        			<li>
                        				<a href="#">
                        					<i class="fa fa-angle-double-right"></i>
                        					Statement of Financial Performance
                        				</a>
                        			</li>
                        			
                        			<!-- Statement of Cash Flows -->
                        			<li>
                        				<a href="#">
                        					<i class="fa fa-angle-double-right"></i>
                        					Statement of Cash Flows
                        				</a>
                        			</li>
                        			
                        			<!-- Statement of Changes in Assets/Equity -->
                        			<li>
                        				<a href="#">
                        					<i class="fa fa-angle-double-right"></i>
                        					Statement of Changes in Assets/Equity
                        				</a>
                        			</li>
                             	</ul>
                            </li>
                            
                            <!-- Journals and Ledgers -->
                            <li>
                            	<a href="#">
                            		<i class="fa fa-angle-double-right"></i>
                            		Journal/Ledgers
                             	</a>
                             	
                             	<!-- Journals and Ledgers sub-menu -->
                             	<ul class="sub-menu">
                             	
                             		<!-- General Journal -->
                             		<li>
                             			<a href="#">
                             				<i class="fa fa-angle-double-right"></i>
                             				General Journal
                             			</a>
                             		</li>
                             		
                             		<!-- General Ledger -->
                             		<li>
                             			<a href="#">
                             				<i class="fa fa-angle-double-right"></i>
                             				General Ledger
                             			</a>
                             		</li>
                             	</ul>
                        	</li>
                        </ul>
                        
                        <!-- Manage Users -->
                        <li class="active">
                        	<a href="#">
                        		<!-- <i class="livicon" data-name=" " data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i> -->
                        			<span class="title">Manage Users</span>
                        	</a>
                        </li>
                        
                        <!-- Settings -->
                        <li>
                        	<a href="#">
                        		<!-- <i class="livicon" data-name=" " data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i> -->
                        			<span class="title">Settings</span>
                        			<span class="fa arrow"></span>
                        	</a>
                        	
                        	<ul class="sub-menu">
                        		<li>
                        			<a href="#">
                        				<i class="fa fa-angle-double-right"></i>
                        				Institution Details
                        			</a>
                        		</li>
                        	</ul>
                        </li>
                        
                        <!-- Help -->
                        <li>
                        	<a href="#">
                        		<!-- <i class="livicon" data-name=" " data-c="#fff" data-hc="#fff" data-size="18" data-loop="true"></i> -->
                        		<span class="title">Help</span>
                        	</a>
                        </li>
         			</ul>
         			<!-- /Sidebar -->
         		</div>
         	</section>
        </aside>
        
        <!-- Manage Users -->
        <aside class="right-side">
        
        	<!-- Main Content -->
        	<section class="content-header">
        		<h1>Manage Users</h1>
        	</section>
        	
        	<section class="content">
        	
        	<!-- User List Table -->
        	<div class="col-md-12">
        		<div class="portlet box primary">
                             		
               		<div class="portlet-title">
               			<div class="caption" style="position:relative; top:0.25em">
               				Table of Accounts
               			</div>
               			<div class="pull-right">
               				<a class="btn btn-success btn-sm" data-toggle="modal" data-href="#responsive" href="#responsive">
               				Add
               				<i class="fa fa-plus"></i>
               				</a>
               				<button type="button" class="btn btn-danger btn-sm" id="delButton">Remove</button>
               			</div>
               		</div>
                             		
               		<div class="portlet-body">
               		
               			<div class="table-responsive">
               				<table class="table table-striped table-bordered table-hover">
               					<thead>
               						<tr>
	                                    <th>#</th>
	                 					<th>Name</th>
	                 					<th>Username</th>
	                 					<th >Role</th>	         
	                 				</tr>
	                 			</thead>
	                 			
	                 			<tbody>
                 					<tr>
                 						<td>1</td>
                 						<td>Juan Una</td>
                 						<td>uno</td>
                 						<td>user</td>
                 					</tr>
                 					<tr>
                 						<td>2</td>
                 						<td>Dos Lang</td>
                 						<td>sapat</td>
                 						<td>user</td>
                 					</tr>
                 					<tr>
                 						<td>3</td>
                 						<td>Okay Lang</td>
                 						<td>masaya</td>
                 						<td>user</td>
                 					</tr>
                 						
    
           						</tbody>
           					</table>
           				</div>
             		</div>
				</div>
        	
	           	<!--- Add Modal-->
	           	<div class="modal fade in" id="responsive" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
	           		<div class="modal-dialog modal-md">
	           			<div class="modal-content">
	           				<div class="modal-header">
	           					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
	           					<h4 class="modal-title">Add User</h4>
	           				</div>
	           				
	           				<div class="modal-body">
	           					<p>First Name:
	           						<input id="name11" name="name" type="text" class="form-control">
	           					</p>
	           					<p>Last Name:
	           						<input id="name11" name="name" type="text" class="form-control">
	           					</p>
	           					<p>User Role:
	           						<input id="name11" name="name" type="text" class="form-control">
	           					</p>
                                <p>User Name:
	           						<select id="e1" class="form-control select2">
       									<option value="1">Administrator</option>
     									<option value="2">Chief Accountant</option>
     									<option value="3">Accountant</option>
     									<option value="4">AP/AR Officer</option>
     									<option value="5">Collection Officer</option>
     									<option value="6">Collection Officer</option>
     									<option value="7">User</option>			
   									</select>
	           					</p>
	           					<p>Password:
	           						<input id="name11" name="name" type="text" class="form-control">
	           					</p>
	           					<p>Confirm Password:
	           						<input id="name11" name="name" type="text" class="form-control">
	           					</p>
                            </div>
                            
                            <div class="modal-footer">
                            	<button type="button" data-dismiss="modal" class="btn btn-primary">Save</button>
                            	<button type="button" data-dismiss="modal" class="btn">Cancel</button>
                            </div>
                        
                          </div>
     					</div>			
	           						 
					  </div>
	
			</section>                  
		</aside>
    </div> 
    <!-- End Scripts -->
    <!-- global js -->
    <script src="resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
    <!--livicons-->
    <script src="resources/vendors/livicons/minified/raphael-min.js" type="text/javascript"></script>
    <script src="resources/vendors/livicons/minified/livicons-1.4.min.js" type="text/javascript"></script>
    <script src="resources/js/josh.js" type="text/javascript"></script>
    <script src="resources/js/metisMenu.js" type="text/javascript"> </script>
    <script src="resources/vendors/holder-master/holder.js" type="text/javascript"></script>
    <!-- end of global js -->
    
    <!-- Added Scripts -->
    
    <!-- advanced modal scripts -->
    <script src="resources/endors/modal/js/classie.js"></script>
    <script src="resources/vendors/modal/js/modalEffects.js"></script>
    <!-- /advanced modal scripts -->
    
    <!-- /Added Scripts -->
</body>
</html>