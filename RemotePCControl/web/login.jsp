<%-- 
    Document   : login
    Created on : Aug 14, 2018, 6:10:31 PM
    Author     : K.sridhar reddy
--%>

<%@page import="main.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <h2>User Login</h2>
                </strong>
            </div>
            <%!
                boolean b = false;
                boolean valid = true;
                String un;
            %>

            <%
                String validString = request.getParameter("download");
                if (validString != null) {
                    if (validString.compareToIgnoreCase("true") == 0) {
                        valid = false;
                    }
                }
                un = request.getParameter("user");
                String pa = request.getParameter("pass");
                b = false;
                if (un != null) {
                    User u = new User(un, pa);
                    b = u.validate();
                    if (b == true) {
                        session.setAttribute("username", (String) un);
                        response.sendRedirect("home.jsp");
                    } else {
                        out.write("<div class=\"alert alert-danger col-sm-12 text-center\"><a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a><h4>");
                        out.write("User Name or Password Does'nt Exists");
                        out.write("</h4></div>");
                    }
                }
            %>
            <div class="col-sm-3">

            </div>
            <div class="jumbotron col-sm-6">

                <form action="login.jsp" method="post" class="form-horizontal" role="form">
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input type="text" class="form-control" placeholder="UserName" name="user" autofocus>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">          
                            <input type="password" class="form-control" placeholder="Password" name="pass">
                        </div>
                    </div>
                    <div class="form-group">        
                        <div class="col-sm-12">
                            <button type="submit" class="btn btn-success btn-block">Login <span class="fa fa-sign-in"></span></button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-sm-3">

            </div>      
        </div>
        <%
            if ((un == null) && (valid == false)) {
        %>

        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" id="cl1">&times;</button>
                        <h4 class="modal-title">Download</h4>
                    </div>
                    <div class="modal-body">
                        <p>Download the JAR file and run it to host your pc. First login and set parameters and host in home page. Then run JAR and log in to HOST</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal" id="cl2">Download</button>
                    </div>
                </div>

            </div>
        </div>

        <script>
            $(document).ready(function () {
                $("#myModal").modal();
                $('#cl1').click(function () {
                    down();
                });
                $('#cl2').click(function () {
                    down();
                });
                function down()
                {
                    location.href = "download.jsp";
                }
            });
        </script>
        <%
            }
        %>
    </body>
</html>