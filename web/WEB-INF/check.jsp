<%-- 
    Document   : check
    Created on : Feb 10, 2018, 11:43:23 AM
    Author     : Raja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
try{
String user=request.getParameter("username");
String pass=request.getParameter("password");
 Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://10.10.236.161:3306/STUDENTS","root","root");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from login where username='"+username+"' and password='"+password'");
           int count=0;
           while(rs.next()){
           count++;
          }
          if(count>0){
           out.println("welcome "+user);
           }
          else{
           response.sendRedirect("login.jsp");
          }
        }
    catch(Exception e){
    System.out.println(e);
}
%>
