<%@ page import="java.sql.*;"%>


   <jsp:useBean id="cn" scope="page" class="mm.Conn" />
 <%
   ResultSet rs;
  ResultSet rw;
  String g="";
  String sw="";
   String uname=(String) request.getParameter("a");
   
   String s="select * from album where aname='"+uname+"'";
   rw=cn.executeQuery(s);
   while(rw.next()){
    g=rw.getString("aid");}
   rs=cn.executeQuery("select sgname from album,song where album.aid=song.aid and song.aid='"+g+"'");
   while(rs.next()){
       sw=rs.getString("sgname");
       out.println(sw);
   }
   
   %>
   <body><form action="search1.jsp" name="f">
           <a href="download2.jsp?val=<%=sw%>">Download </a>

<p></form>
   </body>