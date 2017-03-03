<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function forcast(){
	var id = document.querySelector('.check-branch:checked').id;
	debugger; 
	window.location.href = 'getOpps?brId='+id;
}
</script>
<link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">
 <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
 <link href="<c:url value="/resources/css/dataTables.bootstrap.css" />" rel="stylesheet">
 <link href="<c:url value="/resources/css/responsive.bootstrap.css" />" rel="stylesheet">
 <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-1.12.4.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.js" />"></script>
    <script src="<c:url value="/resources/js/jquery.dataTables.js" />"></script>
    <script src="<c:url value="/resources/js/dataTables.bootstrap.js" />"></script>
    <script src="<c:url value="/resources/js/dataTables.bootstrap.js" />"></script>
    <script src="<c:url value="/resources/js/responsive.bootstrap.js" />"></script>
    <script>
        $(document).ready(function () {
            $('.table').dataTable({
                "scrollY": "200px",
                "scrollCollapse": true,
                "paging": true,
            });

           
        })
    </script>
    
</head>

<body>
<header>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="col-md-4">
                            <img src="<c:url value="/images/logo.png"/>" />
                            <span>BE Sales Forecasting</span>
                        </div>
                        <div class="col-md-8">
                            <div class="pull-right">Forecast Period: <span>3/1/2017 to 5/3/2017</span></div>
                            <ul class="pull-right">
                                <li><a href="#">Global Group</a></li>
                                <li><a href="#">Region</a></li>
                                <li><a href="#">Admin</a></li>
                                <li><a href="#">Preferences</a></li>
                                <li><a href="#">Reports</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>

<section>
            <div class="container-fluid">
                <div class="panel">
                    <div class="row">
                        <div class="col-md-12">
                        <a onclick="forcast()" class="btn btn-primary" >Forecast</a> 
                            
                            <!-- <input type="button" value="Go to Branches" class="btn btn-primary" /> -->
                            <input type="button" value="Un-Submit Region" class="btn btn-primary" />
                        </div>
                    </div>
                    <div class="row mt-12">
                        <div class="col-md-12">
<table id="table1" class="table table-striped table-bordered dt-responsive nowrap" cellpadding="0" cellspacing="0" width="100%">
<!-- <button onclick="forcast()">Forecast</button> -->
	<tr>
	<th></th>
	<th>Branch #</th>
	<th>Branch</th>
	<th>Forecast Status</th>
	<th>Opportunities</th>
	<th>Factor Amt</th>
	<th>HFM Plan</th>
	<th>Updated</th>
	<th>Updated By</th>
	
	</tr> 
<c:forEach var="sf" items="${bracnhes}">   
   <tr id="${sf.brId}">
   <td>
   <input type="checkbox" class="check-branch" id="${sf.brId}">
   </td>  
   <td>${sf.brCode}</td>  
   <td>${sf.brName}</td>  
   <td>${sf.brFcStatus}</td>  
   <td>${sf.brOpps}</td>  
   <td>${sf.fcAmt}</td>  
   <td>${sf.HFMPlan}</td>  
   <td>${sf.updated}</td>  
   <td>${sf.updatedBy}</td>  
   </tr>  
   </c:forEach>  
 </table> 


                            

                        </div>
                    </div>
                </div>
            </div>
        </section>
</body>
</html>