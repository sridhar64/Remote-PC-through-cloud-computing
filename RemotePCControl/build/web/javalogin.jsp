<%@page import="main.User"%><%boolean b = false;
    String un = "";
    un = request.getParameter("user");
    String pa = request.getParameter("pass");
    b = false;
    if (un != null) {
        User u = new User(un, pa);
        b = u.validate();
        if (b == true) {
            out.write("valid");
        } else {
            out.write("notvalid");
        }
    }
%>