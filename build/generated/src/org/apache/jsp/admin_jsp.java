package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<head>\n");
      out.write("    <style>\n");
      out.write("        input{\n");
      out.write("            margin-top: 20px;\n");
      out.write("            margin-left: 10px;\n");
      out.write("            padding:10px;\n");
      out.write("            align:center;\n");
      out.write("}\n");
      out.write("        \n");
      out.write("        </style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <form action=\"admin1.jsp\" method=\"get\">\n");
      out.write("        <input type=\"submit\" value=\"ADD SINGER\" id=\"as\" name=\"as\">\n");
      out.write("        <input type=\"submit\" value=\"DELETE SINGER\" id=\"ds\"><br>\n");
      out.write("        <input type=\"submit\" value=\"ADD ALBUM\" id=\"aa\" name=\"aa\">\n");
      out.write("        <input type=\"submit\" value=\"DELETE ALBUM\" id=\"da\"><br>\n");
      out.write("        <input type=\"submit\" value=\"ADD SONG\" id=\"as1\">\n");
      out.write("        <input type=\"submit\" value=\"DELETE SONG\" id=\"ds1\"><br>\n");
      out.write("        <input type=\"submit\" value=\"LOGOUT\" name =\"lg\">\n");
      out.write("    </form>\n");
      out.write("</body>");
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
