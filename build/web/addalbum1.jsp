<%@ page import="java.sql.*;"%>
<jsp:useBean id="cn" scope="page" class="mm.Conn" />
<center><h1>Album added to database successfully</h1></center>
 <%

        String aid=(String) request.getParameter("t1");
        String sid= (String) request.getParameter("t2");
       String aname= (String) request.getParameter("t3");
        int n = cn.executeUpdate("insert into album values('"+aid+"','"+sid+"','"+aname+"')");
        if(n>0)
           out.println("<h1>user Created!");
        
        else
            out.println("<h1> User Not Created");

        %>
