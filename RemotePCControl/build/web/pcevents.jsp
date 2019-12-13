<%@page import="java.net.URLEncoder"%>
<%@page import="main.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String s = "",un=request.getParameter("un");
    main.Db db = Db.getDb();
    s = request.getParameter("q");
    System.out.println("events : "+s);
    db.exu("insert into events values('"+un+"','" + s + "')");
%>
