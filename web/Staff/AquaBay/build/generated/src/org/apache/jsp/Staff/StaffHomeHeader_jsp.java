package org.apache.jsp.Staff;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class StaffHomeHeader_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Staff/../TemplateStyleFiles/MyStyles.jsp");
  }

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

      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("\r\n");
      db.DBConnection obj = null;
      synchronized (_jspx_page_context) {
        obj = (db.DBConnection) _jspx_page_context.getAttribute("obj", PageContext.PAGE_SCOPE);
        if (obj == null){
          obj = new db.DBConnection();
          _jspx_page_context.setAttribute("obj", obj, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("input[type=\"text\"],\r\n");
      out.write("[type=\"file\"],\r\n");
      out.write("[type=\"password\"],\r\n");
      out.write("[type=\"number\"],\r\n");
      out.write("[type=\"time\"],\r\n");
      out.write("[type=\"email\"]\r\n");
      out.write("\r\n");
      out.write("{\r\n");
      out.write("    display: block;\r\n");
      out.write("    width: 245px;\r\n");
      out.write("    height: 35px;\r\n");
      out.write("    padding: 6px 12px;\r\n");
      out.write("    font-size: 18px;\r\n");
      out.write("    font-weight: bold;\r\n");
      out.write("    line-height: 1.428571429;\r\n");
      out.write("    color: #000000;\r\n");
      out.write("    background-color:#ee1e3a;\r\n");
      out.write("    background-image: none;\r\n");
      out.write("    border: 1px solid #cccccc;\r\n");
      out.write("    border-radius: 5px;\r\n");
      out.write("    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);\r\n");
      out.write("    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);\r\n");
      out.write("    -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;\r\n");
      out.write("    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;\r\n");
      out.write("}\r\n");
      out.write(" input[type=\"date\"]\r\n");
      out.write("{\r\n");
      out.write("    display: block;\r\n");
      out.write("    width: 245px;\r\n");
      out.write("    height: 35px;\r\n");
      out.write("    padding: 6px 12px;\r\n");
      out.write("    font-size: 18px;\r\n");
      out.write("    font-weight: bold;\r\n");
      out.write("    line-height: 1.428571429;\r\n");
      out.write("    color: #000000;\r\n");
      out.write("    background-color: #00cc44;\r\n");
      out.write("    background-image: none;\r\n");
      out.write("    border: 1px solid #cccccc;\r\n");
      out.write("    border-radius: 5px;\r\n");
      out.write("    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);\r\n");
      out.write("    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);\r\n");
      out.write("    -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;\r\n");
      out.write("    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("select \r\n");
      out.write("{\r\n");
      out.write("    display: block;\r\n");
      out.write("    width: 245px;\r\n");
      out.write("    height: 35px;\r\n");
      out.write("    padding: 6px 12px;\r\n");
      out.write("    font-size: 18px;\r\n");
      out.write("    font-weight: bold;\r\n");
      out.write("    line-height: 1.428571429;\r\n");
      out.write("    color: #000000;\r\n");
      out.write("    background-color:#00cc44;\r\n");
      out.write("    background-image: none;\r\n");
      out.write("    border: 1px solid #cccccc;\r\n");
      out.write("    border-radius: 5px;\r\n");
      out.write("    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);\r\n");
      out.write("    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);\r\n");
      out.write("    -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;\r\n");
      out.write("    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;\r\n");
      out.write("}\r\n");
      out.write("select option \r\n");
      out.write("{\r\n");
      out.write("\r\n");
      out.write("    color: #000000;\r\n");
      out.write("    background-color: #00cc44;\r\n");
      out.write("    text-shadow: 0 1px 0 rgba(0, 0, 0, 0.4);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("textarea \r\n");
      out.write("{\r\n");
      out.write("    overflow: auto;\r\n");
      out.write("    height:70px;\r\n");
      out.write("    width: 245px;\r\n");
      out.write("    padding: 6px 12px;\r\n");
      out.write("    font-size: 18px;\r\n");
      out.write("    font-weight: bold;\r\n");
      out.write("    line-height: 1.428571429;\r\n");
      out.write("    color: #000000;\r\n");
      out.write("    background-color: #00cc44;\r\n");
      out.write("    background-image: none;\r\n");
      out.write("    border: 1px solid #cccccc;\r\n");
      out.write("    border-radius: 5px;\r\n");
      out.write("    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);\r\n");
      out.write("    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);\r\n");
      out.write("    -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;\r\n");
      out.write("    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;\r\n");
      out.write("}\r\n");
      out.write("input[type=\"radio\"]\r\n");
      out.write("{\r\n");
      out.write("    width: 50px;\r\n");
      out.write("    height: 18px;\r\n");
      out.write("}\r\n");
      out.write("input[type=\"radio\"] + label \r\n");
      out.write("{\r\n");
      out.write("    color:#f2f2f2;\r\n");
      out.write("    font-family:Arial, sans-serif;\r\n");
      out.write("    font-size:18px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("input[placeholder], [placeholder], *[placeholder] \r\n");
      out.write("{\r\n");
      out.write("    color:#fff; \r\n");
      out.write("    opasity:.50;\r\n");
      out.write("}\r\n");
      out.write("*::-webkit-input-placeholder {\r\n");
      out.write("    color: #304600;\r\n");
      out.write("    opasity:.50;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("input[type=\"submit\"],\r\n");
      out.write("[type=\"reset\"]\r\n");
      out.write("{\r\n");
      out.write("    margin-bottom: 0;\r\n");
      out.write("    font-weight: normal;\r\n");
      out.write("    text-align: center;\r\n");
      out.write("    vertical-align: middle;\r\n");
      out.write("    cursor: pointer;\r\n");
      out.write("    background-image: none;\r\n");
      out.write("    border: 1px solid transparent;\r\n");
      out.write("    white-space: nowrap;\r\n");
      out.write("    padding: 6px 12px;\r\n");
      out.write("    font-size: 16px;\r\n");
      out.write("    line-height: 1.428571429;\r\n");
      out.write("    border-radius: 5px;   \r\n");
      out.write("    color: #ffffff;\r\n");
      out.write("    background-color: rgb(252, 73, 3);\r\n");
      out.write("    border-color: rgba(10, 10, 10, 0.47);\r\n");
      out.write("    width: 245px;\r\n");
      out.write("    height: 35px;\r\n");
      out.write("    \r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("input[type=\"submit\"]:hover,\r\n");
      out.write("[type=\"reset\"]:hover\r\n");
      out.write("{\r\n");
      out.write("    color:rgb(252, 73, 3);\r\n");
      out.write("    background-color: #ffffff;\r\n");
      out.write("    border-color: #000000;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("table.Round_corner_Form_Base \r\n");
      out.write("{\r\n");
      out.write("\r\n");
      out.write("    margin-left: auto;\r\n");
      out.write("    margin-right: auto;\r\n");
      out.write("    margin-top: 100px;\r\n");
      out.write("    margin-bottom: 40px;\r\n");
      out.write("    \r\n");
      out.write("    padding: 5px;\r\n");
      out.write("    \r\n");
      out.write("    border: #ccc 1px solid;\r\n");
      out.write("    border-collapse: separate;\r\n");
      out.write("    border-spacing: 10px 10px;\r\n");
      out.write("    border-radius: 10px;\r\n");
      out.write("    \r\n");
      out.write("    box-shadow: 0 2px 5px #000;\r\n");
      out.write("    background: #f8f8f8;\r\n");
      out.write("    font-size: 12px;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write(".Round_corner_Form_Base td\r\n");
      out.write("{\r\n");
      out.write("    padding: 5px;\r\n");
      out.write("    vertical-align: top;\r\n");
      out.write("    background : 0;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(".Content_Table \r\n");
      out.write("{\r\n");
      out.write("    margin-left: auto;\r\n");
      out.write("    margin-right: auto;\r\n");
      out.write("    padding: 5px;\r\n");
      out.write("    white-space: nowrap;\r\n");
      out.write("    border: #ffffff 3px solid;\r\n");
      out.write("    border-collapse: collapse;\r\n");
      out.write("    border-spacing: 10px 5px;\r\n");
      out.write("    border-radius: 10px;    \r\n");
      out.write("    background-color: #000000;    \r\n");
      out.write("    opacity: .75\r\n");
      out.write("}\r\n");
      out.write(".Content_Table th\r\n");
      out.write("{\r\n");
      out.write("    padding: 3px 5px;    \r\n");
      out.write("}\r\n");
      out.write(".Content_Table tr\r\n");
      out.write("{\r\n");
      out.write("  padding: 15px;\r\n");
      out.write("   background : #000000;\r\n");
      out.write("}\r\n");
      out.write(".Content_Table td\r\n");
      out.write("{\r\n");
      out.write("    font-family: sans-serif;\r\n");
      out.write("    font-size: 16px;\r\n");
      out.write("    text-shadow: 2px 2px 5px black;    \r\n");
      out.write("    background : #000000;\r\n");
      out.write("    color: white;    \r\n");
      out.write("    padding: 3px 5px;    \r\n");
      out.write("    vertical-align: middle;\r\n");
      out.write("}\r\n");
      out.write(".Content_Table td:hover \r\n");
      out.write("{\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".Content_Table tr:hover \r\n");
      out.write("{\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write(".Content_Table caption\r\n");
      out.write("{\r\n");
      out.write("   font-size: 38px;\r\n");
      out.write("   font-family: fantasy;\r\n");
      out.write("   text-align: center;\r\n");
      out.write("   caption-side: top;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</style>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <!-- Mobile Metas -->\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <!-- Site Metas -->\r\n");
      out.write("    <title>Aquaponics</title>\r\n");
      out.write("    <meta name=\"keywords\" content=\"\">\r\n");
      out.write("    <meta name=\"description\" content=\"\">\r\n");
      out.write("    <meta name=\"author\" content=\"\">\r\n");
      out.write("    <!-- Site Icons -->\r\n");
      out.write("    <link rel=\"shortcut icon\" href=\"../TemplateStyleFiles/images/favicon.ico\" type=\"image/x-icon\">\r\n");
      out.write("    <link rel=\"apple-touch-icon\" href=\"../TemplateStyleFiles/images/apple-touch-icon.png\">\r\n");
      out.write("    <!-- Bootstrap CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../TemplateStyleFiles/css/bootstrap.min.css\">\r\n");
      out.write("    <!-- Site CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../TemplateStyleFiles/css/style.css\">\r\n");
      out.write("    <!-- Responsive CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../TemplateStyleFiles/css/responsive.css\">\r\n");
      out.write("    <!-- Custom CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../TemplateStyleFiles/css/custom.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <!-- Start Main Top -->\r\n");
      out.write("    <header class=\"main-header\">\r\n");
      out.write("        <!-- Start Navigation -->\r\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <!-- Start Header Navigation -->\r\n");
      out.write("                <div class=\"navbar-header\">\r\n");
      out.write("                    <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbar-menu\" aria-controls=\"navbars-rs-food\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("                    <i class=\"fa fa-bars\"></i>\r\n");
      out.write("                </button>\r\n");
      out.write("                    <a class=\"navbar-brand\" href=\"StaffHomePage.jsp\"><img src=\"../TemplateStyleFiles/Aqua.png\" width=\"250px\" height=\"70px\" class=\"logo\" alt=\"\"></a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbar-menu\">\r\n");
      out.write("                    <ul class=\"nav navbar-nav ml-auto\" data-in=\"fadeInDown\" data-out=\"fadeOutUp\">\r\n");
      out.write("                        <li class=\"nav-item active\"><a class=\"nav-link\" href=\"StaffHomePage.jsp\">Home</a></li> \r\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"StaffProfile.jsp\">Profile</a></li>\r\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"PondChooser.jsp\">Verify</a></li>\r\n");
      out.write("                        <li class=\"dropdown\">\r\n");
      out.write("                            <a href=\"#\" class=\"nav-link dropdown-toggle arrow\" data-toggle=\"dropdown\">Material</a>\r\n");
      out.write("                            <ul class=\"dropdown-menu\">\r\n");
      out.write("                                <li><a href=\"PondMechanism.jsp\">Pond Mechanism</a></li>\r\n");
      out.write("                                <li><a href=\"SecondaryLayer.jsp\">Security Layer</a></li>\r\n");
      out.write("                                <li><a href=\"FarmBedMechanism.jsp\">Farm Bed Mechanism</a></li>\r\n");
      out.write("                                <li><a href=\"FilterCategory.jsp\">Filter Types</a></li>\r\n");
      out.write("                                <li><a href=\"FilterDetails.jsp\">Filter Details</a></li>\r\n");
      out.write("                                <li><a href=\"TestkitDetails.jsp\">Test Kit Details</a></li>\r\n");
      out.write("                                <li><a href=\"FishDetails.jsp\">Fish Seed Details</a></li>\r\n");
      out.write("                                <li><a href=\"FeedDetails.jsp\">Feed Details</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li>\r\n");
      out.write("                         <li class=\"dropdown\">\r\n");
      out.write("                            <a href=\"#\" class=\"nav-link dropdown-toggle arrow\" data-toggle=\"dropdown\">Employees</a>\r\n");
      out.write("                            <ul class=\"dropdown-menu\">\r\n");
      out.write("                                <li><a href=\"D.jsp\">Pond Mechanism</a></li>\r\n");
      out.write("                                <li><a href=\"DailyWorkerDetails.jsp\">Employee</a></li>\r\n");
      out.write("                                <li><a href=\"FarmBedMechanism.jsp\">Farm Bed Mechanism</a></li>\r\n");
      out.write("                                <li><a href=\"FilterCategory.jsp\">Filter Types</a></li>\r\n");
      out.write("                                <li><a href=\"FilterDetails.jsp\">Filter Details</a></li>\r\n");
      out.write("                                <li><a href=\"TestkitDetails.jsp\">Test Kit Details</a></li>\r\n");
      out.write("                                <li><a href=\"FishDetails.jsp\">Fish Seed Details</a></li>\r\n");
      out.write("                                <li><a href=\"FeedDetails.jsp\">Feed Details</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"DailyWorkerDetails.jsp\">Employees</a></li>\r\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"../Gust/GuestHomePage.jsp\">Logout</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("    </header>\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    ");
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
