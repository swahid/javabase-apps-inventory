<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/layout/"%>
<html>
<head>
<title>Admin Panel</title>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"> 
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="css/AdminLTE.min.css">
<link rel="stylesheet" href="css/skins/_all-skins.min.css">
<!-- jQuery 2.1.4 -->
    <script src="jQuery/jQuery-2.1.4.min.js"></script>
<!-- jquery ajax -->
<script>
    $(document).ready(function($){
        $("#saleForm").submit(function(event){
            
            event.preventDefault();
            console.log($("#productId").val());
        });
    });
</script>

</head>
<body>
    <t:admin>
        <jsp:body>
            <center>
                    <div class="page-header">
                          <h1>Product sales</h1>
                    </div>
            </center>
            <div class="row">
            <c:url var="action" value="sales/searchInvoice" />
            <form:form action="${action}" method="post" id="saleForm" commandName="stock"  class="form-vertical" accept-charset="utf-8">
                  <div class="form-group">
                     <label class="col-sm-2 control-label">Product</label>
                        <div class="col-sm-4">
                             <form:input path="product" id="productId" class="form-control" required="required"/>
                        </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-2">
                          <input type="submit" id="addProduct" value="Add" class="btn btn-primary btn-sm btn-block" />
                    </div>
                  </div>
            </form:form>
            </div>
                <div class="row">
                 <div class="col-xs-12">
                <div class="box-body no-padding">
                    <table class="table table-striped">
                        <thead>
                            <tr class="info">
                                <th>Sl No.</th>
                                <th>Product ID</th>
                                <th>Product Name</th>
                                <th>Quantity</th>
                                <th>Price</th>
                            </tr>
                        </thead>
                        <c:if test="${not empty invoiceList}">
                        <tbody>
                            <c:forEach var="invoice" items="${addproduct}" varStatus="itemSl">
                                <tr class="success">
                                    <td>${itemSl.index+1}</td>
                                    <td>${addproduct.productId}</td>
                                    <td>${productName}</td>
                                    <td>${quantity}</td>
                                    <td>${addproduct.salesPrice}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                      </c:if>
                    </table>
                </div>
                </div>
            </div>
        </jsp:body>
    </t:admin>
</body>

</html>
