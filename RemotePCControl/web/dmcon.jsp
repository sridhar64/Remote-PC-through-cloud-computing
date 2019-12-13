<%@page import="java.sql.ResultSet"%><%@page import="main.Db"%><%@page contentType="text/html" pageEncoding="UTF-8"%><%
    ResultSet rs;
    int count = 0;
    String un=request.getParameter("un");
    String s = "select d,m,c from detail where username='"+un+"'";
    int d=0,m=0,c=0;
    main.Db db = Db.getDb();
    rs = db.ex(s);
    for (; rs.next();) {
        count++;
        d = Integer.parseInt(rs.getString("d"));
        m = Integer.parseInt(rs.getString("m"));
        c = Integer.parseInt(rs.getString("c"));
        s="";
        s+=d+";"+m+";"+c+";";
        System.out.println("java dmcon : "+s);
        out.print(s);
    }
    db.close();
    rs.close();
    if (count == 0) {
        out.print("0");
    }
%>