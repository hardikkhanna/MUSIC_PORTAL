<%@ page import="java.io.*" %>
<%

String fn,ext,type="";

try
{


	String name=request.getParameter("val");
        name=config.getServletContext().getRealPath("/")+"\\material\\"+name;
					ext=name.substring(name.indexOf('.'),name.length());

					if(ext.equals(".doc"))
{
						type="msword";
}
					if(ext.equals(".pdf"))
{
						type="pdf";
}
					if(ext.equals(".zip"))
{
						type="zip";
}
					if(ext.equals(".html"))
{
						type="html";
}

String fname=name.substring(name.lastIndexOf('\\')+1,name.indexOf('.'));

response.setContentType("application/"+type);

String disHeader="Attachment;filename="+fname.trim()+ext;

response.setHeader("Content-Disposition", disHeader);

FileInputStream fis = new FileInputStream(name);

DataInputStream dis1 = new DataInputStream(fis);

byte buffer[]= new byte[4096];
                	BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());

int i;

while ((i=dis1.read(buffer,0,buffer.length))!=-1)
 {
 bos.write(buffer);
  }
					bos.close();
}
catch(Exception e)
{
System.out.println(e);
}

%>

