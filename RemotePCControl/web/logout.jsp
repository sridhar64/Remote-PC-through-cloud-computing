<%
    session.removeAttribute("username");
    session.invalidate();
%>
<jsp:forward page="login.jsp"/>
