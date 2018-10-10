<%-- 
    Document   : newjsp
    Created on : Feb 7, 2018, 1:51:29 PM
    Author     : Raja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Page</title>
    </head>
    <body>
      <%
        String username=request.getParameter("username");
        String password=request.getParameter("password");
      try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
//ResourceBundle rb = ResourceBundle.getBundle("Test.Connect.connect");
    //    connectionURL = "jdbc:mysql://" + rb.getString("server.name") + ":" + rb.getString("port.no") + "/" + rb.getString("database.name") + "?zeroDateTimeBehavior=convertToNull";    
           Connection con=DriverManager.getConnection("jdbc:mysql://10.10.226.57:3306/video","video","video");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from login where username='"+username+"' and passwd='"+password+"'");
           
          if(rs.next()){
            //response.sendRedirect("https://10.30.1.1/horizon/containers/Apache/");
            //response.sendRedirect("http://10.30.1.1:8080/v1/AUTH_10298b287d624f71a7cfbc6e6b5793d3/Apache/1.mp4");
                      
                      response.sendRedirect("links.html");
                      
       
      }
          else{
           response.sendRedirect("Error.jsp");
          }
        
      }catch(Exception e){
          out.print(e);
      }
        
       // if((username.equals("raja") && password.equals("jain")))
        //    {
        //    session.setAttribute("username",username);
         //   response.sendRedirect("Home.jsp");
        //    }
       // else
         //   response.sendRedirect("Error.jsp");
        %>
    </body>
</html>


