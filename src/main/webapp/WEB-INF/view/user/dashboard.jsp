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
          <font color="red">
				<span style="align:center">${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</span>
		  </font>
            <p>Welcome to ${message}</p>
            <a href="dashboard">dashboard page</a>
        </jsp:body>
    </t:admin>
</body>

</html>
