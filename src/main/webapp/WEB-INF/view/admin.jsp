<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/layout/" %>
<html>
<head>
    <title>Admin Panel</title>
</head>
<body>
    <t:admin>
        <jsp:body>
            <p>Hi ${user}</p>
            <p>Welcome to ${message}</p>
        </jsp:body>
    </t:admin>
</body>

</html>
