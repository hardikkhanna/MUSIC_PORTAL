package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addalbum_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<script>\n");
      out.write("    function valid(){\n");
      out.write("        if(f.t1.value==\"\"){\n");
      out.write("            alert(\"Album id cannot be left empty\");\n");
      out.write("            return;\n");
      out.write("        }\n");
      out.write("        if(f.t2.value==\"\"){\n");
      out.write("            alert(\"Singer Id cannot be left Empty\");\n");
      out.write("            return;\n");
      out.write("        }\n");
      out.write("        if(f.t3.value==\"\"){\n");
      out.write("            alert(\"Album name cannot be left empty\");\n");
      out.write("            return;\n");
      out.write("        }\n");
      out.write("        if((/[a-z]/.test(f.t1.value)) || (/[A-Z]/.test(f.t1.value))){\n");
      out.write("            alert(\"Album id should be numeric\");\n");
      out.write("            return;\n");
      out.write("        }\n");
      out.write("        if((/[a-z]/.test(f.t2.value)) || (/[A-Z]/.test(f.t2.value))){\n");
      out.write("            alert(\"Singer id should be numeric\");\n");
      out.write("            return;\n");
      out.write("        }\n");
      out.write("        f.submit();\n");
      out.write("    }\n");
      out.write("    </script>\n");
      out.write("<body>\n");
      out.write("    <form action=\"addalbum1.jsp\" name=\"f\">\n");
      out.write("        Enter Album id<input type=\"number\" name=\"t1\"><br>\n");
      out.write("        Enter singer id<input type=\"number\" name=\"t2\"><br>\n");
      out.write("        Enter Album name <input type=\"text\" name=\"t3\"><br>\n");
      out.write("        <input type=\"button\" value=\"ADD\" name=\"t4\" onclick=\"valid()\">\n");
      out.write("        <a href=\"admin1.jsp\" >BACK</a>\n");
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
