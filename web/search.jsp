<%@ page import="java.sql.*;"%>


   <jsp:useBean id="cn" scope="page" class="mm.Conn" />
   <%
     String s="";
   ResultSet rw;
   String uname=(String) request.getParameter("t1");
   rw=cn.executeQuery("select *  from singer,album where album.sid=singer.sid and sname='"+uname+"'");
  
   while(rw.next()){
      s=rw.getString("aname");
       out.println("ALBUM NAME = "+s);
   }
   %>
   <body>
       <a  href=search1.jsp?a=<%=s%> method="post">view details</a>
   </body>