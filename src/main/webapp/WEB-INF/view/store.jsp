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
			<c:url var="action" value="store/addProduct" />
       			<form:form action="${action}" method="post"
							commandName="store"  class="form-horizontal">
				  <div class="form-group">
				    <label  class="col-sm-2 control-label">Vouture No</label>
					    <div class="col-sm-4">
					    	 <form:input path="voutureNo" class="form-control"/>
					    </div>
				  </div>
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
					 <label class="col-sm-2 control-label">Top Less</label>
					    <div class="col-sm-4">
					     	<form:input path="topLess" class="form-control" />
					    </div>
				  </div>
	
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-2">
				      	<button type="submit" class="btn btn-primary btn-sm btn-block">Add</button>
				    </div>
				  </div>
			</form:form>
			
			<c:if test="${not empty storeList}">
				<div class="table-responsive">
					<table class="table table-bordered ">
		
						<thead>
							<tr class="info">
								<th>Sl No.</th>
								<th>Color Code</th>
								<th>Color Name</th>
							</tr>
						</thead>
		
						<tbody>
							<c:forEach var="store" items="${storeList}" varStatus="itemSl">
								<tr class="success">
									<td>${itemSl.index+1}</td>
									<td>${store.voutureNo}</td>
									<td>${store.unitPrice}</td>
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
