<%
session.invalidate();
out.println("You have been successfully logged out");
response.setHeader("Refresh", 2 +";URL="+"index.html");
%>