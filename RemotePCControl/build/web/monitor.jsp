<%@page import="main.Ftp"%><%@page import="java.sql.ResultSet"%><%@page import="main.Db"%><%@page contentType="text/html" pageEncoding="UTF-8"%><%
    ResultSet rs;
    int fi = Integer.parseInt(request.getParameter("m"));
    int n = 0;
    String un=request.getParameter("un");
    main.Db db = Db.getDb();
    rs = db.ex("select cimg from monitor where username='"+un+"'");
    for (; rs.next();) {
        n = rs.getInt(1);
    }
    /*
    if (n > fi) {
        Ftp f = new Ftp();
        f.setServer("localhost");
        f.setUser("pavan");
        f.setPassword("pavanpavan");
        f.setServerFileName(fi + ".jpg");
        f.delete();
    }
    */
    out.print(n);
%>