<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("melogin.html");
%>