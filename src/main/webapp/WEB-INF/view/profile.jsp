<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/layout/" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Profile Page</title>
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