package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class gateleave_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("<style>\n");
      out.write("    body {\n");
      out.write("margin:0;\n");
      out.write("background-color:grey;}\n");
      out.write("    .rightdiv{\n");
      out.write("background-color:white;\n");
      out.write("/*background: linear-gradient(to bottom,  lightcyan 0%,#f6f6f6 100%);*/\n");
      out.write("float:right;\n");
      out.write("width:200px;\n");
      out.write("height:600px;\n");
      out.write("}\n");
      out.write(".lftdiv{\n");
      out.write("width:200PX;\n");
      out.write("height:600px;\n");
      out.write("background-color:white;\n");
      out.write("float:left;\n");
      out.write("/*background: linear-gradient(to bottom,  lightcyan 0%,#f6f6f6 100%);*/\n");
      out.write("}\n");
      out.write(".navbar {  \n");
      out.write("  overflow: hidden;\n");
      out.write("/*  background-color: #333;*/\n");
      out.write("background: linear-gradient(to left,  #333 0%,#f6f6f6 100%);\n");
      out.write("  position: fixed;\n");
      out.write("  top: 0;\n");
      out.write("  width: 100%;\n");
      out.write("  border-bottom: 2px solid Lightcyan;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar a {\n");
      out.write("  font-family:Lucida Console;\n");
      out.write("  float: right;\n");
      out.write("  display: block;\n");
      out.write("  color: #f2f2f2;\n");
      out.write("  text-align: center;\n");
      out.write("  padding: 14px 20px;\n");
      out.write("  text-decoration: none;\n");
      out.write("  font-size: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar a:hover{\n");
      out.write("  background: red;\n");
      out.write("  color: black;\n");
      out.write("  opacity: 0.5;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".butt {\n");
      out.write("\n");
      out.write("background-color:blue;\n");
      out.write("float:right;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar a.active {\n");
      out.write("  background-color: lightcyan;\n");
      out.write("  color: black;\n");
      out.write("}\n");
      out.write(".navbar a.active1 {\n");
      out.write("    background: linear-gradient(to right,  #9c9e9f 0%,#f6f6f6 100%);\n");
      out.write("  background-color: white;\n");
      out.write("  color: black;\n");
      out.write("}\n");
      out.write(".theory{\n");
      out.write("    \n");
      out.write("    height: 1000px;\n");
      out.write("        width:70%;\n");
      out.write("        background-color: white;\n");
      out.write("        margin-left: 100px;\n");
      out.write("}\n");
      out.write(".gate{\n");
      out.write("    height: 300px;\n");
      out.write("    width:100%;\n");
      out.write("     background: linear-gradient(to right,  #9c9e9f 0%,#f6f6f6 100%);\n");
      out.write("}\n");
      out.write(".headgate{\n");
      out.write("    height: 30px;\n");
      out.write("    width: 100%;\n");
      out.write("     background: linear-gradient(to right,  #9c9e9f 0%,red 100%);\n");
      out.write("     font-family: Courier new;\n");
      out.write("     font-size: 25px;\n");
      out.write("     color:white;\n");
      out.write("}\n");
      out.write(".tabform{\n");
      out.write("    align:center;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<title>College Application Approval</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"navbar\">\n");
      out.write("<div class=\"butt\">\n");
      out.write("    <a href=\"LogOutServlet\" >Log out</a></div>\n");
      out.write("   <a href=\"CONTACT.jsp\">Contact</a>\n");
      out.write("   <a href=\"STATUS.jsp\">Status</a>\n");
      out.write("   <a href=\"ABOUTUS.jsp\">About Us</a>\n");
      out.write("   <a href=\"HOMEPAGE.jsp\" class=\"active\">Home</a>  \n");
      out.write("   <a href=\"HOMEPAGE.jsp\" class=\"active1\" style=\"float:left;\">College Appliation Approval</a></div>\n");
      out.write("<br><br><br>\n");
      out.write("<div class=\"lftdiv\"></div>\n");
      out.write("<div class=\"rightdiv\"></div>\n");
      out.write("   <div class=\"gate\">\n");
      out.write("       <div class=\"headgate\">\n");
      out.write("           Gate Pass:\n");
      out.write("       </div>\n");
      out.write("       <form action=\"gateleave\" method=\"get\">\n");
      out.write("           <table class=\"tabform\" cellspacing=\"10\">\n");
      out.write("               <tr><td>DATE</td><td> :</td><td><p>\n");
      out.write("                           <script> document.write(new Date().toLocaleDateString()); </script>\n");
      out.write("                       </p></td></tr>\n");
      out.write("               <tr><td>Name</td><td>:</td><td><input type=\"text\" name=\"name\" value=\"");
      out.print(session.getAttribute("cname").toString() );
      out.write("\"></td></tr>\n");
      out.write("                <tr><td>Id</td><td>:</td><td><input type=\"text\" name=\"id\" value=\"");
      out.print(session.getAttribute("cid").toString() );
      out.write("\"></td></tr>\n");
      out.write("               <tr><td>Leave Required From </td><td>:</td><td><input type=\"datetime-local\" name=\"sdate\"></td></tr>\n");
      out.write("               <tr><td>To </td><td>:</td><td><input type=\"datetime-local\" name=\"edate\"></td></tr>\n");
      out.write("               <tr><td>Leave Required Reason </td>\n");
      out.write("                   <td>:</td><td><textarea rows=\"4\" cols=\"50\" placeholder=\"write valid reason\" name=\"reason\"></textarea></td></tr>\n");
      out.write("               <tr><td></td><td><input type=\"reset\" value=\"Reset\">\n");
      out.write("  <input type=\"submit\" value=\"Submit\"></td><td></td></tr>       \n");
      out.write("           </table>\n");
      out.write("       </form>\n");
      out.write("   </div>\n");
      out.write("<div class=\"complaint\">\n");
      out.write("    <table align=\"center\"  width=\"70%\">\n");
      out.write("        <tr style=\"background: linear-gradient(to right,  red 0%,white 100%);font-family: courier new;\">\n");
      out.write("            <th>#</th>\n");
      out.write("            <th>NAME</th>\n");
      out.write("            <th>ID</th>\n");
      out.write("            <th>COMPLAINT DATE</th>          \n");
      out.write("            <th>COMPLAINT REASON</th>\n");
      out.write("            <th>STATUS</th>\n");
      out.write("        </tr>\n");
      out.write("        <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>\n");
      out.write("    </table>\n");
      out.write("</div>\n");
      out.write("   \n");
      out.write("   </body>\n");
      out.write("</html>\n");
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
