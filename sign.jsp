<%@ page import="java.sql.*" %>



<%

Connection v=null;
Statement st=null;
ResultSet rs=null;

String one=request.getParameter("user");
String two=request.getParameter("model");
String thr=request.getParameter("email");
String fore=request.getParameter("mobile");
String pas=request.getParameter("pas1");


try
{        //start if try block
            Class.forName("com.mysql.jdbc.Driver");
            v=DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube", "root", "root");
            st=v.createStatement();
            String selectQuery="Select * from login_details where umobil='"+fore+"' ";
            rs=st.executeQuery(selectQuery);
            //check of mobile number
            if(rs.next())
            {
               out.println("Acount Already Exist ! , Please Login");
               response.setHeader("Refresh", 2 +";URL="+"login1.jsp");
            }
            else
            {        //start of data insertion
               
            String query="Insert into login_details (`uname`,`upwd`,`uemail`,`umobil`,`pass`) values('"+one+"','"+two+"','"+thr+"','"+fore+"','"+pas+"')";

            int count = st.executeUpdate(query);

                   if(count!=0)     //checking data submited or not
                  {
                     out.println("Data Submitted successfully you are redirected to login page");
                     //int delay=5;
                     //String redirectURL ="signup1.html";
                        response.setHeader("Refresh", 2 +";URL="+"login1.jsp");
                     // response.sendRedirect("signup1.html");
                  }
                  else
                  {
                     out.println("Data not successfully");
                  }


            }







//String query="Insert into login_details (`uname`,`upwd`,`uemail`,`umobil`,`pass`) values('"+one+"','"+two+"','"+thr+"','"+fore+"','"+pas+"')";



//phone number check






 


}//End of try block
catch(Exception e) 
{
out.println(e);
}
%>
