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
            var data = {}
                data["product"] = $("#productId").val(),
                url ="sales/searchInvoice";
            
            $.ajax({
                type        : "POST",
                contentType : "application/json",
                url     : url,
                data    : JSON.stringify(data),
                dataType: 'json',
                success : function(data) {
                    console.log("SUCCESS: ", data);
                    
                    i++;
                    $("#tableBody").append("<tr class='success'>");
                    $("#tableBody").append("<td>"+i+"</td>");
                    $("#tableBody").append("<td>"+data[0].product+"</td>");
                    $("#tableBody").append("<td>"+data[0].salsePrice+"</td>");
                    $("#tableBody").append("<td>"+data[0].quantity+"</td>");
                    $("#tableBody").append("<td>"+data[0].unitPrice+"</td>");
                    $("#tableBody").append("<tr>");
                },
                error : function(e) {
                    console.log("ERROR: ", e);
                },
                done : function(e) {
                    console.log("DONE");
                }
            });
            
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
            
            <form method="post" id="saleForm" class="form-vertical" accept-charset="utf-8">
                  <div class="form-group">
                     <label class="col-sm-2 control-label">Product</label>
                        <div class="col-sm-4">
                             <input id="productId" class="form-control" required="required"/>
                        </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-2">
                          <input type="submit" id="addProduct" value="Add" class="btn btn-primary btn-sm btn-block" />
                    </div>
                  </div>
            </form>
            </div>
                <div class="row">
                 <div class="col-xs-12">
                <div class="box-body no-padding">
                    <table id="productTable" class="table table-striped">
                        <thead>
                            <tr class="info">
                                <th>Sl No.</th>
                                <th>Product ID</th>
                                <th>Product Name</th>
                                <th>Quantity</th>
                                <th>Price</th>
                            </tr>
                        </thead>
                        <tbody id="tableBody" class="success">
	                        
                        </tbody>
                    </table>
                </div>
                </div>
            </div>
        </jsp:body>
    </t:admin>
</body>

</html>
