<%-- 
    Document   : sql
    Created on : Aug 14, 2018, 6:56:44 PM
    Author     : K.sridhar reddy
--%>

<%@page import="main.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>sql</title>
    </head>
    <body>
        <h1>
            <%
                Db db = Db.getDb();
                int i = db.exu("create table user(name varchar(50),username varchar(20),password varchar(20),email varchar(30))");
                out.println(i);
                i = db.exu("create table monitor(username varchar(20),cimg integer)");
                out.println(i);
                //i = db.exu("insert into monitor(cimg) values(0)");
                //out.println(i);
                i = db.exu("create table detail(username varchar(20),d integer,m integer,c integer)");
                out.println(i);
                i = db.exu("create table exen(username varchar(20),str varchar(1024))");
                out.println(i);
                i = db.exu("create table exee(username varchar(20),str varchar(60000))");
                out.println(i);
                i = db.exu("create table monitorsettings(username varchar(20),height integer,width integer)");
                out.println(i);
                //i = db.exu("insert into monitorsettings(height,width) values(0,0)");
                //out.println(i);
                i = db.exu("create table events(username varchar(20),event varchar(1024))");
                out.println(i);
                i = db.exu("create table requests(fromuser varchar(30),touser varchar(30),mode integer,ar integer)");
                out.println(i);
            %>
        </h1>
    </body>
</html>
