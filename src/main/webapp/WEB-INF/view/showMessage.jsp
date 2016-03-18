<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/layout/" %>

<t:main>
    <jsp:attribute name="header">
      Welcome
    </jsp:attribute>
    <jsp:attribute name="sidebar">
      <h1>sidebar</h1>
    </jsp:attribute>
    
    
    <jsp:attribute name="footer">
      <p id="copyright">Copyright @ 2016-2017 Javabase inCorporated </p>
    </jsp:attribute>
    <jsp:attribute name="contentheader">
    <b>Admin Page</b>
    </jsp:attribute>
    <jsp:body>
        <p>main content area</p>
    </jsp:body>
</t:main>