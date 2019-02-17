package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html><head>\n");
      out.write("<title>Login Page</title>\n");
      out.write("   <style>\n");
      out.write("    body{\n");
      out.write("    font-family:sans-serif;  \n");
      out.write("}\n");
      out.write(".box{\n");
      out.write("    width:300px;\n");
      out.write("    padding:40px;\n");
      out.write("    position:absolute;\n");
      out.write("    top:50%;\n");
      out.write("    left:50%;\n");
      out.write("    transform: translate(-50%,-50%);\n");
      out.write("    background: #0A0A0A;\n");
      out.write("    text-align: center;\n");
      out.write("}\n");
      out.write(".box h1{\n");
      out.write("    font-weight: 500;\n");
      out.write("    text-transform: uppercase;\n");
      out.write("    color:white;\n");
      out.write("}\n");
      out.write("#login,#password{\n");
      out.write("    border:0;\n");
      out.write("    outline:none;\n");
      out.write("    background: none;\n");
      out.write("    display: block;\n");
      out.write("    margin: 20px auto;\n");
      out.write("    text-align: center;\n");
      out.write("    border: 2px solid #3498db;\n");
      out.write("    padding: 14px 10px;\n");
      out.write("    width:200px;\n");
      out.write("    color:white;\n");
      out.write("    border-radius: 24px;\n");
      out.write("    transition: 0.25s;\n");
      out.write("}\n");
      out.write("#login:focus,#password:focus{\n");
      out.write("    width:280px;\n");
      out.write("    border-color: #2ecc71;\n");
      out.write("\n");
      out.write("}\n");
      out.write("#submit{\n");
      out.write("    border:0;\n");
      out.write("    background: none;\n");
      out.write("    display: block;\n");
      out.write("    margin: 20px auto;\n");
      out.write("    text-align: center;\n");
      out.write("    border: 2px solid #2ecc71;\n");
      out.write("    padding: 14px 40px;\n");
      out.write("    color:white;\n");
      out.write("    border-radius: 24px;\n");
      out.write("    cursor: pointer;\n");
      out.write("        transition: 0.25s;\n");
      out.write("    outline: none;\n");
      out.write("}\n");
      out.write("#submit:hover{\n");
      out.write("    background: #2ecc71;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#im{\n");
      out.write("    height:100%;\n");
      out.write("    width:100%;\n");
      out.write("}\n");
      out.write("    </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <img src=\"image.jpg\" id=\"im\">\n");
      out.write("    <form class=\"box\" action=\"login1.jsp\" method=\"post\">\n");
      out.write("        <h1>Login</h1>\n");
      out.write("        <input type=\"text\" id=\"login\" placeholder=\"Username\" name=\"t1\">\n");
      out.write("        <input type=\"password\" id=\"password\" name=\"t2\" placeholder=\"Password\" >\n");
      out.write("        <input type=\"submit\" id=\"submit\" value=\"login\">\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
