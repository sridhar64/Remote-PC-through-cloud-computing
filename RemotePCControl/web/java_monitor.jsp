<%@page import="main.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int n = 0;
    main.Db db = Db.getDb();
    String un=request.getParameter("un");
    n = Integer.parseInt(request.getParameter("imgn"));
    if(n==0)
    {
        new main.Delc(un);
    }
    db.exu("update monitor set cimg=" + n+" where username='"+un+"'");
%>
