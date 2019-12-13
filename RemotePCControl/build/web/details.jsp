<%-- 
    Document   : details
    Created on : Aug 16, 2018, 7:37:58 PM
    Author     : K.sridhar reddy
--%>

<%@page import="main.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int d=Integer.parseInt(request.getParameter("d"));
            int m=Integer.parseInt(request.getParameter("m"));
            int c=Integer.parseInt(request.getParameter("c"));
            String un=(String) session.getAttribute("username");
            Db db=Db.getDb();
            out.write(db.exu("update detail set d="+d+",m="+m+",c="+c+" where username='"+un+"'"));
        %>
    </body>
</html>
