<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
    <script type="text/javascript">
function greyOut(id){
var row = document.getElementById(id);
row.style.backgroundColor = "grey";
	
}
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
                        <!-- <a onclick="forcast()" class="btn btn-primary" >Forecast</a> --> 
                            
                            <input type="button" value="Add New" class="btn btn-primary" />
                            <input type="button" value="Filter" class="btn btn-primary" />
                        </div>
                    </div>
                    <div class="row mt-12">
                        <div class="col-md-12">
                        <table id="table1" class="table table-striped table-bordered dt-responsive nowrap" cellpadding="0" cellspacing="0" width="100%">
	<tr>
	<th></th>
	<th>Oppty Name</th>
	<th>Contract Type</th>
	<th>Plan Date</th>
	<th>Estimated Amt</th>
	<th>Lead sales Rep</th>
	<th>Branch</th>
	<th>VM</th>
	
	</tr> 
<c:forEach var="sf" items="${oppsData}">   
   <tr id="${sf.oppsId}">
   <td><input onClick="greyOut(${sf.oppsId})" type="button" value="Remove" class="btn btn-primary" /></td>
   <td>${sf.oppsName}</td>  
   <td>${sf.contType}</td>
      <td>${sf.planDt}</td>  
   <td>${sf.estAmt}</td>  
   <td>${sf.leadRep}</td>  
   <td>${sf.branch}</td>  
   <td>${sf.vm}</td>
   
   <%--
   <td>${sf.AccName}</td>  
      --%>
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