<%-- 
    Document   : register
    Created on : Aug 14, 2018, 6:33:40 PM
    Author     : K.sridhar reddy
--%>

<%@page import="main.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="jquery-1.11.3.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <link rel="stylesheet" alt="text/css" href="bootstrap/css/bootstrap.min.css"></link>
        <link rel="stylesheet" href="css/font-awesome.min.css">
    </head>

    <body>
        <div class="container">
            <div class="well col-sm-12 text-center">
                <strong>
                    <h2>User Registration</h2>
                </strong>
            </div>
            <%!
                String ss = "";
                boolean b = false,valid=true;
                String un = "", s[] = new String[100];
            %>

            <%
                ResultSet rs;
                Db db = Db.getDb();
                String fn = request.getParameter("full");
                int i;
                un = request.getParameter("user");
                String pa = request.getParameter("pass");
                String em = request.getParameter("email");
                if (un != null) {
                    rs = db.ex("select username from user");
                    for (i = 0; rs.next(); i++) {
                        s[i] = rs.getString("username");
                        //out.write(s[i]);
                    }
                    db.close();
                    rs.close();
                    b = false;
                    for (int j = 0; j < i; j++) {
                        if (s[j].compareTo(un) == 0) {
                            b = true;
                        }
                    }
                    if (b == false) {
                        valid=false;
                        String query = "insert into user values('" + fn + "','" + un + "','" + pa + "','" + em + "')";
                        db.exu(query);
                        session.setAttribute("username", (String) un);
                        query = "insert into monitor values('" + un + "',0)";
                        db.exu(query);
                        query = "insert into monitorsettings values('" + un + "',0,0)";
                        db.exu(query);
                        query = "insert into detail values('" + un + "',0,0,0)";
                        db.exu(query);
                        response.sendRedirect("login.jsp?download=true");
                    }
                }
                if (b == true && un != null) {
                    out.write("<div class=\"alert alert-danger col-sm-12 text-center\"><a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a><h4>");
                    out.write("User Already Exists");
                    out.write("</h4></div>");
                }
            %>
            <div class="col-sm-3">

            </div>
            <div class="jumbotron col-sm-6">

                <form method="post" action="register.jsp" class="form-horizontal" role="form">
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input type="text" class="form-control" placeholder="FullName" name="full">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input type="text" class="form-control" placeholder="UserName" name="user">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">          
                            <input type="password" class="form-control" placeholder="Password" name="pass">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">          
                            <input type="password" class="form-control" placeholder="ReType Password">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input type="email" class="form-control" placeholder="Email" name="email">
                        </div>
                    </div>
                    <div class="form-group">        
                        <div class="col-sm-12">
                            <button type="submit" class="btn btn-success btn-block">Register <span class="fa fa-level-up"></span></button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-sm-3">

            </div>      
        </div>
    </body>
</html>
