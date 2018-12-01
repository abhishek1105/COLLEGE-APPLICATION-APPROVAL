package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class SIGNUP_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>SIGN UP PAGE</title>\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("\tbackground: radial-gradient(red, black);\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("        \n");
      out.write("        .frm1{\n");
      out.write("\tbackground: radial-gradient(#FFE4B5, white);\n");
      out.write("\theight:90%;\n");
      out.write("\twidth:400px;\n");
      out.write("\tmargin:auto;\n");
      out.write("\tborder-radius:30px;\n");
      out.write("\tbox-shadow:5px 5px 7px black;\n");
      out.write("        margin-top:3%;\n");
      out.write("       \n");
      out.write("\t}\n");
      out.write("        .sign{\n");
      out.write("\ttext-align:center;\n");
      out.write("\tfont-family:Courier New;\n");
      out.write("\tfont-size:40px;\n");
      out.write("\tcolor:#444\n");
      out.write("\t}\n");
      out.write("        .inp1{\n");
      out.write("            \n");
      out.write("\tfont-size:20px;\n");
      out.write("/*\tfont-family:Helvetica;*/\n");
      out.write("        font-weight:Courier New;\n");
      out.write("\t}\n");
      out.write("        .abc1{\n");
      out.write("\tborder-radius:5px;\n");
      out.write("\theight:40px;\n");
      out.write("\twidth:250px\n");
      out.write("\t\n");
      out.write("\t}\n");
      out.write("    input[type=submit]:hover {\n");
      out.write("    background-color: #45a049;\n");
      out.write("}\n");
      out.write("  input[type=submit] {\n");
      out.write("    width: 50%;\n");
      out.write("    background-color: black;\n");
      out.write("    color: white;\n");
      out.write("    padding: 14px 20px;\n");
      out.write("    margin: 8px 0;\n");
      out.write("    border: none;\n");
      out.write("    border-radius: 5px;\n");
      out.write("    cursor: pointer;\n");
      out.write("\tfont-weight:bold;\n");
      out.write("\tfont-size:20px;\n");
      out.write("\tbox-shadow:5px 5px 5px;\n");
      out.write("}\n");
      out.write("            </style>\n");
      out.write("            \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("<!--        <script>\n");
      out.write("function goBack() {\n");
      out.write("    window.history.back();\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("<button onclick=\"goBack()\">Go Back</button>-->\n");
      out.write(" <div class=\"frm1\">\n");
      out.write("            <form action=\"SignUpServlet2\" method=\"get\">\n");
      out.write("            <table align=\"center\">\n");
      out.write("                <tr><th class=\"sign\">SIGN UP</th></tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td class=\"inp1\">NAME</td></tr>\n");
      out.write("                   <tr> <td><input id=\"mytextbox\" onkeyup=\"javascript:capitalize(this.id, this.value);\"   class=\"abc1\" type=\"text\" name=\"fnm\" placeholder=\"eg.RAHUL\" required></td>\n");
      out.write("                      \n");
      out.write("\n");
      out.write("<script type=\"text/javascript\"> function capitalize(textboxid, str) { \n");
      out.write("                           if (str && str.length >= 1) {\n");
      out.write("                               var firstChar = str.charAt(0); \n");
      out.write("                               var remainingStr = str.slice(1); \n");
      out.write("                               str = firstChar.toUpperCase() + remainingStr; }\n");
      out.write("                           document.getElementById(textboxid).value = str; } \n");
      out.write("                       </script>\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("               \n");
      out.write("                    <td class=\"inp1\">E-MAIL</td></tr>\n");
      out.write("                    <tr><td><input class=\"abc1\" type=\"email\" name=\"emaill\" placeholder=\"eg.abc@gmail.com\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td class=\"inp1\">USERNAME</td></tr>\n");
      out.write("                    <tr><td><input class=\"abc1\" type=\"text\" name=\"unm\" placeholder=\"eg.abcdef123\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td class=\"inp1\">PASSWORD</td></tr>\n");
      out.write("                <tr><td><input onblur=\"CheckPassword()\" onclick=\"backtosame()\" class=\"abc1\" type=\"password\" name=\"pswd\" id=\"pwdt\" placeholder=\"ENTER valid pasword\" required></td>\n");
      out.write("                    <script>\n");
      out.write("                    function CheckPassword() { \n");
      out.write("                        var passw = /^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;\n");
      out.write("                        var x=document.getElementById(\"pwdt\").value;\n");
      out.write("                        if(x.match(passw)) {     \n");
      out.write("                            window.alert(\"Password\");\n");
      out.write("                        }\n");
      out.write("                        else{\n");
      out.write("                            window.alert(\"Password and Submit [6 to 20 characters which contain at least one numeric digit, one uppercase and one lowercase letter \");\n");
      out.write("                            document.getElementById(\"pwdt\").style.background = \"red\";   }\n");
      out.write("                    }\n");
      out.write("                  \n");
      out.write("                        </script>\n");
      out.write("                        <script>\n");
      out.write("                          function backtosame(){\n");
      out.write("                        document.getElementById(\"pwdt\").style.background = \"white\";\n");
      out.write("                    }\n");
      out.write("                        </script>\n");
      out.write("                        \n");
      out.write("                </tr>\n");
      out.write("                    <tr>\n");
      out.write("                    <td class=\"inp1\">CONFIRM PASSWORD</td></tr>\n");
      out.write("                    <tr><td><input  onclick=\"backtosameC()\" onblur=\"validate()\" class=\"abc1\" type=\"password\" name=\"cpswd\" id=\"cpwdt\" placeholder=\"repeat pasword\" required></td>\n");
      out.write("                    <script> function validate(){\n");
      out.write("\t\t\t\tvar x = document.getElementById(\"pwdt\").value;\n");
      out.write("\t\t\t\tvar y = document.getElementById(\"cpwdt\").value;\n");
      out.write("\t\t\t\tif(x !== y){\n");
      out.write("\t\t\t\t\twindow.alert(\"PASSWORD NOT MATCHED\");\n");
      out.write("\t\t\t\t\tdocument.getElementById(\"cpwdt\").style.background = \"red\";\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t\telse{\n");
      out.write("\n");
      out.write("\t\t\t\t\tdocument.getElementById(\"cpwdt\").style.background= \"white\";\n");
      out.write("\t\t\t\t\tdocument.getElementById(\"pwdt\").style.background = \"white\";\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t}\n");
      out.write("                        \n");
      out.write("                        </script>\n");
      out.write("                        <script>\n");
      out.write("                          function backtosame(){\n");
      out.write("                        document.getElementById(\"cpwdt\").style.background = \"white\";\n");
      out.write("                    }\n");
      out.write("                        </script>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td class=\"inp1\">MOBILE NUMBER</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><input  type=\"tel\" name=\"mob\" maxlength=\"10\" class=\"abc1\" placeholder=\"eg..458465465\"></td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td class=\"inp1\">UNIQUE ID</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><input type=\"password\" name=\"uni_id\" maxlength=\"5\" class=\"abc1\" placeholder=\"35158\"></td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr><td><input type=\"submit\"  value=\"SIGN UP\"></td></tr>\n");
      out.write("            </table>\n");
      out.write("                </form>\n");
      out.write("                </div>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
