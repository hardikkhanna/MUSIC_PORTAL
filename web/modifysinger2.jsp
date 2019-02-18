<%@include file="DbConnect.jsp" %>
         <%
        ResultSet rs ;
        String uid=(String) request.getParameter("t1");
        String uname=(String) request.getParameter("t2");
        String phone=(String) request.getParameter("t3");
        String loc=(String) request.getParameter("t4");
        String email= (String) request.getParameter("t5");

        int n = s.executeUpdate("update singer set sid='"+uid+"',sname='"+uname+"',phone='"+phone+"',loc='"+loc+"',email='"+email+"' where sid='"+uid+"' ;");
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