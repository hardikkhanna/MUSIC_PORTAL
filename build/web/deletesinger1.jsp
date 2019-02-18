<%@include file="DbConnect.jsp" %>
<jsp:useBean id="cn" scope="page" class="mm.Conn" />
    <%
        String uname=(String)request.getParameter("user");
        int n = cn.executeUpdate("Delete from singer where sid='"+uname+"'");
        if(n>0)
            out.println("<h1>User Deleted!!!");
        else
            out.println("<h1>User Does not Exist!!!");
       response.sendRedirect("admin1.jsp");
        %>