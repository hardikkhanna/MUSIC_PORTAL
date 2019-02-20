<%@include file="DbConnect.jsp" %>
         <%
        ResultSet rs ;
        String uid=(String) request.getParameter("t1");
        String uname=(String) request.getParameter("t2");
        String phone=(String) request.getParameter("t3");
        ;

        int n = s.executeUpdate("update song set songid='"+uid+"',aid='"+uname+"',sgname='"+phone+"' ;");
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