<%@page import="main.Log"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="main.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String s = "",un=request.getParameter("un");
    main.Db db = Db.getDb();
    s = request.getParameter("s");
    Log.log("javadone : "+s);
    URLEncoder.encode(s, "UTF-8");
    Log.log("javadone enc : "+s);
    db.exu("insert into exee values('"+un+"','" + s + "')");
%>