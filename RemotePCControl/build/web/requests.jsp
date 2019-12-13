<%-- 
    Document   : requests
    Created on : Aug 15, 2018, 1:15:19 PM
    Author     : Kadiyala
--%>

<%@page import="main.Log"%>
<%@page import="main.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>requests</title>
    </head>
    <body>
        <%
            String t=request.getParameter("m");
            String un=(String) session.getAttribute("username");
            String tn=request.getParameter("un");
            User u=new User();
            int n=0;
            out.write(n=u.insertRequests(un, tn, t));
            Log.log("Requests : "+n);
        %>
    </body>
</html>
