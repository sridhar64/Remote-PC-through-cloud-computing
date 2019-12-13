<%@page import="main.Log"%><%@page import="main.User"%><%! String un, pa1, pa2;
    String s[] = new String[100];
    int l;
    User u=new User();
    String req[] = new String[100];
    int ll;
    int dos, mon, con, avg;
    int sp[] = new int[3];
    User speed = new User();

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
%><%
    un = (String) session.getAttribute("username");
    pa1 = request.getParameter("page");
    pa2 = request.getParameter("mode");
    Log.log("username : "+un+" page : "+pa1+" mode : "+pa2);
    if (pa1.compareTo("connect") == 0) {
        if (pa2.compareTo("up") == 0) {
            u = new User();
            l = u.getAccepts(un, s);
            for (int i = 0; i < l; i++) {
                out.println("<a href=\"#\" class=\"list-group-item list-group-item-success\" data-toggle=\"modal\" data-target=\"#" + s[i] + "connectmodel\">");
                out.println("<h4 class=\"list-group-item-heading\">" + s[i] + "</h4>");
                i++;
                out.println("<p class=\"list-group-item-text\">" + s[i] + "</p>");
                out.println("</a>");
            }
        } else if (pa2.compareTo("down") == 0) {
            u = new User();
            l = u.getAccepts(un, s);
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
                speed = new User();
                speed.getSpeed(s[i - 1], sp);
                avg = ((sp[0] * 100) / 5000);
                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-success\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">DOS " + avg + "%</div>");
                out.println("</div>");
                out.println("<div class=\"progress\">");
                avg = ((sp[1] * 100) / 5000);
                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-info\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">Monotor " + avg + "%</div>");
                out.println("</div>");
                out.println("<div class=\"progress\">");
                avg = ((sp[2] * 100) / 5000);
                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-danger\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">Control " + avg + "%</div>");
                out.println("</div>");
                out.println("</div>");
                out.println("</form>");
                out.println("</div>");
                out.println("<div class=\"modal-footer\">");
                out.println("<button type=\"button\" class=\"btn btn-success\" data-dismiss=\"modal\" onclick='connectHost(\"" + s[i - 1] + "\")'>Connect</button>");
                out.println("</div>");
                out.println("</div>");
                out.println("</div>");
                out.println("</div>");
                dos = 0;
                mon = 0;
                con = 0;
            }
        }
    } else if (pa1.compareTo("request") == 0) {
        if (pa2.compareTo("up") == 0) {
            u = new User();
            l = u.getUsers(s, un);
            for (int i = 0; i < l; i++) {
                out.println("<a href=\"#\" class=\"list-group-item list-group-item-info\" data-toggle=\"modal\" data-target=\"#" + s[i] + "requestmodel\">");
                out.println("<h4 class=\"list-group-item-heading\">" + s[i] + "</h4>");
                i++;
                out.println("<p class=\"list-group-item-text\">" + s[i] + "</p>");
                out.println("</a>");
            }
        } else if (pa2.compareTo("down") == 0) {
            u = new User();
            l = u.getUsers(s, un);
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
                speed = new User();
                speed.getSpeed(s[i], sp);
                avg = ((sp[0] * 100) / 5000);
                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-success\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">DOS " + avg + "%</div>");
                out.println("</div>");
                out.println("<div class=\"progress\">");
                avg = ((sp[1] * 100) / 5000);
                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-info\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">Monotor " + avg + "%</div>");
                out.println("</div>");
                out.println("<div class=\"progress\">");
                avg = ((sp[2] * 100) / 5000);
                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-danger\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">Control " + avg + "%</div>");
                out.println("</div>");
                out.println("</div>");
                out.println("</form>");
                out.println("</div>");
                out.println("<div class=\"modal-footer\">");
                out.println("<button type=\"button\" class=\"btn btn-success\" data-dismiss=\"modal\" onclick='sendControls(\"" + s[i] + "\")'>Request</button>");
                out.println("</div>");
                out.println("</div>");
                out.println("</div>");
                out.println("</div>");
                i++;
            }
        }
    } else if (pa1.compareTo("accept") == 0) {
        if (pa2.compareTo("up") == 0) {
            u = new User();
            l = u.getRequests(un, s);
            for (int i = 0; i < l; i++) {
                out.println("<a href=\"#\" class=\"list-group-item list-group-item-warning\" data-toggle=\"modal\" data-target=\"#" + s[i] + "acceptmodel\">");
                out.println("<h4 class=\"list-group-item-heading\">" + s[i] + "</h4>");
                i++;
                out.println("<p class=\"list-group-item-text\">" + s[i] + "</p>");
                out.println("</a>");
            }
        } else if (pa2.compareTo("down") == 0) {
            u = new User();
            l = u.getRequests(un, s);
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
                speed = new User();
                speed.getSpeed(s[i], sp);
                avg = ((sp[0] * 100) / 5000);
                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-success\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">DOS " + avg + "%</div>");
                out.println("</div>");
                out.println("<div class=\"progress\">");
                avg = ((sp[0] * 100) / 5000);
                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-info\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">Monotor " + avg + "%</div>");
                out.println("</div>");
                out.println("<div class=\"progress\">");
                avg = ((sp[0] * 100) / 5000);
                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-danger\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">Control " + avg + "%</div>");
                out.println("</div>");
                out.println("</div>");
                out.println("</form>");
                out.println("</div>");
                out.println("<div class=\"modal-footer\">");
                out.println("<button type=\"button\" class=\"btn btn-success\" data-dismiss=\"modal\" onclick='acceptControls(\"" + s[i] + "\")'>Accept</button>");
                out.println("</div>");
                i++;
                out.println("</div>");
                out.println("</div>");
                out.println("</div>");
                dos = 0;
                mon = 0;
                con = 0;
            }
        }
    } else if (pa1.compareTo("pending") == 0) {
        if (pa2.compareTo("up") == 0) {
            u = new User();
            l = u.getRequestsPen(un, s);
            for (int i = 0; i < l; i++) {
                out.println("<a href=\"#\" class=\"list-group-item list-group-item-danger\" data-toggle=\"modal\" data-target=\"#" + s[i] + "pendingmodel\">");
                out.println("<h4 class=\"list-group-item-heading\">" + s[i] + "</h4>");
                i++;
                out.println("<p class=\"list-group-item-text\">" + s[i] + "</p>");
                out.println("</a>");
            }
        } else if (pa2.compareTo("down") == 0) {
            u = new User();
            l = u.getRequestsPen(un, s);
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
                speed = new User();
                speed.getSpeed(s[i], sp);
                avg = ((sp[0] * 100) / 5000);
                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-success\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">DOS " + avg + "%</div>");
                out.println("</div>");
                out.println("<div class=\"progress\">");
                avg = ((sp[0] * 100) / 5000);
                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-info\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">Monotor " + avg + "%</div>");
                out.println("</div>");
                out.println("<div class=\"progress\">");
                avg = ((sp[0] * 100) / 5000);
                out.println("<div class=\"progress-bar progress-bar-striped active progress-bar-danger\" role=\"progressbar\" aria-valuenow=\"100\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:" + avg + "%\">Control " + avg + "%</div>");
                out.println("</div>");
                out.println("</div>");
                out.println("</form>");
                out.println("</div>");
                out.println("<div class=\"modal-footer\">");
                i++;
                out.println("<button type=\"button\" class=\"btn btn-success\" data-dismiss=\"modal\">Close</button>");
                out.println("</div>");
                out.println("</div>");
                out.println("</div>");
                out.println("</div>");
                dos = 0;
                mon = 0;
                con = 0;
            }
        }
    }%>