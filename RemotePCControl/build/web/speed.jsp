<%@page import="java.sql.ResultSet"%><%@page import="main.Db"%><%@page contentType="text/html" pageEncoding="UTF-8"%><% String un = request.getParameter("un");
    ResultSet rs;
    int d = 0, m = 0, c = 0;
    Db db = Db.getDb();
    rs = db.ex("select d,m,c from detail where username='" + un + "'");
    for (; rs.next();) {
        d = rs.getInt("d");
        m = rs.getInt("m");
        c = rs.getInt("c");
    }
    out.write(";"+d + ";" + m + ";" + c + ";");
%>