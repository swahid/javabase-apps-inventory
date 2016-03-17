<%@tag description="Inventory Layout" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@attribute name="sidebar" fragment="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/layout.css" />
</head>
  <body>
    <div id="container">
        <div id="pageheader">
          <jsp:invoke fragment="header"/>
        </div>
        <div id="bodyContainer">
            <div id="leftsidebar">
              <jsp:invoke fragment="sidebar"/>
            </div>
            <div id="content">
              <jsp:doBody/>
            </div>
        </div>
        <div id="pagefooter">
          <jsp:invoke fragment="footer"/>
        </div>
    </div>
  </body>
</html>