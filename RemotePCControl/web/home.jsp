<%-- 
    Document   : test
    Created on : Dec 26, 2018, 6:58:56 PM
    Author     : K.sridhar reddy
--%>

<%@page import="main.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    String un;
    int dos, mon, con, avg;
    int sp[] = new int[3];
    User speed = new User();
%>
<%!
    String req[] = new String[100];
    int ll;

    public void seperate(int n) {
        dos = 0;
        mon = 0;
        con = 0;
        switch (n) {
            case 1:
                dos = 1;
                break;
            case 2:
                mon = 1;
                break;
            case 3:
                dos = 1;
                mon = 1;
                break;
            case 4:
                con = 1;
                break;
            case 5:
                dos = 1;
                con = 1;
                break;
            case 6:
                mon = 1;
                con = 1;
                break;
            case 7:
                dos = 1;
                mon = 1;
                con = 1;
                break;
        }
    }
%>
<%
    un = (String) session.getAttribute("username");
    if (un == null) {
%>
<jsp:forward page="login.jsp"/>
<%
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remote Pc Meet</title>
        <jsp:include page="bootstrapLoad.jsp"/>
    </head>
    <body id="body">

        <nav class="navbar navbar-inverse usernav">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="home.jsp">Remote PC Meet</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active" id="hostnavbar" onclick="changePage(this.id)"><a href="#"><span class="fa fa-map-pin"></span> Host</a></li>
                        <li id='controlnavbar' onclick="changePage(this.id)"><a href="#"><span class="fa fa-sitemap"></span> Control</a></li>
                        <li id='notificationsnavbar' onclick="changePage(this.id)"><a href="#"><span class="fa fa-bomb"></span> Notifications</a></li>
                        <li id='activenavbar' onclick="changePage(this.id)"><a href="#"><span class="fa fa-bullseye"></span> Active</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="fa fa-user"></span> <%=un%> <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#" id='settingsnavbar' onclick="changePage(this.id)"> <span class="fa fa-gear"></span> Settings</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="logout.jsp"><span class="fa fa-user-times"></span> Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

        <div class="container">

            <jsp:include page="hostPage.jsp"/>

            <div id="controlpage">

                <div name="connect" class="col-sm-6">
                    <div class="input-group">
                        <span class="glyphicon glyphicon-search input-group-addon" aria-hidden="true" id="basic-addon1-connect"></span>
                        <input type="text" id="connect-for-users-input" class="form-control" onkeyup="functionConnectForUsersSearch()" placeholder="Search for users to Connect..." aria-describedby="basic-addon1-connect">
                    </div>
                    <div id="connect-for-users-ul" class="list-group">
                        <%!
                            String s[] = new String[100];
                            int l;
                        %>
                        <%
                            User u = new User();
                            l = u.getAccepts(un, s);
                            for (int i = 0; i < l; i++) {
                                out.println("<a href=\"#\" class=\"list-group-item list-group-item-success\" data-toggle=\"modal\" data-target=\"#" + s[i] + "connectmodel\">");
                                out.println("<h4 class=\"list-group-item-heading\">" + s[i] + "</h4>");
                                i++;
                                out.println("<p class=\"list-group-item-text\">" + s[i] + "</p>");
                                out.println("</a>");
                            }
                        %>
                    </div>

                    <div id="connect-for-users-ul-model">
                        <%
                            for (int i = 0; i < l; i++) {
                                out.println("<div id=\"" + s[i] + "connectmodel\" class=\"modal fade\" role=\"dialog\">");
                                out.println("<div class=\"modal-dialog\">");
                                out.println("<div class=\"modal-content\">");
                                out.println("<div class=\"modal-header\">");
                                out.println("<button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>");
                                out.println("<h4 class=\"modal-title text-center\">" + s[i] + " Connection Settings</h4>");
                                out.println("</div>");
                                out.println("<div class=\"modal-body col-sm-12\">");
                                out.println("<form class=\"form-horizontal\" role=\"form\">");
                                out.println("<div class=\"form-group\">");
                                out.println("<div class=\"container\">");
                                i++;
                                this.seperate(Integer.parseInt(s[i]));
                                if (dos == 1) {
                                    out.println("<label class=\"checkbox-inline disabled\"><input type=\"checkbox\" disabled checked value=\"\">DOS</label>");
                                } else {
                                    out.println("<label class=\"checkbox-inline disabled\"><input type=\"checkbox\" disabled value=\"\">DOS</label>");
                                }
                                if (mon == 1) {
                                    out.println("<label class=\"checkbox-inline disabled\"><input type=\"checkbox\" disabled checked value=\"\">Monitor</label>");
                                } else {
                                    out.println("<label class=\"checkbox-inline disabled\"><input type=\"checkbox\" disabled value=\"\">Monitor</label>");
                                }
                                if (con == 1) {
                                    out.println("<label class=\"checkbox-inline disabled\"><input type=\"checkbox\" disabled checked value=\"\">Control</label>");
                                } else {
                                    out.println("<label class=\"checkbox-inline disabled\"><input type=\"checkbox\" disabled checked value=\"\">Control</label>");
                                }
                                out.println("</div>");
                                out.println("<hr>");
                                out.println("<div class=\"progress\">");
                                speed.getSpeed(s[i - 1], sp);
                                avg = 100 - ((sp[0] * 100) / 5000);
                                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-success\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">DOS " + avg + "%</div>");
                                out.println("</div>");
                                out.println("<div class=\"progress\">");
                                avg = 100 - ((sp[1] * 100) / 5000);
                                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-info\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">Monotor " + avg + "%</div>");
                                out.println("</div>");
                                out.println("<div class=\"progress\">");
                                avg = 100 - ((sp[2] * 100) / 5000);
                                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-danger\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">Control " + avg + "%</div>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</form>");
                                out.println("</div>");
                                out.println("<div class=\"modal-footer\">");
                                out.println("<button type=\"button\" class=\"btn btn-success\" data-dismiss=\"modal\" onclick='connectHost(\"" + s[i - 1] + "\")'>Connect <span class=\"fa fa-plug\"></span></button>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</div>");
                                dos = 0;
                                mon = 0;
                                con = 0;
                            }
                        %>    
                    </div>

                </div>

                <div name="requests" class="col-sm-6">
                    <div class="input-group">
                        <span class="glyphicon glyphicon-search input-group-addon" aria-hidden="true" id="basic-addon1-request"></span>
                        <input type="text" id="request-for-users-input" class="form-control" onkeyup="functionRequestForUsersSearch()" placeholder="Search for users to Request..." aria-describedby="basic-addon1-request">
                    </div>
                    <div id="request-for-users-ul" class="list-group">
                        <%
                            u = new User();
                            l = u.getUsers(s, un);
                            for (int i = 0; i < l; i++) {
                                out.println("<a href=\"#\" class=\"list-group-item list-group-item-info\" data-toggle=\"modal\" data-target=\"#" + s[i] + "requestmodel\" id=\"removeElementRequest" + s[i] + "\">");
                                out.println("<h4 class=\"list-group-item-heading\">" + s[i] + "</h4>");
                                i++;
                                out.println("<p class=\"list-group-item-text\">" + s[i] + "</p>");
                                out.println("</a>");
                            }
                        %>
                    </div>

                    <div id="request-for-users-ul-model">
                        <%
                            for (int i = 0; i < l; i++) {
                                out.println("<div id=\"" + s[i] + "requestmodel\" class=\"modal fade\" role=\"dialog\">");
                                out.println("<div class=\"modal-dialog\">");
                                out.println("<div class=\"modal-content\">");
                                out.println("<div class=\"modal-header\">");
                                out.println("<button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>");
                                out.println("<h4 class=\"modal-title text-center\">" + s[i] + " Connection Request Settings</h4>");
                                out.println("</div>");
                                out.println("<div class=\"modal-body col-sm-12\">");
                                out.println("<form class=\"form-horizontal\" role=\"form\">");
                                out.println("<div class=\"form-group\">");
                                out.println("<div class=\"container\">");
                                out.println("<label class=\"checkbox-inline\"><input type=\"checkbox\" id=\"" + s[i] + "dos\" value=\"\">DOS</label>");
                                out.println("<label class=\"checkbox-inline\"><input type=\"checkbox\" id=\"" + s[i] + "monitor\" value=\"\">Monitor</label>");
                                out.println("<label class=\"checkbox-inline\"><input type=\"checkbox\" id=\"" + s[i] + "control\" value=\"\">Control</label>");
                                out.println("</div>");
                                out.println("<hr>");
                                out.println("<div class=\"progress\">");
                                speed.getSpeed(s[i], sp);
                                avg = 100 - ((sp[0] * 100) / 5000);
                                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-success\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">DOS " + avg + "%</div>");
                                out.println("</div>");
                                out.println("<div class=\"progress\">");
                                avg = 100 - ((sp[1] * 100) / 5000);
                                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-info\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">Monotor " + avg + "%</div>");
                                out.println("</div>");
                                out.println("<div class=\"progress\">");
                                avg = 100 - ((sp[2] * 100) / 5000);
                                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-danger\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">Control " + avg + "%</div>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</form>");
                                out.println("</div>");
                                out.println("<div class=\"modal-footer\">");
                                out.println("<button type=\"button\" class=\"btn btn-info\" data-dismiss=\"modal\" onclick='sendControls(\"" + s[i] + "\")'>Request <span class=\"fa fa-paper-plane\"></span></button>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</div>");
                                i++;
                            }
                        %>    
                    </div>

                </div>

            </div>

            <div id="notificationspage">


                <div name="accept" class="col-sm-6">
                    <div class="input-group">
                        <span class="glyphicon glyphicon-search input-group-addon" aria-hidden="true" id="basic-addon1-accept"></span>
                        <input type="text" id="accept-for-users-input" class="form-control" onkeyup="functionAcceptForUsersSearch()" placeholder="Search for users to Accept..." aria-describedby="basic-addon1-accept">
                    </div>
                    <div id="accept-for-users-ul" class="list-group">
                        <%
                            u = new User();
                            l = u.getRequests(un, s);
                            for (int i = 0; i < l; i++) {
                                out.println("<a href=\"#\" class=\"list-group-item list-group-item-warning\" data-toggle=\"modal\" data-target=\"#" + s[i] + "acceptmodel\" id=\"removeElementIdRequests" + s[i] + "\">");
                                out.println("<h4 class=\"list-group-item-heading\">" + s[i] + "</h4>");
                                i++;
                                out.println("<p class=\"list-group-item-text\">" + s[i] + "</p>");
                                out.println("</a>");
                            }
                        %>
                    </div>

                    <div id="accept-for-users-ul-model">
                        <%
                            for (int i = 0; i < l; i++) {
                                out.println("<div id=\"" + s[i] + "acceptmodel\" class=\"modal fade\" role=\"dialog\">");
                                out.println("<div class=\"modal-dialog\">");
                                out.println("<div class=\"modal-content\">");
                                out.println("<div class=\"modal-header\">");
                                out.println("<button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>");
                                out.println("<h4 class=\"modal-title text-center\">" + s[i] + "Accept Connection Settings</h4>");
                                out.println("</div>");
                                out.println("<div class=\"modal-body col-sm-12\">");
                                out.println("<form class=\"form-horizontal\" role=\"form\">");
                                out.println("<div class=\"form-group\">");
                                out.println("<div class=\"container\">");
                                i++;
                                this.seperate(Integer.parseInt(s[i]));
                                i--;
                                if (dos == 1) {
                                    out.println("<label class=\"checkbox-inline \"><input id=\"" + s[i] + "dosn\" type=\"checkbox\" checked value=\"\">DOS</label>");
                                } else {
                                    out.println("<label class=\"checkbox-inline \"><input id=\"" + s[i] + "dosn\" type=\"checkbox\" value=\"\">DOS</label>");
                                }
                                if (mon == 1) {
                                    out.println("<label class=\"checkbox-inline \"><input id=\"" + s[i] + "monitorn\" type=\"checkbox\" checked value=\"\">Monitor</label>");
                                } else {
                                    out.println("<label class=\"checkbox-inline \"><input id=\"" + s[i] + "monitorn\" type=\"checkbox\" value=\"\">Monitor</label>");
                                }
                                if (con == 1) {
                                    out.println("<label class=\"checkbox-inline \"><input id=\"" + s[i] + "controln\" type=\"checkbox\" checked value=\"\">Control</label>");
                                } else {
                                    out.println("<label class=\"checkbox-inline \"><input id=\"" + s[i] + "controln\" type=\"checkbox\" checked value=\"\">Control</label>");
                                }
                                out.println("</div>");
                                out.println("<hr>");
                                out.println("<div class=\"progress\">");
                                speed.getSpeed(s[i], sp);
                                avg = 100 - ((sp[0] * 100) / 5000);
                                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-success\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">DOS " + avg + "%</div>");
                                out.println("</div>");
                                out.println("<div class=\"progress\">");
                                avg = 100 - ((sp[1] * 100) / 5000);
                                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-info\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">Monotor " + avg + "%</div>");
                                out.println("</div>");
                                out.println("<div class=\"progress\">");
                                avg = 100 - ((sp[2] * 100) / 5000);
                                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-danger\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">Control " + avg + "%</div>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</form>");
                                out.println("</div>");
                                out.println("<div class=\"modal-footer\">");
                                out.println("<button type=\"button\" class=\"btn btn-warning\" data-dismiss=\"modal\" onclick='acceptControls(\"" + s[i] + "\")'>Accept <span class=\"fa fa-street-view\"></span></button>");
                                out.println("</div>");
                                i++;
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</div>");
                                dos = 0;
                                mon = 0;
                                con = 0;
                            }
                        %>    
                    </div>

                </div>

                <div name="" class="col-sm-6">
                    <div class="input-group">
                        <span class="glyphicon glyphicon-search input-group-addon" aria-hidden="true" id="basic-addon1-requests"></span>
                        <input type="text" id="requests-for-users-input" class="form-control" onkeyup="functionRequestsForUsersSearch()" placeholder="Search for Pending Requests..." aria-describedby="basic-addon1-requests">
                    </div>
                    <div id="requests-for-users-ul" class="list-group">
                        <%
                            u = new User();
                            l = u.getRequestsPen(un, s);
                            for (int i = 0; i < l; i++) {
                                out.println("<a href=\"#\" class=\"list-group-item list-group-item-danger\" data-toggle=\"modal\" data-target=\"#" + s[i] + "pendingmodel\">");
                                out.println("<h4 class=\"list-group-item-heading\">" + s[i] + "</h4>");
                                i++;
                                out.println("<p class=\"list-group-item-text\">" + s[i] + "</p>");
                                out.println("</a>");
                            }
                        %>
                    </div>

                    <div id="requests-for-users-ul-model">
                        <%
                            for (int i = 0; i < l; i++) {
                                out.println("<div id=\"" + s[i] + "pendingmodel\" class=\"modal fade\" role=\"dialog\">");
                                out.println("<div class=\"modal-dialog\">");
                                out.println("<div class=\"modal-content\">");
                                out.println("<div class=\"modal-header\">");
                                out.println("<button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>");
                                out.println("<h4 class=\"modal-title text-center\">" + s[i] + " Pending Connection Settings</h4>");
                                out.println("</div>");
                                out.println("<div class=\"modal-body col-sm-12\">");
                                out.println("<form class=\"form-horizontal\" role=\"form\">");
                                out.println("<div class=\"form-group\">");
                                out.println("<div class=\"container\">");
                                i++;
                                this.seperate(Integer.parseInt(s[i]));
                                i--;
                                if (dos == 1) {
                                    out.println("<label class=\"checkbox-inline disabled\"><input id=\"" + s[i] + "dosn\" type=\"checkbox\" checked value=\"\">DOS</label>");
                                } else {
                                    out.println("<label class=\"checkbox-inline disabled\"><input id=\"" + s[i] + "dosn\" type=\"checkbox\" value=\"\">DOS</label>");
                                }
                                if (mon == 1) {
                                    out.println("<label class=\"checkbox-inline disabled\"><input id=\"" + s[i] + "monitorn\" type=\"checkbox\" checked value=\"\">Monitor</label>");
                                } else {
                                    out.println("<label class=\"checkbox-inline disabled\"><input id=\"" + s[i] + "monitorn\" type=\"checkbox\" value=\"\">Monitor</label>");
                                }
                                if (con == 1) {
                                    out.println("<label class=\"checkbox-inline disabled\"><input id=\"" + s[i] + "contorln\" type=\"checkbox\" checked value=\"\">Control</label>");
                                } else {
                                    out.println("<label class=\"checkbox-inline disabled\"><input id=\"" + s[i] + "contorln\" type=\"checkbox\" checked value=\"\">Control</label>");
                                }
                                out.println("</div>");
                                out.println("<hr>");
                                out.println("<div class=\"progress\">");
                                speed.getSpeed(s[i], sp);
                                avg = 100 - ((sp[0] * 100) / 5000);
                                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-success\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">DOS " + avg + "%</div>");
                                out.println("</div>");
                                out.println("<div class=\"progress\">");
                                avg = 100 - ((sp[1] * 100) / 5000);
                                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-info\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">Monotor " + avg + "%</div>");
                                out.println("</div>");
                                out.println("<div class=\"progress\">");
                                avg = 100 - ((sp[2] * 100) / 5000);
                                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-danger\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">Control " + avg + "%</div>");
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</form>");
                                out.println("</div>");
                                out.println("<div class=\"modal-footer\">");
                                out.println("<button type=\"button\" class=\"btn btn-danger\" data-dismiss=\"modal\">Close <span class=\"fa fa-times-circle\"></span></button>");
                                out.println("</div>");
                                i++;
                                out.println("</div>");
                                out.println("</div>");
                                out.println("</div>");
                                dos = 0;
                                mon = 0;
                                con = 0;
                            }
                        %>    
                    </div>

                </div>


            </div>

            <div id="activepage">
                <div id="pillsbarmenu">
                    <ul class="nav nav-tabs nav-tabs-justified">
                        <li class="active" id="dosmodeactive"><a data-toggle="pill" href="#pilldos" onclick="ch(1)"><span class="fa fa-terminal"></span> Dos</a></li>
                        <li id="monmodeactive"><a data-toggle="pill" href="#pillmon" onclick="ch(2)"><span class="fa fa-object-group"></span> Monitor</a></li>
                        <li id="conmodeactive"><a data-toggle="pill" href="#pillcon" onclick="ch(3)"><span class="fa fa-laptop"></span> Control</a></li>
                    </ul>
                </div>
                <div class="tab-content">
                    <div id="pilldos" class="tab-pane fade in active">
                        <div id="dospanel">
                            <div class="panel panel-primary">
                                <div class="panel-heading text-center">
                                    <h4>MS DOS</h4>
                                </div>
                                <div class="panel-body">
                                    <textarea rows="30" id="ti" class="col-sm-12 dosdospanel">
                                    </textarea>
                                    <textarea class="dosdospanel col-sm-12" rows="5" name="q" id="t" placeholder="Type Your Command Here...">
                                    </textarea>
                                </div>
                                <div class="panel-footer text-center" id="dosfooter">
                                    <button class="btn btn-info" id="b"><span class="fa fa-code"></span> Execute</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="pillmon" class="tab-pane fade">
                        <div id="monpanel" data-enhance="false">
                            <p id="pmon">Connection To PC Is Not Available..
                                <img class="monimg" id="amon" name="0" alt="image" src="1.jpg"/>
                            </p>
                        </div>
                    </div>
                    <div id="pillcon" class="tab-pane fade">
                        <div id="conpanel">
                            <p id="pp">Connection To PC Is Not Available..
                                <img id="aa" name="0"></img>
                            </p>
                            <button type="button" class="btn btn-primary" onclick="showKB()" id="bt1">
                                keyboard <span class="caret"></span>
                            </button>
                            <button type="button" class="btn btn-primary" onclick="rc()" id="bt2">
                                Right Click
                            </button>
                            <div id='kbd'>
                                <div class="btn-group btn-group-justified" id="r6">
                                    <a onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(27)">ESC</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(112)">F1</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(113)">F2</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(114)">F3</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(115)">F4</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(116)">F5</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(117)">F6</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(118)">F7</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(119)">F8</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(120)">F9</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(121)">F10</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(122)">F11</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(123)">F12</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(155)"><h5>INS</h5>SCL LCK</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(127)">DEL</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(36)"><h5>HOME</h5>SYSRQ</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(35)"><h5>END</h5>PRTSC</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(33)"><h5>PGUP</h5>BREAK</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(34)"><h5>PGDN</h5>PAUSE</a>
                                </div>
                                <div class="btn-group btn-group-justified" id="r1">
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(192)">~<h5>`</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(49)">!<h5>1</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(50)">@<h5>2</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(51)">#<h5>3</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(52)">$<h5>4</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(53)">%<h5>5</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(54)">^<h5>6</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(55)">&<h5>7</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(56)">*<h5>8</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(57)">(<h5>9</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(48)">)<h5>0</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(45)">_<h5>-</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(61)">+<h5>=</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(8)">BSP<h5><--</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(144)">~<h5>NUM LCK</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(47)"><h5>/</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(151)"><h5>*</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(45)"><h5>-</h5></a>
                                </div>
                                <div class="btn-group btn-group-justified" id="r2">
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(9)">--></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(81)">Q</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(87)">W</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(69)">E</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(82)">R</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(84)">T</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(89)">Y</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(85)">U</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(73)">I</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(79)">O</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(80)">P</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(91)">{<h5>[</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(93)">}<h5>]</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(92)">|<h5>\</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(103)">7<h5>HOME</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(104)">8</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(105)">9<h5>PGUP</h5></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(521)">+</a>
                                </div>
                                <div class="btn-group btn-group-justified" id="r3">
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(20)">CAPS</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(65)">A</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(83)">S</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(68)">D</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(70)">F</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(71)">G</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(72)">H</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(74)">J</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(75)">K</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(76)">L</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(59)"><h5>:</h5>;</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(222)"><h5>"</h5>'</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(10)">ENTER</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(100)">4</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(101)">5</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(102)">6</a>
                                </div>

                                <div class="btn-group btn-group-justified" id="r4">
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(16)">SHIFT</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(90)">Z</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(88)">X</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(67)">C</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(86)">V</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(66)">B</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(78)">N</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(77)">M</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(44)"><h5><</h5>,</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(46)"><h5>></h5>.</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(47)"><h5>?</h5>/</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(16)">SHIFT</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(97)">1</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(98)">2</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(100)">3</a>
                                </div>
                                <div class="btn-group btn-group-justified" id="r5">
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(17)">CTRL</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(524)">WIN</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(18)">ALT</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(32)">SPC</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(18)">ALT</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(525)">RC</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(17)">CTRL</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(37)"><-</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(40)">DN</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(38)">UP</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(39)">-></a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(96)"><h5>0</h5>INS</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(46)"><h5>.</h5>DEL</a>
                                    <a  onmousedown="this.style.transform = 'scale(3,3)';" onmouseup="this.style.transform = 'scale(1,1)';" class="btn btn-success" onclick="show(10)">ENTER</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="settingspage">
                <p>this is host</p>
            </div>
        </div>

        <div data-role="page" id="applicationdata">
            <input type="hidden" id="username" value="<%=un%>">
            <input type="hidden" id="currentuser" value="">
            <input type="hidden" id="dosappdata" value="">
            <input type="hidden" id="speedd" value="">
            <input type="hidden" id="speedm" value="">
            <input type="hidden" id="speedc" value="">
            <input type="hidden" id="monappdata" value="">
            <input type="hidden" id="conappdata" value="">
            <input type="hidden" id="kbappdata" value="">
            <input type="hidden" id="lrnappdata" value="">
            <input type="hidden" id="currentnavbar" value="hostnavbar">
            <input type="hidden" id="imgwidthcss" value="">
            <input type="hidden" id="imgheightcss" value="">
        </div>

        <div id="toast">Some text some message..</div>
        
        <link rel="stylesheet" href="bootstrapslider/slider.css">
        <link rel="stylesheet" href="bootstrapslider/slider.min.css">
        <link rel="stylesheet" href="css/slider.css">
        <link rel="stylesheet" href="css/dos.css">
        <link rel="stylesheet" href="css/img.css">
        <link rel="stylesheet" href="css/toast.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <script src="bootstrapslider/slider.js"></script>
        <script src="bootstrapslider/slider.min.js"></script>
        <script src="js/slider.js"></script>
        <script src="js/navbarChange.js"></script>
        <script src="js/homejs.js"></script>
        <script src="js/controlPageJs.js"></script>
        <script src="js/inter.js"></script>
        <script src="js/load.js"></script>
        <script src="js/controlload.js"></script>
        <script src="js/events.js"></script>
        <script src="js/controlMode.js"></script>
        <script src="js/toast.js"></script>
    </body>
</html>
