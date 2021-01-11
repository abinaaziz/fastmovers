package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class UserHomeHeader_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      db.DBConnection obj = null;
      synchronized (_jspx_page_context) {
        obj = (db.DBConnection) _jspx_page_context.getAttribute("obj", PageContext.PAGE_SCOPE);
        if (obj == null){
          obj = new db.DBConnection();
          _jspx_page_context.setAttribute("obj", obj, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("table.Round_corner_Form_Base \n");
      out.write("{\n");
      out.write("\n");
      out.write("    margin-left: auto;\n");
      out.write("    margin-right: auto;\n");
      out.write("    margin-top: 100px;\n");
      out.write("    margin-bottom: 40px;\n");
      out.write("    \n");
      out.write("    padding: 5px;\n");
      out.write("    \n");
      out.write("    border: #ccc 1px solid;\n");
      out.write("    border-collapse: separate;\n");
      out.write("    border-spacing: 10px 10px;\n");
      out.write("    border-radius: 10px;\n");
      out.write("    \n");
      out.write("    box-shadow: 0 2px 5px #000;\n");
      out.write("    background: #f8f8f8;\n");
      out.write("    font-size: 12px;\n");
      out.write("\n");
      out.write("}\n");
      out.write(".Round_corner_Form_Base td\n");
      out.write("{\n");
      out.write("    padding: 5px;\n");
      out.write("    vertical-align: top;\n");
      out.write("    background : 0;\n");
      out.write("\n");
      out.write("}\n");
      out.write(".notification {\n");
      out.write("  background-color: #555;\n");
      out.write("  color: white;\n");
      out.write("  text-decoration: none;\n");
      out.write("  padding: 15px 26px;\n");
      out.write("  position: relative;\n");
      out.write("  display: inline-block;\n");
      out.write("  border-radius: 2px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".notification:hover {\n");
      out.write("  background: red;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".notification .badge {\n");
      out.write("  position: absolute;\n");
      out.write("  top: -10px;\n");
      out.write("  right: -10px;\n");
      out.write("  padding: 5px 10px;\n");
      out.write("  border-radius: 50%;\n");
      out.write("  background: red;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<!--\n");
      out.write("\tItsy by FreeHTML5.co\n");
      out.write("\tTwitter: https://twitter.com/fh5co\n");
      out.write("\tFacebook: https://fb.com/fh5co\n");
      out.write("\tURL: https://freehtml5.co\n");
      out.write("-->\n");
      out.write("<html class=\"home blog no-js\" lang=\"en-US\">\n");
      out.write("<head>\n");
      out.write("    <title>Itsy | Shifters</title>\n");
      out.write("\n");
      out.write("    <meta charset=\"UTF-8\"/>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\"\n");
      out.write("          type=\"text/css\" media=\"all\"/>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Amatic+SC%3A400%2C700%7CLato%3A400%2C700%2C400italic%2C700italic&amp;ver=4.9.8\"\n");
      out.write("          type=\"text/css\" media=\"screen\"/>\n");
      out.write("    <link rel=\"stylesheet\" href=\"../TemplateStyleFiles/style.css\" type=\"text/css\" media=\"screen\"/>\n");
      out.write("    <link rel=\"stylesheet\" href=\"../TemplateStyleFiles/print.css\" type=\"text/css\" media=\"print\"/>\n");
      out.write("   \n");
      out.write("    <script src='../TemplateStyleFiles/js/jquery-3.0.0.min.js'></script>\n");
      out.write("    <script src='../TemplateStyleFiles/js/jquery-migrate-3.0.1.min.js'></script>\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("    <script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("</head>\n");
      out.write("<body class=\"home sticky-menu sidebar-off\" id=\"top\">\n");
      out.write("\n");
      out.write("<header class=\"header\">\n");
      out.write("\n");
      out.write("    <div class=\"header-wrap\">\n");
      out.write("\n");
      out.write("        <div class=\"logo plain logo-left\">\n");
      out.write("            <div class=\"site-title\">\n");
      out.write("                <a href=\"index.html\" title=\"Go to Home\" style=\"font-family:verdana;font-size: 40px;color:red\">Itsy</a>\n");
      out.write("            </div>\n");
      out.write("        </div><!-- /logo -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <nav id=\"nav\" role=\"navigation\">\n");
      out.write("            <div class=\"table\">\n");
      out.write("                <div class=\"table-cell\">\n");
      out.write("                    <ul id=\"menu-menu-1\" style=\"font-family: Lucida Console;\">\n");
      out.write("                        \n");
      out.write("                        <li class=\"menu-item\">\n");
      out.write("                            <a href=\"UserHomePage.jsp\">Home</a>\n");
      out.write("                        </li>  \n");
      out.write("                        \n");
      out.write("                        <li class=\"menu-item\">\n");
      out.write("                            <a href=\"UserProfile.jsp\">Profile</a>\n");
      out.write("                        </li> \n");
      out.write("                            \n");
      out.write("                        <li class=\"menu-item\">\n");
      out.write("                            <a href=\"RegisterMovementForm.jsp\">Register</a>\n");
      out.write("                        </li> \n");
      out.write("                        <li class=\"menu-item\">\n");
      out.write("                            <a href=\"SiteMoreImagesAdding.jsp\">Image</a>\n");
      out.write("                        </li> \n");
      out.write("                        <li class=\"menu-item\">\n");
      out.write("                            <a href=\"SiteSeleter.jsp\">Advance</a>\n");
      out.write("                        </li>    \n");
      out.write("                         \n");
      out.write("                        <li class=\"menu-item\">\n");
      out.write("                            <a href=\"PaymentSitePicker.jsp\">Payment</a>\n");
      out.write("                        </li> \n");
      out.write("                       \n");
      out.write("                        <li class=\"menu-item\">\n");
      out.write("                            <a href=\"Contacts.jsp\">Contact</a></li>\n");
      out.write("                        <li class=\"menu-item\">\n");
      out.write("                            \n");
      out.write("                            <a href=\"../Guest/GuestHomePage.jsp\">Logout</a></li>\n");
      out.write("                        \n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        \n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</header>\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
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
