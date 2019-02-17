<%@ page import="java.sql.*;"%>
   <jsp:useBean id="cn" scope="page" class="mm.Conn" />
   <%
   ResultSet rs;
   
String s1=(String) request.getParameter("as");
     session.setAttribute("ADD SINGER",s1);
     out.println("Welcome ADMIN");
  %>
  <br> <a href="addsinger.jsp" target="_blank"> ADD SINGER</a>
  <a href="deletesinger.jsp" target="_blank"> DELETE SINGER</a><br>
  <a href="addalbum.jsp" target="_blank"> ADD ALBUM</a>
  <a href="deletesinger.jsp" target="_blank"> DELETE SINGER</a><br>
  <a href="addsong.jsp" target="_blank"> ADD SONG</a>
  <a href="deletesinger.jsp" target="_blank"> DELETE SINGER</a><br>
