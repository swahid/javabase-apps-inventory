<%@ include file="/WEB-INF/tags/layout/includes.jsp"%>
<html>
<head>
    <title>Profile Page</title>
</head>
<body>
    <t:admin>
        <jsp:body>
            <p>Welcome <sec:authentication property="principal.username" /> </p>
            
            <p>Welcome <c:out value="${userDeatils.firstName} ${userDeatils.lastName}"></c:out></p>
            <p>Role <c:out value="${userDeatils.userRole}"></c:out></p>
            
        </jsp:body>
    </t:admin>
</body>

</html>
