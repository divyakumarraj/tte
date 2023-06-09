<%@ page import="java.sql.*" %>


<%

Connection v=null;
Statement st=null;

String name=request.getParameter("nme");
String email=request.getParameter("eml");
String pnum=request.getParameter("pno");
String subject=request.getParameter("sub");
String message=request.getParameter("msg");


try
{
Class.forName("com.mysql.jdbc.Driver");
v=DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube", "root", "root");
st=v.createStatement();
String query="Insert into feedback (`cname`,`cemail`,`cpnumber`,`csubject`,`cmessage`) values('"+name+"','"+email+"','"+pnum+"','"+subject+"','"+message+"')";




int count = st.executeUpdate(query);
 if(count!=0)
 {
    out.println("Data Submitted successfully you are redirected to login page");
    //int delay=5;
     //String redirectURL ="signup1.html";
      response.setHeader("Refresh", 2 +";URL="+"index.html");
     // response.sendRedirect("signup1.html");
 }
 else
 {
    out.println("Data not successfully");
 }


}//End of try block
catch(Exception e) 
{
out.println(e);
}
%>
