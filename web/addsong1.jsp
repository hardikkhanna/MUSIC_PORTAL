<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.io.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.io.FilenameUtils"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="DbConnect.jsp" %>
<center><h1>Songs added to database successfully</h1></center>
<%
     String sid="";
     String aid="";
     String real="";
 %>
 <%
 boolean isMultipart = ServletFileUpload.isMultipartContent(request);
 if (!isMultipart)
 {
 }
 else
 {
 ServletFileUpload servletFileUpload = new ServletFileUpload(new DiskFileItemFactory());
 List items = null;
   try
   {
items = servletFileUpload.parseRequest(request);
   }
   catch (FileUploadException e)
   {
       e.printStackTrace();
   }
   Iterator itr = items.iterator();
   while (itr.hasNext())
	   {
   FileItem item = (FileItem) itr.next();
   if (item.isFormField())
	   {
	      String name = item.getFieldName();
		  String value = item.getString();
                  System.out.println("name "+name);
                  System.out.println("value "+value);
                   if(name.equals("t1"))
                      sid=value;
                 if(name.equals("t2"))
                      aid=value;

        }
   else
	   {
    try
    {
   String itemName = item.getName();
//out.println("Actual File "+FilenameUtils.getName(itemName));
//out.println("path="+config.getServletContext().getRealPath("/"));
real = FilenameUtils.getName(itemName);
//System.out.println("real "+real);
//System.out.println(config.getServletContext().getRealPath("/"));
File savedFile = new File(config.getServletContext().getRealPath("/")+"../../web/images/"+real);
     item.write(savedFile);
     }
    catch (Exception e)
    {
        e.printStackTrace();
    }
   }
   }
   }
try{
   // out.println(sid+" "+snum+" "+phone+" "+email+" "+loc);
Connection connection=s.getConnection();
String s1="insert into song (songid,aid,sgname) values(?,?,?)";
PreparedStatement stmt=connection.prepareStatement(s1);
stmt.setString(1,sid);
stmt.setString(2,aid);
stmt.setString(3,real);
int  n=stmt.executeUpdate();
if(n>0)
{
    out.println("<h1>Sussecful ");
 //   out.println("hello");
   // out.println(sid+" "+snum+" "+phone+" "+email+" "+loc);
//response.sendRedirect("index.jsp");
}
else
{
    out.println("<h1>Sorry!!!something went wrong...");
    response.sendRedirect("error.jsp");
}
 }
catch(Exception e)
{
    out.println(e);
}
   %>