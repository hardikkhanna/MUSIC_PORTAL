package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;

public final class admin1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("   ");
      mm.Conn cn = null;
      synchronized (_jspx_page_context) {
        cn = (mm.Conn) _jspx_page_context.getAttribute("cn", PageContext.PAGE_SCOPE);
        if (cn == null){
          cn = new mm.Conn();
          _jspx_page_context.setAttribute("cn", cn, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\r\n");
      out.write("   ");

   ResultSet rs;
   
String s1=(String) request.getParameter("as");
     session.setAttribute("ADD SINGER",s1);
     out.println("Welcome ADMIN");
  
      out.write("\r\n");
      out.write("  <br> <a href=\"addsinger.jsp\" target=\"_blank\"> ADD SINGER</a>\r\n");
      out.write("  <a href=\"deletesinger.jsp\" target=\"_blank\"> DELETE SINGER</a><br>\r\n");
      out.write("  <a href=\"addalbum.jsp\" target=\"_blank\"> ADD ALBUM</a>\r\n");
      out.write("  <a href=\"deletesinger.jsp\" target=\"_blank\"> DELETE SINGER</a><br>\r\n");
      out.write("  <a href=\"addsong.jsp\" target=\"_blank\"> ADD SONG</a>\r\n");
      out.write("  <a href=\"deletesinger.jsp\" target=\"_blank\"> DELETE SINGER</a><br>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
