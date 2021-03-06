<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JEV List</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!-- global css -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="resources/css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>
    
    <!-- end of global css -->
    <!-- page level css -->
    <link href="resources/css/pages/tables.css" rel="stylesheet" type="text/css" />
    <!--end of page level css-->
    
    <%@ include file = "../../commonHead.jsp" %>
</head>

<body class="skin-josh">

<%@ include file = "../../commonHeader.jsp" %>

<div class="wrapper row-offcanvas row-offcanvas-left">

<%@ include file = "../../commonLeft.jsp" %>

<aside class="right-side">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <!--section starts-->
        <h1>Review Journal Entry Voucher</h1>
    </section>
    <!--section ends-->
    
    <section class="content">
        <div class="row">
            <div class="col-md-12">
            
                <!-- BEGIN SAMPLE TABLE PORTLET-->
                <div class="portlet box primary">
                    <div class="portlet-title">
                        <div class="caption">
                            <i class="livicon" data-name="camera-alt" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                            List of Journal Entry Vouchers
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="table-scrollable">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Entry Date</th>
                                        <th>Prepared By</th>
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- <span class="label label-sm label-success">Approved</span>
                                    <span class="label label-sm label-info">Pending</span>
                                    <span class="label label-sm label-warning">Suspended</span>
                                    <span class="label label-sm label-danger">Blocked</span> -->
                                    <c:forEach var="datum" items="${data}">
                                        <tr>
                                            <td>${datum.jev_no}</td>
                                            <td>${datum.jev_date}</td>
                                            <td>${datum.prepared_by}</td>
                                            <td>
                                                <c:choose>
                                                    <c:when test="${datum.status eq 'Pending'}">
                                                        <span class="label label-sm label-info">${datum.status}</span>
                                                    </c:when>
                                                    <c:when test="${datum.status eq 'Approved'}">
                                                        <span class="label label-sm label-success">${datum.status}</span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        ${datum.status}
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>
                                            <td>
                                                <a href="${ctx}/JEV/view/${datum.jev_no}" class="btn btn-xs btn-info"><span class="glyphicon glyphicon-edit"></span> View</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- END SAMPLE TABLE PORTLET-->
                
            </div>
        </div>
    </section>
</aside>
</div>

<%@ include file = "../../commonFoot.jsp" %>

</body>
</html>
