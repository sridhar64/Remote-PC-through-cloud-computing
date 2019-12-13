<%-- 
    Document   : home
    Created on : Aug 14, 2018, 8:15:06 PM
    Author     : K.sridhar reddy
--%>

<%@page import="main.Db"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="main.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="jquery.mobile-1.4.5.min.css">
        <script src="jquery-1.11.3.min.js"></script>
        <script src="jquery.mobile-1.4.5.min.js"></script>
        <style>
            .ui-content
            {
                background-color: white;
            }
            .ui-btn-active
            {
                background-color: #80bfff;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOME</title>
        <%!
            String un;
            int dos, mon, con;
        %>
        <%!
            String req[] = new String[100];
            int ll;

            public void seperate(int n) {
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

        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
                $('[data-toggle="popover"]').popover();
            });
        </script>
        <style>
            .dosdospanel
            {
                background-color: black;
                color: white;
                vertical-align: baseline;
                text-decoration: none;
                font-family: monospace;
            }
        </style>
        <link rel="stylesheet" alt="text/css" href="bootstrap/css/bootstrap.min.css"></link>
        <script src="controlload.js"></script>
        <style>
            img 
            {
                <%
                    /*
                    ResultSet rs;
                    int h = 0;
                    int w = 0;
                    main.Db db = Db.getDb();
                    db.setServerName("localhost");
                    db.setUser("pavan");
                    db.setPassword("pavanpavan");
                    db.setDbName("pctom");
                    rs = db.ex("select height,width from monitorsettings");
                    for (; rs.next();) {
                        h = rs.getInt(1);
                        w = rs.getInt(2);
                    }
                    out.print("height:" + h + "px;");
                    out.print("width:" + w + "px;");
                    */
                %>
                
            }
        </style>
        <script src="events.js"></script>
        <script>
            kb = 0, rcc = 0;
            function showKB()
            {
                if (kb == 0)
                {
                    kb = 1;
                    $('#bt1').html('Close KeyBoard');
                } else
                {
                    kb = 0;
                    $('#bt1').html('keyboard <span class="caret">');
                }
                $('#kbd').toggle();
            }
            function rc()
            {
                if (rcc == 0)
                {
                    rcc = 1;
                    $('#bt2').html('Left Click');
                } else
                {
                    rcc = 0;
                    $('#bt2').html('Fight Click');
                }
                change();
            }
        </script>

    </head>
    <body>

        <jsp:include page="pageone.jsp"></jsp:include> 

            <div data-role="page" id="pagetwo">
                <div data-role="header">
                    <h1>Control</h1>
                    <div data-role="navbar">
                        <ul>
                            <li><a href="#pageone" data-icon="home" data-transition="flow">Host</a></li>
                            <li><a href="#pagetwo" class="ui-btn-active ui-state-persist" data-icon="action" data-transition="flow">Control</a></li>
                            <li><a href="#pagethree" data-icon="bars" data-transition="flow">Notifications</a></li>
                            <li><a href="#pagefive" data-icon="eye" data-transition="flow">Active</a></li>
                            <li><a href="#pagefour" data-icon="gear" data-transition="flow">Settings</a></li>
                        </ul>
                    </div>
                </div>

                <div data-role="main" class="ui-content">
                    <form class="ui-filterable">
                        <input id="userscontrol" data-type="search" placeholder="Search for users to Connect...">
                    </form>
                    <ul data-role="listview" data-filter="true" data-input="#userscontrol" data-autodividers="true" data-inset="true">
                    <%!
                        String s[] = new String[100];
                        int l;
                    %>
                    <%
                        User u = new User();
                        l = u.getAccepts(un, s);
                        for (int i = 0; i < l; i++) {
                            out.println("<li>");
                            out.println("<a href='#" + s[i] + "ctrl'  data-rel='popup'>");
                            out.println("<h2>" + s[i] + "</h2>");
                            i++;
                            out.println("<p>" + s[i] + "</p>");
                            i--;
                            out.println("</a>");
                            out.println("<a href='#" + s[i] + "notctrl' data-rel='popup' data-icon='gear'>Conneciton Settings</a>");
                            out.println("</li>");
                            i++;
                        }
                    %>
                </ul>
            </div>

            <%
                for (int i = 0; i < l; i++) {
                    out.println("<div data-role='popup' id='" + s[i] + "ctrl' data-overlay-theme='b' data-position-to='window' data-transition='flow'>");
                    out.println("<a href='#' data-rel='back' class='ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right'>Close</a>");
                    out.println("<h1>" + s[i] + "</h1>");
                    i++;
                    out.println("<p>" + s[i] + "</p>");
                    out.println("</div>");
                }

                for (int i = 0; i < l; i++) {
                    out.println("<div style='min-width:400px;min-height:400px;' data-role='popup' id='" + s[i] + "notctrl' data-overlay-theme='b' data-position-to='window' data-transition='flow'>");
                    out.println("<a href='#' data-rel='back' class='ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right'>Close</a>");
                    out.println("<div data-role='header'><h1>" + s[i] + " Connection Settings</h1></div>");
                    i++;
                    out.println("<div data-role='main' class='ui-content'>");
                    out.println("<p>View the controls that is " + s[i] + "</p>");
                    this.seperate(Integer.parseInt(s[i]));
                    i--;
                    out.println("<form id='" + s[i] + "fnctrl'>");
                    out.println("<fieldset data-role='controlgroup'>");
                    out.println("<legend>View the controls to connect</legend>");
                    out.println("<label for='" + s[i] + "dosctrl'>DOS</label>");
                    if (dos == 1) {
                        out.println("<input type='checkbox' name='dos' id='" + s[i] + "dosctrl' value='DOS' disabled checked='true'>");
                    } else {
                        out.println("<input type='checkbox' name='dos' id='" + s[i] + "dosctrl' disabled value='DOS'>");
                    }
                    out.println("<label for='" + s[i] + "monitorctrl'>Monitor</label>");
                    if (mon == 1) {
                        out.println("<input type='checkbox' name='monitor' id='" + s[i] + "monitorctrl' disabled value='Monitor' checked='true'>");
                    } else {
                        out.println("<input type='checkbox' name='monitor' id='" + s[i] + "monitorctrl' disabled value='Monitor'>");
                    }
                    out.println("<label for='" + s[i] + "controlctrl'>Control</label>");
                    if (con == 1) {
                        out.println("<input type='checkbox' name='control' id='" + s[i] + "controlctrl' disabled value='Control' checked='true'>");
                    } else {
                        out.println("<input type='checkbox' name='control' id='" + s[i] + "controlctrl' disabled value='Control'>");
                    }
                    out.println("</fieldset>");
                    out.println("<a href='#pagefive' data-inline='true' onclick='connectHost(\"" + s[i] + "\")' class='ui-btn ui-btn-inline'>Connect</a>");
                    out.println("</form>");
                    i++;
                    out.println("</div></div>");
                    dos = 0;
                    mon = 0;
                    con = 0;
                }
            %>

            <div data-role="main" class="ui-content">
                <form class="ui-filterable">
                    <input id="usersnotifications" data-type="search" placeholder="Search for users to Request...">
                </form>
                <ul data-role="listview" data-filter="true" data-input="#usersnotifications" data-autodividers="true" data-inset="true">
                    <%
                        u = new User();
                        l = u.getUsers(s, un);
                        for (int i = 0; i < l; i++) {
                            out.println("<li>");
                            out.println("<a href='#" + s[i] + "'  data-rel='popup'>");
                            out.println("<h2>" + s[i] + "</h2>");
                            i++;
                            out.println("<p>" + s[i] + "</p>");
                            i--;
                            out.println("</a>");
                            out.println("<a href='#" + s[i] + "not' data-rel='popup' data-icon='gear'>Conneciton Settings</a>");
                            out.println("</li>");
                            i++;
                        }
                    %>
                </ul>
            </div>

            <div data-role="footer">
                <h1>Send Requests</h1>
            </div>

            <%
                for (int i = 0; i < l; i++) {
                    out.println("<div data-role='popup' id='" + s[i] + "' data-overlay-theme='b' data-position-to='window' data-transition='flow'>");
                    out.println("<a href='#' data-rel='back' class='ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right'>Close</a>");
                    out.println("<h1>" + s[i] + "</h1>");
                    i++;
                    out.println("<p>" + s[i] + "</p>");
                    out.println("</div>");
                }

                for (int i = 0; i < l; i++) {
                    out.println("<div style='min-width:400px;min-height:400px;' data-role='popup' id='" + s[i] + "not' data-overlay-theme='b' data-position-to='window' data-transition='flow'>");
                    out.println("<a href='#' data-rel='back' class='ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right'>Close</a>");
                    out.println("<div data-role='header'><h1>" + s[i] + " Connection Settings</h1></div>");
                    i++;
                    out.println("<div data-role='main' class='ui-content'>");
                    out.println("<p>Select the controls for connecting to " + s[i] + "</p>");
                    i--;
                    out.println("<form id='" + s[i] + "f'>");
                    out.println("<fieldset data-role='controlgroup'>");
                    out.println("<legend>Choose the controls to connect</legend>");
                    out.println("<label for='" + s[i] + "dos'>DOS</label>");
                    out.println("<input type='checkbox' name='dos' id='" + s[i] + "dos' value='DOS'>");
                    out.println("<label for='" + s[i] + "monitor'>Monitor</label>");
                    out.println("<input type='checkbox' name='monitor' id='" + s[i] + "monitor' value='Monitor'>");
                    out.println("<label for='" + s[i] + "control'>Control</label>");
                    out.println("<input type='checkbox' name='control' id='" + s[i] + "control' value='Control'>");
                    out.println("</fieldset>");
                    out.println("<a href='#pagetwo' data-inline='true' onclick='sendControls(\"" + s[i] + "\")'  class='ui-btn ui-btn-inline'>Request</a>");
                    out.println("</form>");
                    i++;
                    out.println("</div></div>");
                }
            %>
        </div>

        <div data-role="page" id="pagethree">
            <div data-role="header">
                <h1>Notifications</h1>
                <div data-role="navbar">
                    <ul>
                        <li><a href="#pageone" data-icon="home" data-transition="flow">Host</a></li>
                        <li><a href="#pagetwo" data-icon="action" data-transition="flow">Control</a></li>
                        <li><a href="#pagethree" class="ui-btn-active ui-state-persist" data-icon="bars" data-transition="flow">Notifications</a></li>
                        <li><a href="#pagefive" data-icon="eye" data-transition="flow">Active</a></li>
                        <li><a href="#pagefour" data-icon="gear" data-transition="flow">Settings</a></li>
                    </ul>
                </div>
            </div>

            <div data-role="main" class="ui-content">
                <form class="ui-filterable">
                    <input id="usersnotificationsn" data-type="search" placeholder="Search for users to Accept...">
                </form>
                <ul data-role="listview" data-filter="true" data-input="#usersnotificationsn" data-autodividers="true" data-inset="true">
                    <%
                        User uu = new User();
                        ll = uu.getRequests(un, req);
                        for (int i = 0; i < ll; i++) {
                            out.println("<li>");
                            out.println("<a href='#" + req[i] + "n'  data-rel='popup'>");
                            out.println("<h2>" + req[i] + "</h2>");
                            i++;
                            out.println("<p>" + req[i] + "</p>");
                            i--;
                            out.println("</a>");
                            out.println("<a href='#" + req[i] + "notn' data-rel='popup' data-icon='gear'>Conneciton Settings</a>");
                            out.println("</li>");
                            i++;
                        }
                    %>
                </ul>
            </div>

            <%
                for (int i = 0; i < ll; i++) {
                    out.println("<div data-role='popup' id='" + req[i] + "n' data-overlay-theme='b' data-position-to='window' data-transition='flow'>");
                    out.println("<a href='#' data-rel='back' class='ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right'>Close</a>");
                    out.println("<h1>" + req[i] + "</h1>");
                    i++;
                    out.println("<p>" + req[i] + "</p>");
                    out.println("</div>");
                }

                for (int i = 0; i < ll; i++) {
                    out.println("<div style='min-width:400px;min-height:400px;' data-role='popup' id='" + req[i] + "notn' data-overlay-theme='b' data-position-to='window' data-transition='flow'>");
                    out.println("<a href='#' data-rel='back' class='ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right'>Close</a>");
                    out.println("<div data-role='header'><h1>" + req[i] + " Connection Settings</h1></div>");
                    i++;
                    out.println("<div data-role='main' class='ui-content'>");
                    out.println("<p>Accept the controls that is " + req[i] + "</p>");
                    this.seperate(Integer.parseInt(req[i]));
                    i--;
                    out.println("<form id='" + req[i] + "fn'>");
                    out.println("<fieldset data-role='controlgroup'>");
                    out.println("<legend>Accept the controls to connect</legend>");
                    out.println("<label for='" + req[i] + "dosn'>DOS</label>");
                    if (dos == 1) {
                        out.println("<input type='checkbox' name='dos' id='" + req[i] + "dosn' value='DOS' checked='true'>");
                    } else {
                        out.println("<input type='checkbox' name='dos' id='" + req[i] + "dosn' value='DOS'>");
                    }
                    out.println("<label for='" + req[i] + "monitorn'>Monitor</label>");
                    if (mon == 1) {
                        out.println("<input type='checkbox' name='monitor' id='" + req[i] + "monitorn' value='Monitor' checked='true'>");
                    } else {
                        out.println("<input type='checkbox' name='monitor' id='" + req[i] + "monitorn' value='Monitor'>");
                    }
                    out.println("<label for='" + req[i] + "controln'>Control</label>");
                    if (con == 1) {
                        out.println("<input type='checkbox' name='control' id='" + req[i] + "controln' value='Control' checked='true'>");
                    } else {
                        out.println("<input type='checkbox' name='control' id='" + req[i] + "controln' value='Control'>");
                    }
                    out.println("</fieldset>");
                    out.println("<a href='#pagethree' data-inline='true' onclick='acceptControls(\"" + req[i] + "\")' class='ui-btn ui-btn-inline'>Accept</a>");
                    out.println("</form>");
                    i++;
                    out.println("</div></div>");
                    dos = 0;
                    mon = 0;
                    con = 0;
                }
            %>

            <div data-role="main" class="ui-content">
                <form class="ui-filterable">
                    <input id="usersnotificationspen" data-type="search" placeholder="Search for Pending Requests...">
                </form>
                <ul data-role="listview" data-filter="true" data-input="#usersnotificationspen" data-autodividers="true" data-inset="true">
                    <%
                        User uuu = new User();
                        ll = uuu.getRequestsPen(un, req);
                        for (int i = 0; i < ll; i++) {
                            out.println("<li>");
                            out.println("<a href='#" + req[i] + "pen'  data-rel='popup'>");
                            out.println("<h2>" + req[i] + "</h2>");
                            i++;
                            out.println("<p>" + req[i] + "</p>");
                            i--;
                            out.println("</a>");
                            out.println("<a href='#" + req[i] + "notpen' data-rel='popup' data-icon='gear'>Conneciton Settings</a>");
                            out.println("</li>");
                            i++;
                        }
                    %>
                </ul>
            </div>

            <div data-role="footer">
                <h1>View Notifications</h1>
            </div>

            <%
                for (int i = 0; i < ll; i++) {
                    out.println("<div data-role='popup' id='" + req[i] + "pen' data-overlay-theme='b' data-position-to='window' data-transition='flow'>");
                    out.println("<a href='#' data-rel='back' class='ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right'>Close</a>");
                    out.println("<h1>" + req[i] + "</h1>");
                    i++;
                    out.println("<p>" + req[i] + "</p>");
                    out.println("</div>");
                }

                for (int i = 0; i < ll; i++) {
                    out.println("<div style='min-width:400px;min-height:400px;' data-role='popup' id='" + req[i] + "notpen' data-overlay-theme='b' data-position-to='window' data-transition='flow'>");
                    out.println("<a href='#' data-rel='back' class='ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right'>Close</a>");
                    out.println("<div data-role='header'><h1>" + req[i] + " Connection Settings</h1></div>");
                    i++;
                    out.println("<div data-role='main' class='ui-content'>");
                    out.println("<p>Pending Requested controls that is " + req[i] + "</p>");
                    this.seperate(Integer.parseInt(req[i]));
                    i--;
                    out.println("<form id='" + req[i] + "fpen'>");
                    out.println("<fieldset data-role='controlgroup'>");
                    out.println("<legend>Pending Requested controls to connect</legend>");
                    out.println("<label for='" + req[i] + "dospen'>DOS</label>");
                    if (dos == 1) {
                        out.println("<input type='checkbox' name='dos' id='" + req[i] + "dospen' value='DOS' disabled checked='true'>");
                    } else {
                        out.println("<input type='checkbox' name='dos' id='" + req[i] + "dospen' disabled value='DOS'>");
                    }
                    out.println("<label for='" + req[i] + "monitorpen'>Monitor</label>");
                    if (mon == 1) {
                        out.println("<input type='checkbox' name='monitor' id='" + req[i] + "monitorpen' disabled value='Monitor' checked='true'>");
                    } else {
                        out.println("<input type='checkbox' name='monitor' id='" + req[i] + "monitorpen' disabled value='Monitor'>");
                    }
                    out.println("<label for='" + req[i] + "controlpen'>Control</label>");
                    if (con == 1) {
                        out.println("<input type='checkbox' name='control' id='" + req[i] + "controlpen' disabled value='Control' checked='true'>");
                    } else {
                        out.println("<input type='checkbox' name='control' id='" + req[i] + "controlpen' disabled value='Control'>");
                    }
                    out.println("</fieldset>");
                    out.println("<a href='#pagethree' data-inline='true' class='ui-btn ui-btn-inline'>Close</a>");
                    out.println("</form>");
                    i++;
                    out.println("</div></div>");
                    dos = 0;
                    mon = 0;
                    con = 0;
                }
            %>
        </div>


        <div data-role="page" id="pagefour">
            <div data-role="header">
                <h1>Welcome To My Homepage</h1>
                <div data-role="navbar">
                    <ul>
                        <li><a href="#pageone" data-icon="home" data-transition="flow">Host</a></li>
                        <li><a href="#pagetwo" data-icon="action" data-transition="flow">Control</a></li>
                        <li><a href="#pagethree" data-icon="bars" data-transition="flow">Notifications</a></li>
                        <li><a href="#pagefive" data-icon="eye" data-transition="flow">Active</a></li>
                        <li><a href="#pagefour" class="ui-btn-active ui-state-persist" data-icon="gear" data-transition="flow">Settings</a></li>
                    </ul>
                </div>
            </div>

            <div data-role="main" class="ui-content">
                <p>This page will also have its button highlighted, because of the ui-btn-active class.</p> 
                <p>And if you go back to the "Home" page, you will notice that the state of that page will continue to exist, and vice versa DUE TO THE CLASS UI-STATE-PERSIST!</p>
            </div>

            <div data-role="footer">
                <h1>My Footer</h1>
            </div>
        </div>

        <div data-role="page" id="pagefive">
            <div data-role="header">
                <a href="#mymodes" class="ui-btn ui-icon-bullets ui-btn-icon-left">Mode</a>
                <h1>Active</h1>
                <a href="#myoptions" class="ui-btn ui-icon-action ui-btn-icon-left">Options</a>
                <div data-role="navbar">
                    <ul>
                        <li><a href="#pageone" data-icon="home" data-transition="flow">Host</a></li>
                        <li><a href="#pagetwo" data-icon="action" data-transition="flow">Control</a></li>
                        <li><a href="#pagethree" data-icon="bars" data-transition="flow">Notifications</a></li>
                        <li><a href="#pagefive" class="ui-btn-active ui-state-persist" data-icon="eye" data-transition="flow">Active</a></li>
                        <li><a href="#pagefour" data-icon="gear" data-transition="flow">Settings</a></li>
                    </ul>
                </div>
            </div>

            <div data-role="panel" id="mymodes" data-position-fixed="true" data-theme="b"> 
                <div data-role="header">
                    <h2>Modes</h2>
                </div>
                <div>
                    <ul data-role="listview" data-inset="true">
                        <li><a href="#pagefive" id="pagefivedos" onclick="ch(1)">DOS</a></li>
                        <li><a href="#pagefive" id="pagefivemonitor" onclick="ch(2)">Monitor</a></li>
                        <li><a href="#pagefive" id="pagefivecontrol" onclick="ch(3)">Control</a></li>
                    </ul>
                </div>
                <div data-role="footer">
                    <center>
                        <a href="#pagefive" data-rel="close" class="ui-btn ui-btn-inline ui-shadow ui-corner-all ui-btn-a ui-icon-delete ui-btn-icon-left">Close</a>
                    </center>
                </div>
            </div>

            <div data-role="panel" id="myoptions" data-position-fixed="true" data-position="right" data-theme="b"> 
                <div data-role="header">
                    <h2>Options</h2>
                </div>
                <div>
                    </br>
                    <label for="lr">Click</label>
                    <input type="checkbox" data-role="flipswitch" name="switch" id="lr" data-on-text="Right" data-off-text="Left" onchange="lr()">
                    </br>

                    <label for="keyboardfs">Virtual Key Board</label>
                    <input type="checkbox" data-role="flipswitch" name="switch" id="keyboardfs" onchange="kb()">
                    </br>
                </div>
                <div data-role="footer">
                    <center>
                        <a href="#pagefive" data-rel="close" class="ui-btn ui-btn-inline ui-shadow ui-corner-all ui-btn-a ui-icon-delete ui-btn-icon-left">Close</a>
                    </center>
                </div>
            </div>

            <div data-role="main" class="ui-content" id="mainpanel">

                <div id="dospanel">
                    <div class="panel panel-primary">
                        <div class="panel-heading text-center">
                            <h4>MS DOS BY REMOTE PC TO MOBILE</h4>
                        </div>
                        <div class="panel-body">
                            <textarea cols="80" rows="30" id="ti" class="col-sm-12 dosdospanel">
                            </textarea>
                            <textarea class="dosdospanel col-sm-12" rows="5" name="q" id="t" placeholder="Type Your Command Here...">
                            </textarea>
                        </div>
                        <div class="panel-footer text-center">
                            <input class="btn btn-primary" type="button" id="b" value="Execute">
                        </div>
                    </div>
                </div>

                <div id="monpanel" data-enhance="false">
                    <p id="p">Connection To PC Is Not Available..
                        <img id="a" name="0" alt="image" src="1.jpg"/>
                    </p>
                </div>


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
                    <div style="min-width:1356px;" id='kbd'>
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

            <div data-role="footer">
                <h1 onload="this.innerHTML = document.getElementById('username').value"></h1>
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
        </div>
        
    </body>
</html>