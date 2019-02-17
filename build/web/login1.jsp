<%@ page import="java.sql.*;"%>
   <jsp:useBean id="cn" scope="page" class="mm.Conn" />

<%
ResultSet rs;
String uname=(String) request.getParameter("t1");
String pass=(String) request.getParameter("t2");
rs = cn.executeQuery("select * from login where username='"+uname+"' and password='"+pass+"'");
rs.next();
String u=rs.getString("username");
String p=rs.getString("password");
out.println(u);
if((u.equals("admin")) && (p.equals("admin"))){
    response.sendRedirect("admin1.jsp");}

else{
    response.sendRedirect("user.jsp");}

%>
