<%@page import="main.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int h = 0,w=0;
    main.Db db =Db.getDb();
    String un=request.getParameter("un");
    h = Integer.parseInt(request.getParameter("height"));
    w = Integer.parseInt(request.getParameter("width"));
    db.exu("update monitorsettings set height=" + h+",width="+w+" where username='"+un+"'");
%>
