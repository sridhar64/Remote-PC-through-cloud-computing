<%@page import="main.Log"%><%@page import="java.net.URLDecoder"%><%@page import="java.sql.ResultSet"%><%@page import="main.Db"%><%@page contentType="text/html" pageEncoding="UTF-8"%><% ResultSet rs;
    int count = 0;
    String un=request.getParameter("un");
    String s = "select str from exen where username='"+un+"'";
    main.Db db = Db.getDb();
    rs = db.ex(s);
    for (; rs.next();) {
        count++;
        s = rs.getString("str");
        Log.log("javacheck : "+s);
        URLDecoder.decode(s, "UTF-8");
        Log.log("javacheck dec : "+s);
        out.print(s);
    }
    db.close();
    rs.close();
    if (count == 0) {
        out.print("0");
    }
    else
        db.exu("delete from exen where username='"+un+"'");
%>
