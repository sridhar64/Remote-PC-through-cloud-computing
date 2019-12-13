<%-- 
    Document   : accept
    Created on : Aug 15, 2018, 3:34:13 PM
    Author     : K.sridhar reddy
--%>

<%@page import="main.Log"%>
<%@page import="main.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String t=request.getParameter("t");
            String tn=request.getParameter("m");
            String un=(String) session.getAttribute("username");
            User u=new User();
            out.write(u.acceptRequests(un, tn,Integer.parseInt(t)));
            Log.log("accept : mode="+t+" to name="+tn+" username="+un);
        %>
    </body>
</html>
