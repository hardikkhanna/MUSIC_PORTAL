<%@include file="DbConnect.jsp" %>
         <%
        ResultSet rs ;
        String uid=(String) request.getParameter("t1");
        String uname=(String) request.getParameter("t2");
        String phone=(String) request.getParameter("t3");
        ;

        int n = s.executeUpdate("update album set aid='"+uid+"',sid='"+uname+"',aname='"+phone+"' ;");
        if(n>0)
        {

           out.println("User updated");
               response.sendRedirect("admin1.jsp");

        }
        else
        {
         response.sendRedirect("error.jsp");
         }
        %>