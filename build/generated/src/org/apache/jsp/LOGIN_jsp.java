package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class LOGIN_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("    <title>COLLEGE APPLICATION APPROVAL</title>\n");
      out.write("\t<style>\n");
      out.write("\tbody{\n");
      out.write("            \n");
      out.write("           background: radial-gradient(red, black);\n");
      out.write("/*\tbackground-color:#660000;*/\n");
      out.write("/*background: linear-gradient(to left, black 0%,red 100%);*/       \n");
      out.write("        }\n");
      out.write("\t.log{\n");
      out.write("\ttext-align:center;\n");
      out.write("\tfont-family:Courier New;\n");
      out.write("\tfont-size:40px;\n");
      out.write("\tcolor:#444;\n");
      out.write("\t}\n");
      out.write("\n");
      out.write("\t.frm{\n");
      out.write("           \n");
      out.write("/*\tbackground-color:white;*/\n");
      out.write("background: radial-gradient(#FFE4B5, white);\n");
      out.write("\theight:420px;;\n");
      out.write("\twidth:350px;;\n");
      out.write("\tmargin:auto;\n");
      out.write("\tborder-radius:30px;\n");
      out.write("\tbox-shadow:5px 5px 5px black;\n");
      out.write("        margin-top:5%;\n");
      out.write("       \n");
      out.write("        \n");
      out.write("\t}\n");
      out.write("\t.abc{\n");
      out.write("\tborder-radius:5px;\n");
      out.write("\theight:40px;\n");
      out.write("\twidth:250px\n");
      out.write("\t\n");
      out.write("\t}\n");
      out.write("\t.inp{\n");
      out.write("\tfont-size:20px;\n");
      out.write("/*\tfont-family:Helvetica;*/\n");
      out.write("        font-weight:Courier New;\n");
      out.write("\t}\n");
      out.write("\n");
      out.write("\t.acc1{\n");
      out.write("\tfloat:left;\n");
      out.write("\t}\n");
      out.write("\t.acc{\n");
      out.write("\tfloat:left;\n");
      out.write("\t}\n");
      out.write("\t.forgo{\n");
      out.write("\tfloat:left;\n");
      out.write("\t\n");
      out.write("\t}\n");
      out.write("\t.butt{\n");
      out.write("\tfloat:right;}\n");
      out.write("\t.csf{\n");
      out.write("            font-family:Courier New;\n");
      out.write("            text-decoration:none;\n");
      out.write("            font-weight: bold;\n");
      out.write("            color:black;\n");
      out.write("            border-radius: 5px;\n");
      out.write("        \n");
      out.write("        \n");
      out.write("\t}\n");
      out.write("\t.csf:hover{\n");
      out.write("\tbackground: linear-gradient(to right, red 0%,white 100%);\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("  input[type=submit]:hover {\n");
      out.write("  background: linear-gradient(to left, red 0%,white 100%);\n");
      out.write("    \n");
      out.write("   \n");
      out.write("    \n");
      out.write("}\n");
      out.write("  input[type=submit] {\n");
      out.write("    width: 100%;\n");
      out.write("    background:linear-gradient(to right, black 0%,white 100%);\n");
      out.write("    color: white;\n");
      out.write("    padding: 14px 20px;\n");
      out.write("    margin: 8px 0;\n");
      out.write("    border: none;\n");
      out.write("    \n");
      out.write("    border-radius: 5px;\n");
      out.write("    cursor: pointer;\n");
      out.write("\tfont-weight:bold;\n");
      out.write("\tfont-size:20px;\n");
      out.write("\tbox-shadow:5px 5px 5px;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("  </head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"frm\">\n");
      out.write("        <form action=\"loginlogin.jsp\" >\n");
      out.write("            <table align=\"center\" >\n");
      out.write("                <tr><th class=\"log\">Log In</th></tr>  \n");
      out.write("                <tr><td class=\"inp\">USERNAME</td></tr>\n");
      out.write("                <tr><td><input class=\"abc\" type=\"text\" name=\"user\" placeholder=\"eg.abc123\" required></td></tr>\n");
      out.write("                <tr><td class=\"inp\" >PASSWORD</td></tr>\n");
      out.write("                <tr><td><input class=\"abc\" id=\"myInput\" type=\"password\" name=\"pwsd\" required placeholder=\"*********\"></td></tr>\n");
      out.write("                <tr><td><input type=\"checkbox\" onclick=\"myFunction1()\">Show Password<input type=\"checkbox\" name=\"remember\"> Remember me\n");
      out.write("                        <script>\n");
      out.write("                            function myFunction1() {\n");
      out.write("                                var x = document.getElementById(\"myInput\");\n");
      out.write("                                if (x.type === \"password\") {\n");
      out.write("                                    x.type = \"text\";\n");
      out.write("                                } else {\n");
      out.write("                                    x.type = \"password\";\n");
      out.write("                                }\n");
      out.write("                            }\n");
      out.write("                                                    </script></td></tr>\n");
      out.write("                \n");
      out.write("\t<tr><td><input type=\"submit\" value=\"LOGIN\"></td></tr>\n");
      out.write("\t<tr></tr>\n");
      out.write("\t</table>\n");
      out.write("\t</form>\n");
      out.write("        <div class=\"acc1\">\n");
      out.write("            <a href=\"LOGINADMIN.jsp\" class=\"csf\">As Admin</a>\n");
      out.write("        </div>\n");
      out.write("        <BR><BR>\n");
      out.write("        <div class=\"forgo\">\n");
      out.write("            <a href=\"\" class=\"csf\" onclick=\"myFunction()\">FORGOT PASSWORD?</a>\n");
      out.write("            <script>\n");
      out.write("                function myFunction() {\n");
      out.write("                    window.open(\"PASS.jsp\", \"_blank\", \"width=300,height=300\");\n");
      out.write("                    }\n");
      out.write("                                    </script>\n");
      out.write("        </div>\n");
      out.write("        <BR><BR>\n");
      out.write("        \n");
      out.write("          <div class=\"acc\">\n");
      out.write("      <a href=\"SIGNUP.jsp\" class=\"csf\">CREATE NEW ACCOUNT?</a>\n");
      out.write("\t\n");
      out.write("\t</div>\n");
      out.write("            </div>  \n");
      out.write(" </body>\n");
      out.write(" </html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
