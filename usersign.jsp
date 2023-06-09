<%@ page import="java.sql.*" %>



<%

Connection v=null;
Statement st=null;
ResultSet rs=null;

String one=request.getParameter("uuser");

String two=request.getParameter("eemail");

String three=request.getParameter("mmobile");

//String fore=request.getParameter("mobile");
String four=request.getParameter("ppas1");


try
{        //start if try block
            Class.forName("com.mysql.jdbc.Driver");
            v=DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube", "root", "root");
            st=v.createStatement();
            String selectQuery="Select * from user_details where u_mobile='"+three+"' ";
            rs=st.executeQuery(selectQuery);
            //check of mobile number
            if(rs.next())
            {
               out.println("Acount Already Exist ! , Please Login");
               response.setHeader("Refresh", 2 +";URL="+"login1.jsp");
            }
            else
            {        //start of data insertion
               
            String query="Insert into user_details (`u_name`,`u_email`,`u_mobile`,`u_pass`) values('"+one+"','"+two+"','"+three+"','"+four+"')";

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
