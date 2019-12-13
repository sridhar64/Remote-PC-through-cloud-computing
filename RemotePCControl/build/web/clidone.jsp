<%@page import="main.Log"%><%@page import="java.net.URLEncoder"%><%@page import="main.Db"%><%@page contentType="text/html" pageEncoding="UTF-8"%><% String s = "",un="";
    main.Db db = Db.getDb();
    s = request.getParameter("q");
    un=request.getParameter("un");
    Log.log("clidone : q:"+s+" , un:"+un);
    URLEncoder.encode(s, "UTF-8");
    Log.log("clidone enc : "+s);
    Log.log("clidone : "+db.exu("insert into exen values('"+un+"','" + s + "')"));
%>
