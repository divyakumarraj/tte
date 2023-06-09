<%-- <%@ page import="java.sql.*" %>

<%
Connection con=null;
ResultSet rs=null;
Statement st=null;


String u=request.getParameter("user");
String p=request.getParameter("p1");

try{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube", "root", "root");
st=con.createStatement();
String query="Select * from login_details where uname='"+u+"' and pass='"+p+"'";
rs= st.executeQuery(query);


if(rs.next())
{
session.setAttribute("user",u);
response.sendRedirect("home.jsp");
}
else
{
response.sendRedirect("login1.jsp?status=false"); //status is attribute here
}

}//End of try
catch(Exception e)
{
out.println(e);
}
%> --%>

<%@ page import="java.sql.*" %>

<%
Connection con=null;
ResultSet rsLogin=null;
ResultSet rsUser=null;
Statement st=null;

String u = request.getParameter("user");
String p = request.getParameter("p1");

try {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube", "root", "root");
    st = con.createStatement();
    
    // Check login_details table
    String loginQuery = "SELECT * FROM login_details WHERE umobil='" + u + "' AND pass='" + p + "'";
    rsLogin = st.executeQuery(loginQuery);
    
    if (rsLogin.next()) {
        session.setAttribute("user", u);
        response.sendRedirect("home.jsp");
    } else {
        // Check user_details table
        String userQuery = "SELECT * FROM user_details WHERE u_mobile='" + u + "' AND u_pass='" + p + "'";
        rsUser = st.executeQuery(userQuery);
        
        if (rsUser.next()) {
            session.setAttribute("user", u);
            response.sendRedirect("user.jsp");
        } else {
            response.sendRedirect("login1.jsp?status=false"); // Status is attribute here
        }
    }
} catch (Exception e) {
    out.println(e);
}
%>
