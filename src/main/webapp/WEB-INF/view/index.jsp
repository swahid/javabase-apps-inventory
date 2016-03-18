<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/layout/" %>

<html>
    <head>
        <meta charset="utf-8">
        <title>Inventory Management System</title>
    </head> 
<body>
    <t:login>
        <jsp:body>
           <%@include file="login.jsp" %>
        </jsp:body>
    </t:login>
    
</body>
</html>
