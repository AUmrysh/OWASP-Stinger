<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
        <title>Home Page</title>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <title>Success Page for Parameter</title>
   </head>

   <body>
        <h1>Using GET Method to Read Form Data</h1>
        <ul>
            <c:set var="entry_box" value="${param.entry_box}" />
            <c:if test="${not empty entry_box}">
                <li><p><b>User Input:</b><c:out value="${entry_box}" /></p></li>
            </c:if>

            <li><p>
                <a href="index.html">Return Home</a>
            </p></li>
        </ul>

   </body>
</html>