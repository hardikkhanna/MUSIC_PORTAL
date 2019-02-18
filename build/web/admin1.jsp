<%@ page import="java.sql.*;"%>
   <jsp:useBean id="cn" scope="page" class="mm.Conn" />
   <%
   ResultSet rs;
   
String s1=(String) request.getParameter("as");
     session.setAttribute("ADD SINGER",s1);
     out.println("Welcome ADMIN");
  %>
  <br> <a href="addsinger.jsp" target="_blank"> ADD SINGER</a>
  <a href="deletesinger.jsp" target="_blank"> DELETE SINGER</a>
  <a href="modifysinger.jsp" target="_blank"> Modify SINGER</a><br>
  <a href="addalbum.jsp" target="_blank"> ADD ALBUM</a>
  <a href="deleteAlbum.jsp" target="_blank"> DELETE SINGER</a>
  <a href="modifyalbum.jsp" target="_blank"> Modify ALBUM</a><br>
  <a href="addsong.jsp" target="_blank"> ADD SONG</a>
  <a href="deletesong.jsp" target="_blank"> DELETE SINGER</a>
  <a href="modifysong.jsp" target="_blank"> Modify SONG</a><br>
