package org.apache.jsp.Staff;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class SitePicker_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Staff/StaffHomeHeader.jsp");
    _jspx_dependants.add("/Staff/StaffHomeFooter.jsp");
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
      out.write("\r\n");
      out.write("<style>\r\n");
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
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<!--\r\n");
      out.write("\tItsy by FreeHTML5.co\r\n");
      out.write("\tTwitter: https://twitter.com/fh5co\r\n");
      out.write("\tFacebook: https://fb.com/fh5co\r\n");
      out.write("\tURL: https://freehtml5.co\r\n");
      out.write("-->\r\n");
      out.write("<html class=\"home blog no-js\" lang=\"en-US\">\r\n");
      out.write("<head>\r\n");
      out.write("    <title>Itsy | Shifters</title>\r\n");
      out.write("\r\n");
      out.write("    <meta charset=\"UTF-8\"/>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\"\r\n");
      out.write("          type=\"text/css\" media=\"all\"/>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Amatic+SC%3A400%2C700%7CLato%3A400%2C700%2C400italic%2C700italic&amp;ver=4.9.8\"\r\n");
      out.write("          type=\"text/css\" media=\"screen\"/>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../TemplateStyleFiles/style.css\" type=\"text/css\" media=\"screen\"/>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../TemplateStyleFiles/print.css\" type=\"text/css\" media=\"print\"/>\r\n");
      out.write("   \r\n");
      out.write("    <script src='../TemplateStyleFiles/js/jquery-3.0.0.min.js'></script>\r\n");
      out.write("    <script src='../TemplateStyleFiles/js/jquery-migrate-3.0.1.min.js'></script>\r\n");
      out.write("    <!--[if lt IE 9]>\r\n");
      out.write("    <script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n");
      out.write("    <![endif]-->\r\n");
      out.write("</head>\r\n");
      out.write("<body class=\"home sticky-menu sidebar-off\" id=\"top\">\r\n");
      out.write("\r\n");
      out.write("<header class=\"header\">\r\n");
      out.write("\r\n");
      out.write("    <div class=\"header-wrap\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"logo plain logo-left\">\r\n");
      out.write("            <div class=\"site-title\">\r\n");
      out.write("                <a href=\"GuestHomePage.jsp\" title=\"Go to Home\"style=\"font-family:verdana;font-size: 40px;color:red\">Itsy</a>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div><!-- /logo -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <nav id=\"nav\" role=\"navigation\">\r\n");
      out.write("            <div class=\"table\">\r\n");
      out.write("                <div class=\"table-cell\">\r\n");
      out.write("                    <ul id=\"menu-menu-1\"style=\"font-family: Lucida Console;\">\r\n");
      out.write("                        \r\n");
      out.write("                        <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"StaffHomePage.jsp\">Home</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        \r\n");
      out.write("                        <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"StaffProfile.jsp\">Profile</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                                                \r\n");
      out.write("                        <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"DailyWorkerDetails.jsp\">Workers</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        \r\n");
      out.write("                        <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"VehicleDetails.jsp\">Vehicles</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        \r\n");
      out.write("                        <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"SiteChooser.jsp\">Verify</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        \r\n");
      out.write("                        <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"SitePicker.jsp\">Assign</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        \r\n");
      out.write("                        <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"StatusSitePicker.jsp\">Finish</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                                               \r\n");
      out.write("                        <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"Contacts.jsp\">Contact</a></li>\r\n");
      out.write("                         \r\n");
      out.write("                        <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"../Guest/GuestHomePage.jsp\">Logout</a></li>\r\n");
      out.write("                      </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("        \r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("</header>\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("\n");
      out.write("<div class=\"div_login\">\n");
      out.write("<div class=\"div_Heading\" >\n");
      out.write("<p class=\"align_center_p\"> Appointment</p>\n");
      out.write("</div>      \n");
      out.write("<table class=\"Round_corner_Form_Base\">\n");
      out.write("    <tr>\n");
      out.write("        <td rowspan=\"2\">  \n");
      out.write("            \n");
      out.write("            <!DOCTYPE html>\n");
      out.write("            <html>\n");
      out.write("            <head>\n");
      out.write("            <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("            <title> Appointment</title>\n");
      out.write("            </head>\n");
      out.write("            <body>     \n");
      out.write("            <form method=\"post\"> \n");
      out.write("            <div align=\"center\" style=\"padding-top:  50px; font-family: sans-serif; font-size: larger; \"  >         \n");
      out.write("            \n");
      out.write("                \n");
      out.write("            <table border=\"1\" class=\"CT\" style=\" border-collapse: collapse; width: 1000px;  overflow: scroll;\">\n");
      out.write("            <caption>\n");
      out.write("                <h2>Select Site</h2>\n");
      out.write("            </caption>  \n");
      out.write("                <tr style=\"height: 35px; background-color: #000; color: #d43f3a; padding: 5px;\">\n");
      out.write("                    <th style=\"padding: 10px;\">ID</th>\n");
      out.write("                    <th style=\"padding: 10px;\">Site</th>\n");
      out.write("                    <th style=\"padding: 10px;\" >Shifting Details</th>                                \n");
      out.write("                </tr>  \n");
      out.write("\n");
      out.write("                ");

                String SSNstaffID=session.getAttribute("staffID").toString();   
                String siteID="";
                String querySelect="SELECT "
                + "a.*,"
                + "b.*,"
                + "c.*,"  
                + "d.*," 
                + "e.*"        
                + " FROM "
                + "tbl_site_register a,"        
                + "tbl_buildingcategory b,"
                + "tbl_state c,"
                + "tbl_district d,"
                + "tbl_user_details e"
                + " WHERE "                                       
                + "a.buildingCategoryID =b.buildingCategoryID"
                + " AND "
                + "a.moveFromStateID=c.stateID"                                     
                + " AND "
                + "a.moveFromDistrictID=d.districtID"   
                + " AND "
                + "a.userID=e.userID"   
                + " AND "    
                + "a.status=2"        
                ;  
                ResultSet rs=obj.select(querySelect);
                System.out.println(" QquerySelect : "+querySelect);
                while(rs.next())
                {
                siteID=rs.getString("siteID");
                
      out.write("\n");
      out.write("\n");
      out.write("                <tr >\n");
      out.write("                    <td align=\"center\">");
      out.print(rs.getString("siteID"));
      out.write("</td>\n");
      out.write("                    <td >\n");
      out.write("\n");
      out.write("                        <table>\n");
      out.write("                            <tr> \n");
      out.write("                                <td>\n");
      out.write("                                    <center><img src='..\\User\\SiteImages\\");
      out.print(rs.getString("siteImage"));
      out.write("' width=\"250\" height=\"250\" />\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                           \n");
      out.write("                            <tr>\n");
      out.write("                                <td>    \n");
      out.write("                                    <table>  \n");
      out.write("                                         <tr> \n");
      out.write("                                            <td>\n");
      out.write("                                                <center> <div style=\"font-size: 20px;\"> <font color=\"#0847a8\">Building Type:  \n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <center> <div style=\"font-size: 20px;\"> <font color=\"#0847a8\">");
      out.print(rs.getString("buildingCategoryName"));
      out.write(" \n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr> \n");
      out.write("                                            <td>Start Date   </td>\n");
      out.write("                                             <td>");
      out.print(rs.getString("startDate"));
      out.write("</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr> \n");
      out.write("                                            <td>Finish Date  </td>\n");
      out.write("                                            <td>");
      out.print(rs.getString("finishDate"));
      out.write("</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr> \n");
      out.write("                                            <td>Road Type </td>\n");
      out.write("                                            <td>");
      out.print(rs.getString("roadType"));
      out.write("</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                         <tr> \n");
      out.write("                                            <td>Distance </td>\n");
      out.write("                                            <td>");
      out.print(rs.getString("distance"));
      out.write("</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>                             \n");
      out.write("                        </table>\n");
      out.write("                    </td>  \n");
      out.write("\n");
      out.write("                    <td>\n");
      out.write("                        <table border=\"1\"  style=\"width: 100%;\">\n");
      out.write("                            <tr> \n");
      out.write("                                <td>\n");
      out.write("                                    <div style=\"font-size: 18px;\"><font color=\"#0847a8\"><b>Start Location</font>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <div style=\"font-size: 18px;\"><font color=\"#0847a8\">");
      out.print(rs.getString("moveFromPlace"));
      out.write("</font> \n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr> \n");
      out.write("                                <td>\n");
      out.write("                                    Address  \n");
      out.write("                                </td>                           \n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(rs.getString("moveFromAddress"));
      out.write(" \n");
      out.write("                                </td>\n");
      out.write("                            </tr>  \n");
      out.write("                            <tr> \n");
      out.write("                                <td>\n");
      out.write("                                    State \n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(rs.getString("stateName"));
      out.write(" \n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr> \n");
      out.write("                                <td>\n");
      out.write("                                    District\n");
      out.write("                                </td>\n");
      out.write("                                 <td>\n");
      out.write("                                     ");
      out.print(rs.getString("districtName"));
      out.write("\n");
      out.write("                                 </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>     \n");
      out.write("                                <td> \n");
      out.write("                                    <div style=\"font-size: 18px;\"><font color=\"#0847a8\">Destination</font>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <div style=\"font-size: 18px;\"><font color=\"#0847a8\">");
      out.print(rs.getString("moveToPlace"));
      out.write(" \n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr> \n");
      out.write("                                <td>Address</td>\n");
      out.write("                                <td>");
      out.print(rs.getString("moveToAddress"));
      out.write(" </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr> \n");
      out.write("                                <td>State</td>\n");
      out.write("                                <td>");
      out.print(rs.getString("stateName"));
      out.write("</td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr> \n");
      out.write("                                <td>District</td>\n");
      out.write("                                <td>");
      out.print(rs.getString("districtName"));
      out.write("</td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr> \n");
      out.write("                                \n");
      out.write("                                <td style=\"text-align:center; vertical-align:middle;\"> \n");
      out.write("                                    <img src='..\\User\\ProfilePictures\\");
      out.print(rs.getString("profilePicture"));
      out.write("' width=\"100\" height=\"100\" />\n");
      out.write("                                </td>  \n");
      out.write("                                <td>\n");
      out.write("                                    <table border=\"1\" style=\"width: 100%;\"> \n");
      out.write("                                        <tr> \n");
      out.write("                                            <td>Name   </td>\n");
      out.write("                                             <td>");
      out.print(rs.getString("firstName"));
      out.write(' ');
      out.print(rs.getString("lastName"));
      out.write("</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr> \n");
      out.write("                                            <td>Contact Number  </td>\n");
      out.write("                                            <td>");
      out.print(rs.getString("contactNumber"));
      out.write(',');
      out.write(' ');
      out.print(rs.getString("mobileNumber"));
      out.write(" </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr> \n");
      out.write("                                            <td>E-Mail </td>\n");
      out.write("                                            <td>");
      out.print(rs.getString("email"));
      out.write("</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                         <tr> \n");
      out.write("                                            <td>Registered Date </td> \n");
      out.write("                                            <td>");
      out.print(rs.getString("currentDate"));
      out.write(" </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                    </td>      \n");
      out.write("                   \n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("               \n");
      out.write("                <tr> \n");
      out.write("                    <td colspan=\"3\" >\n");
      out.write("                        <table style=\"width: 950px;\" >  \n");
      out.write("                            <tr>          \n");
      out.write("                                <td >\n");
      out.write("                            <center> <a href=\"AssignWorker.jsp?siteID=");
      out.print(siteID);
      out.write("\"> <img src='../TemplateStyleFiles/AllotWorker.png' width=\"250\" height=\"80\" /></a>\n");
      out.write("                                </td>\n");
      out.write("                                <td >\n");
      out.write("                                <center> <a href=\"AssignVehicle.jsp?siteID=");
      out.print(siteID);
      out.write("\"> <img src='../TemplateStyleFiles/AllotVehicle.png' width=\"250\" height=\"80\" /></a>\n");
      out.write("                                </td>\n");
      out.write("                                <td >\n");
      out.write("                                    <center> <a href=\"ExpenceDetails.jsp?siteID=");
      out.print(siteID);
      out.write("\"> <img src='../TemplateStyleFiles/AllotVoucher.png' width=\"250\" height=\"80\" /></a>\n");
      out.write("                                </td>                                \n");
      out.write("                            </tr>\n");
      out.write("                        </table>   \n");
      out.write("                    </td> \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"3\" >\n");
      out.write("                        <center>Please Select An Option</center> \n");
      out.write("                    </td>\n");
      out.write("                </tr>    \n");
      out.write("                ");

                }
                
      out.write("\n");
      out.write("            </table>\n");
      out.write("                       \n");
      out.write("            \n");
      out.write("                            \n");
      out.write("            </div>              \n");
      out.write("            </form>\n");
      out.write("            </body>\n");
      out.write("            </html>        \n");
      out.write("        </td>\n");
      out.write("    </tr>\n");
      out.write("</table>\n");
      out.write("</div>    \n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"footer-widgets widget-count-4\">\r\n");
      out.write("\r\n");
      out.write("    <div class=\"wrap\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"mt-about-you-widget\">\r\n");
      out.write("            <div class=\"widget footer\">\r\n");
      out.write("\r\n");
      out.write("                <img class=\"mt-about-avatar\" src=\"../TemplateStyleFiles/images/about-me.jpg\" alt=\"Clare Itsy\"/>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                <h4>Clare Itsy</h4>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"mt-about-bio\">\r\n");
      out.write("                    <p>Hi, my name is Clare and I&#039;m a serial blogger. I love life and more\r\n");
      out.write("                    than anything in the whole wide world, I love taking photographs. Oh and did I mention, I quite like\r\n");
      out.write("                    blogging?</p>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"widget footer\"><h4>Recent Posts</h4>\r\n");
      out.write("            <ul>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"#\">The Lollipop</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"#\">Running through Chicago</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"#\">The Apothecary</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"#\">The Flowers</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a href=\"#\">The Sunny Day</a>\r\n");
      out.write("                </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"widget footer\"><h4>Categories</h4>\r\n");
      out.write("            <ul>\r\n");
      out.write("                <li class=\"cat-item cat-item-6\">\r\n");
      out.write("                    <a href=\"#\" title=\"A cute little description would go in here\">Blog</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"cat-item cat-item-7\">\r\n");
      out.write("                    <a href=\"#\" title=\"A cute little description would go in here\">Cute</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"cat-item cat-item-8\">\r\n");
      out.write("                    <a href=\"#\">Fitness</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"cat-item cat-item-9\">\r\n");
      out.write("                    <a href=\"#\">Fun</a>\r\n");
      out.write("                </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"widget footer\"><h4>Gallery</h4>\r\n");
      out.write("            <div class=\"textwidget\">\r\n");
      out.write("                <img src=\"../TemplateStyleFiles/images/gallery.png\" alt=\"\">\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<footer class=\"footer\">\r\n");
      out.write("    <div class=\"footer-wrap\">\r\n");
      out.write("        <div id=\"footer-text\">&copy; 2018 Itsy.\r\n");
      out.write("            Designed by <a href=\"https://freehtml5.co\" target=\"_blank\">FreeHTML5</a>.</div>\r\n");
      out.write("\r\n");
      out.write("        <a href=\"#top\" id=\"btt\">Top <i class=\"fa fa-chevron-up\"></i></a>\r\n");
      out.write("    </div>\r\n");
      out.write("</footer>\r\n");
      out.write("\r\n");
      out.write("<div id=\"topsearch\">\r\n");
      out.write("    <div class=\"table\">\r\n");
      out.write("        <div class=\"table-cell\">\r\n");
      out.write("            <form role=\"search\" method=\"get\" class=\"searchform\" action=\"index.html\">\r\n");
      out.write("                <div>\r\n");
      out.write("                    <input type=\"text\" value=\"\" name=\"s\" class=\"s\" placeholder=\"Type and hit enter\"/>\r\n");
      out.write("                    <input type=\"submit\" class=\"searchsubmit\" value=\"Search\"/>\r\n");
      out.write("                </div>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <a href=\"#topsearch\" class=\"search-trigger\"><i class=\"fa fa-times\"></i></a>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script>var ie9 = false;</script>\r\n");
      out.write("<!--[if lte IE 9 ]>\r\n");
      out.write("<script> var ie9 = true; </script>\r\n");
      out.write("<![endif]-->\r\n");
      out.write("<script src=\"../TemplateStyleFiles/js/global-plugins.min.js\"></script>\r\n");
      out.write("<script src=\"../TemplateStyleFiles/js/main.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write('\n');
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
