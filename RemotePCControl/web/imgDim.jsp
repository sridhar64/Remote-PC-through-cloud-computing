<%@page import="main.Db"%><%@page import="java.sql.ResultSet"%><% ResultSet rs;
    int h = 0;
    int w = 0;
    String un=request.getParameter("name");
    main.Db db = Db.getDb();
    db.setServerName("localhost");
    db.setUser("pavan");
    db.setPassword("pavanpavan");
    db.setDbName("pctom");
    rs = db.ex("select height,width from monitorsettings where username='"+un+"'");
    for (; rs.next();) {
        h = rs.getInt(1);
        w = rs.getInt(2);
    }
    out.print(h+";"+w+";");%>