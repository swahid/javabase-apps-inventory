<%@ include file="/WEB-INF/tags/layout/includes.jsp"%>
<html>
<head>
    <title>Admin Panel</title>
</head>
<body>
    <t:admin>
         <jsp:body>
            <p>Welcome <c:out value="${userDeatils.userName}"></c:out>  </p>
            
            <p>Welcome <c:out value="${userDeatils.firstName} ${userDeatils.lastName}"></c:out></p>
            <p>Role <c:out value="${userDeatils.userRole}"></c:out></p>
            
        </jsp:body>
    </t:admin>
</body>

</html>
