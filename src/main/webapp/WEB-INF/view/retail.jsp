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
                                  <h1>Add New Product In Short </h1>
                            </div>
                    </center>
            <c:url var="action" value="retail/addRetail" />
                   <form:form action="${action}" method="post"
                            commandName="retail"  class="form-horizontal">
                  <div class="form-group">
                    <label  class="col-sm-2 control-label">Contact</label>
                        <div class="col-sm-4">
                             <form:input path="contact" class="form-control"/>
                        </div>
                  </div>
                  <div class="form-group">
                     <label class="col-sm-2 control-label">Vouture No</label>
                        <div class="col-sm-4">
                             <form:input path="voutureNo" class="form-control" />
                        </div>
                  </div>
                  <div class="form-group">
                     <label class="col-sm-2 control-label">Quantity</label>
                        <div class="col-sm-4">
                             <form:input path="quantity" class="form-control" />
                        </div>
                  </div>
                  <div class="form-group">
                     <label class="col-sm-2 control-label">Total </label>
                        <div class="col-sm-4">
                             <form:input path="totalAmount" class="form-control" />
                        </div>
                  </div>
                  <div class="form-group">
                     <label class="col-sm-2 control-label">Pay</label>
                        <div class="col-sm-4">
                             <form:input path="pay" class="form-control" />
                        </div>
                  </div>
                  
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-2">
                          <button type="submit" class="btn btn-primary btn-sm btn-block">Add</button>
                    </div>
                  </div>
            </form:form>
            
            <c:if test="${not empty retailList}">
                <div class="table-responsive">
                    <table class="table table-bordered ">
        
                        <thead>
                            <tr class="info">
                                <th>Sl No.</th>
                                <th>Contact</th>
                                <th>Vouture</th>
                                <th>Quantity</th>
                                <th>Total Amount</th>
                                <th>Pay</th>
                            </tr>
                        </thead>
        
                        <tbody>
                            <c:forEach var="retail" items="${retailList}" varStatus="itemSl">
                                <tr class="success">
                                    <td>${itemSl.index+1}</td>
                                    <td>${retail.contact}</td>
                                    <td>${retail.voutureNo}</td>
                                    <td>${retail.quantity}</td>
                                    <td>${retail.totalAmount}</td>
                                    <td>${retail.pay}</td>
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
