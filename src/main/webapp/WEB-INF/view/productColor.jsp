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
                                  <h1>Add New Color Of Product</h1>
                            </div>
                    </center>
            <c:url var="action" value="productColor/addColor" />
                   <form:form action="${action}" method="post"
                commandName="color" class="form-horizontal">
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Color Code</label>
                        <div class="col-sm-4">
                             <form:input path="colorCode"
                            class="form-control" />
                        </div>
                  </div>
                  <div class="form-group">
                     <label class="col-sm-2 control-label">Color Name</label>
                        <div class="col-sm-4">
                             <form:input path="colorName"
                            class="form-control" />
                        </div>
                  </div>
    
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-2">
                          <button type="submit"
                            class="btn btn-primary btn-sm btn-block">Add</button>
                    </div>
                  </div>
            </form:form>
            
            <c:if test="${not empty colorList}">
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
                            <c:forEach var="color" items="${colorList}"
                                varStatus="itemSl">
                                <tr class="success">
                                    <td>${itemSl.index+1}</td>
                                    <td>${color.colorCode}</td>
                                    <td>${color.colorName}</td>
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
