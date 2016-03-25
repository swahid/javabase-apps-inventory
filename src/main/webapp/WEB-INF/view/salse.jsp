<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/layout/"%>
<html>
<head>
<title>Admin Panel</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="css/skins/_all-skins.min.css">

</head>
<body>
	<t:admin>
		<jsp:body>
		
					<center>
							<div class="page-header">
							 	 <h1>Product Salse</h1>
							</div>
					</center>
			<c:url var="action" value="salse/addInvoice" />
       			<form:form action="${action}" method="post"
							commandName="salse"  class="form-horizontal">
				  <div class="form-group">
					 <label class="col-sm-2 control-label">Product</label>
					    <div class="col-sm-4">
					     	<form:input path="product" class="form-control" />
					    </div>
				  </div>
				  <div class="form-group">
					 <label class="col-sm-2 control-label">Quantity</label>
					    <div class="col-sm-4">
					     	<form:input path="quantity" class="form-control" />
					    </div>
				  </div>
				  <div class="form-group">
					 <label class="col-sm-2 control-label">Unite Price</label>
					    <div class="col-sm-4">
					     	<form:input path="unitPrice" class="form-control" />
					    </div>
				  </div>
				  <div class="form-group">
					 <label class="col-sm-2 control-label">Salse Price</label>
					    <div class="col-sm-4">
					     	<form:input path="salsePrice" class="form-control" />
					    </div>
				  </div>
				  <div class="form-group">
					 <label class="col-sm-2 control-label">Discount</label>
					    <div class="col-sm-4">
					     	<form:input path="discount" class="form-control" />
					    </div>
				  </div>
	
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-2">
				      	<button type="submit" class="btn btn-primary btn-sm btn-block">Add</button>
				    </div>
				  </div>
			</form:form>
			
			<c:if test="${not empty invoiceList}">
				<div class="table-responsive">
					<table class="table table-bordered ">
		
						<thead>
							<tr class="info">
								<th>Sl No.</th>
								<th>Invoice</th>
								<th>Product</th>
								<th>Quantity</th>
								<th>Unite Price</th>
								<th>Salse Price</th>
								<th>Discout</th>
							</tr>
						</thead>
		
						<tbody>
							<c:forEach var="invoice" items="${invoiceList}" varStatus="itemSl">
								<tr class="success">
									<td>${itemSl.index+1}</td>
									<td>${invoice.invoice}</td>
									<td>${invoice.quantity}</td>
									<td>${invoice.product}</td>
									<td>${invoice.unitPrice}</td>
									<td>${invoice.salsePrice}</td>
									<td>${invoice.discount}</td>
								</tr>
							</c:forEach>						
						</tbody>
		
					</table>
				</div>
			</c:if>
        </jsp:body>
	</t:admin>
</body>

</html>
