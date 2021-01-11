package org.apache.jsp.Administrator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class ThingsCategory_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/Administrator/AdminHomeHeader.jsp");
    _jspx_dependants.add("/Administrator/../TemplateStyleFiles/SmallSlideBar.jsp");
    _jspx_dependants.add("/Administrator/AdminHomeFooter.jsp");
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

      out.write("<!-- HEADER  STARTS-->\r\n");
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
      out.write("    <title>Itsy | A cutesy little template by FreeHTML5.co</title>\r\n");
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
      out.write("                <a href=\"index.html\" title=\"Go to Home\" style=\"font-family:verdana;font-size: 40px;color:red\">Itsy</a>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div><!-- /logo -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <nav id=\"nav\" role=\"navigation\">\r\n");
      out.write("            <div class=\"table\">\r\n");
      out.write("                <div class=\"table-cell\">\r\n");
      out.write("                    <ul id=\"menu-menu-1\"style=\"font-family: Lucida Console;\">\r\n");
      out.write("                        <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"AdminHomePage.jsp\">Home</a></li>                                         \r\n");
      out.write("                        <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"#\">Location</a>\r\n");
      out.write("                            <ul class=\"sub-menu\">\r\n");
      out.write("                                <li class=\"menu-item\">\r\n");
      out.write("                                    <a href=\"StateCreation.jsp\">State</a></li>\r\n");
      out.write("                                <li class=\"menu-item\">\r\n");
      out.write("                                    <a href=\"DistrictCreation.jsp\">District</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li>                       \r\n");
      out.write("                           \r\n");
      out.write("                         <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"\">Category</a>\r\n");
      out.write("                            <ul class=\"sub-menu\">\r\n");
      out.write("                                <li class=\"menu-item\">\r\n");
      out.write("                                    <a href=\"StaffCategory.jsp\">Staff Category</a></li>\r\n");
      out.write("                                <li class=\"menu-item\">\r\n");
      out.write("                                    <a href=\"VehicleCategory.jsp\">Vehicle Category</a></li>\r\n");
      out.write("                                <li class=\"menu-item\">\r\n");
      out.write("                                    <a href=\"ThingsCategory.jsp\">Things Category</a></li>\r\n");
      out.write("                                <li class=\"menu-item\">\r\n");
      out.write("                                    <a href=\"BuildingCategory.jsp\">Building Category</a></li>                                 \r\n");
      out.write("                                 <li class=\"menu-item\">\r\n");
      out.write("                                    <a href=\"ExpenceCategory.jsp\">Expense Category</a></li> \r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li>                        \r\n");
      out.write("                        <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"SelectDatePage.jsp\">Status</a></li>\r\n");
      out.write("                        \r\n");
      out.write("                        <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"\">Staff</a>\r\n");
      out.write("                            <ul class=\"sub-menu\">\r\n");
      out.write("                                \r\n");
      out.write("                                <li class=\"menu-item\">\r\n");
      out.write("                                    <a href=\"StaffApproval.jsp\">Approve Staff</a></li>\r\n");
      out.write("                                <li class=\"menu-item\">\r\n");
      out.write("                                    <a href=\"StaffDesc.jsp\">Staffs Details</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"ViewContacts.jsp\">Enquiries</a></li>\r\n");
      out.write("                        <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"../Guest/GuestHomePage.jsp\">Logout</a></li>\r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("        \r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("</header>\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div style=\"margin-top:150px; margin-left: 50px; margin-bottom: 50px;\">\r\n");
      out.write("  \r\n");
      out.write("<table class=\"Round_corner_Form_Base\">\r\n");
      out.write("    <tr>\r\n");
      out.write("        <td style=\"vertical-align: middle;\">     \r\n");
      out.write("<!-- HEADER  ENDS-->  \r\n");
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        ");

            String did=request.getParameter("did");
            String eid=request.getParameter("eid");
            
            String thingsCategoryName="";
            String thingsServiceCharge="";
           
            if (eid!=null)
            {
                String selectQuery="select * from tbl_thingscategory where thingsCategoryID="+eid;
                ResultSet rs=obj.select(selectQuery);
                if(rs.next())
                {
                    thingsCategoryName=rs.getString("thingsCategoryName");
                    thingsServiceCharge=rs.getString("thingsServiceCharge");
                }
            }
            if(did!=null)
            {
                String del="delete from tbl_thingscategory where thingsCategoryID='"+did+"'";
                obj.executeCommand(del);
            }
            
            if (request.getParameter("btnsubmit")!=null)
            {
                thingsCategoryName=request.getParameter("thingsCategoryName");                
                thingsServiceCharge=request.getParameter("thingsServiceCharge");
                String hid=request.getParameter("hid");
                if(!hid.equals("null"))
                {
                    String updateQuery="update tbl_thingscategory set thingsCategoryName='"+thingsCategoryName+"',thingsServiceCharge='"+thingsServiceCharge+"' where thingsCategoryID='"+hid+"'";
                    System.out.print("updateQuery:"+updateQuery);
                    boolean c=obj.executeCommand(updateQuery);
                    if(c)
                    {
                        out.print("<script> alert('updated')</script>");
                        response.sendRedirect("ThingsCategory.jsp");
                    }
                    else
                    {
                         out.print("<script> alert('not updated')</script>");
                    }
                }
                else
                {
                    String ins="insert into tbl_thingscategory(thingsServiceCharge,thingsCategoryName)values('"+thingsServiceCharge+"','"+thingsCategoryName+"')";
                    out.print(ins);
                    boolean b=obj.executeCommand(ins);
                    if(b)
                    {
                        out.print("inserted");
                        response.sendRedirect("ThingsCategory.jsp");
                    }
                    else
                    {
                        out.print("Not inserted");               
                    }
                }
        }
        
      out.write("\r\n");
      out.write("            \r\n");
      out.write("        <form name=\"Form1\" method=\"POST\"> \r\n");
      out.write("            \r\n");
      out.write("        <table class=\"one\" >\r\n");
      out.write("        <div align=\"center\" >        \r\n");
      out.write("            <table class=\"Content_Table\">\r\n");
      out.write("                <caption>\r\n");
      out.write("                    <h2>Things Category</h2>\r\n");
      out.write("                </caption> \r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        Things Category Name\r\n");
      out.write("                    </td>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <input type=\"text\" name=\"thingsCategoryName\" value=\"");
      out.print(thingsCategoryName);
      out.write("\" required=\"\" >                        \r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td>\r\n");
      out.write("                       Things Service Charge\r\n");
      out.write("                    </td>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <input type=\"text\" name=\"thingsServiceCharge\" value=\"");
      out.print(thingsServiceCharge);
      out.write("\" required=\"\" >                        \r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td >\r\n");
      out.write("                        <input type=\"hidden\" name=\"hid\" value=\"");
      out.print(eid);
      out.write("\">  \r\n");
      out.write("                        <input type=\"reset\" name=\"btnreset\" value=\"Reset\">   \r\n");
      out.write("                    </td>\r\n");
      out.write("                    <td >\r\n");
      out.write("                <center><input type=\"submit\" name=\"btnsubmit\" value=\"Submit\">\r\n");
      out.write("                                                                                          \r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("            </table>\r\n");
      out.write("        </div>\r\n");
      out.write("        </td>\r\n");
      out.write("        \r\n");
      out.write("        <td style=\"vertical-align: top;\">\r\n");
      out.write("            <!-- Small Slide  STARTS-->\r\n");
      out.write("            ");
      out.write("                    <div >\n");
      out.write("                      <aside >\n");
      out.write("                  \n");
      out.write("                        <div >\n");
      out.write("                            <img alt=\"img\" src=\"../TemplateStyleFiles/images/Flower-Shop.jpg\" width=\"500px\" height=\"280px\" >\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                      </aside>\n");
      out.write("                    </div>");
      out.write("\r\n");
      out.write("            <!-- Small Slide  ENDS-->\r\n");
      out.write("        </td>\r\n");
      out.write("       \r\n");
      out.write("    </tr>\r\n");
      out.write("    \r\n");
      out.write("    <tr>\r\n");
      out.write("        <td>\r\n");
      out.write("            <div align=\"center\" >         \r\n");
      out.write("                <table class=\"Dispaly_Table\">\r\n");
      out.write("\r\n");
      out.write("                     <caption>\r\n");
      out.write("                        <h2>Things Category Details</h2>\r\n");
      out.write("                     </caption>  \r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                             <tr>\r\n");
      out.write("                                    <th>Category Name</th>\r\n");
      out.write("                                    <th>Service Charge</th>\r\n");
      out.write("                                    <th>EDIT</th>\r\n");
      out.write("                                    <th>DELETE</th>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                           \r\n");
      out.write("                            \r\n");
      out.write("                                ");

                                String sele="select * from tbl_thingscategory";
                                ResultSet rs1=obj.select(sele);
                                while(rs1.next())
                                {
                                    
      out.write("\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    \r\n");
      out.write("                                    <td>");
      out.print(rs1.getString("thingsCategoryName"));
      out.write("</td>    \r\n");
      out.write("                                    <td>");
      out.print(rs1.getString("thingsServiceCharge"));
      out.write("</td>\r\n");
      out.write("                                    <td style=\"width: 80px;\"><a href=\"ThingsCategory.jsp?eid=");
      out.print(rs1.getString("thingsCategoryID"));
      out.write("\"><img src=\"../TemplateStyleFiles/EditIcon.png\" height=\"30px\" width=\"30px\"/></a> </td>\r\n");
      out.write("                                    <td style=\"width: 80px;\"><a href=\"ThingsCategory.jsp?did=");
      out.print(rs1.getString("thingsCategoryID"));
      out.write("\"><img src=\"../TemplateStyleFiles/DeleteIcon.png\" height=\"30px\" width=\"30px\"/></a> </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                ");
}
      out.write("\r\n");
      out.write("                        </table>\r\n");
      out.write("        </form>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- FOOTER  STARTS-->\r\n");
      out.write("       <!-- FOOTER  STARTS-->\r\n");
      out.write("        </td>\r\n");
      out.write("        <td>\r\n");
      out.write("            <!-- Small Slide  STARTS-->\r\n");
      out.write("            ");
      out.write("                    <div >\n");
      out.write("                      <aside >\n");
      out.write("                  \n");
      out.write("                        <div >\n");
      out.write("                            <img alt=\"img\" src=\"../TemplateStyleFiles/images/Flower-Shop.jpg\" width=\"500px\" height=\"280px\" >\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                      </aside>\n");
      out.write("                    </div>");
      out.write("\r\n");
      out.write("            <!-- Small Slide  ENDS-->\r\n");
      out.write("        </td>\r\n");
      out.write("    </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("</div>    \r\n");
      out.write("\r\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"footer-widgets widget-count-4\">\n");
      out.write("\n");
      out.write("    <div class=\"wrap\">\n");
      out.write("\n");
      out.write("        <div class=\"mt-about-you-widget\">\n");
      out.write("            <div class=\"widget footer\">\n");
      out.write("\n");
      out.write("                <img class=\"mt-about-avatar\" src=\"../TemplateStyleFiles/images/about-me.jpg\" alt=\"Clare Itsy\"/>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <h4>Clare Itsy</h4>\n");
      out.write("\n");
      out.write("                <div class=\"mt-about-bio\">\n");
      out.write("                    <p>Hi, my name is Clare and I&#039;m a serial blogger. I love life and more\n");
      out.write("                    than anything in the whole wide world, I love taking photographs. Oh and did I mention, I quite like\n");
      out.write("                    blogging?</p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"widget footer\"><h4>Recent Posts</h4>\n");
      out.write("            <ul>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\">The Lollipop</a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\">Running through Chicago</a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\">The Apothecary</a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\">The Flowers</a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\">The Sunny Day</a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"widget footer\"><h4>Categories</h4>\n");
      out.write("            <ul>\n");
      out.write("                <li class=\"cat-item cat-item-6\">\n");
      out.write("                    <a href=\"#\" title=\"A cute little description would go in here\">Blog</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"cat-item cat-item-7\">\n");
      out.write("                    <a href=\"#\" title=\"A cute little description would go in here\">Cute</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"cat-item cat-item-8\">\n");
      out.write("                    <a href=\"#\">Fitness</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"cat-item cat-item-9\">\n");
      out.write("                    <a href=\"#\">Fun</a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"widget footer\"><h4>Gallery</h4>\n");
      out.write("            <div class=\"textwidget\">\n");
      out.write("                <img src=\"../TemplateStyleFiles/images/gallery.png\" alt=\"\">\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<footer class=\"footer\">\n");
      out.write("    <div class=\"footer-wrap\">\n");
      out.write("        <div id=\"footer-text\">&copy; 2018 Itsy.\n");
      out.write("            Designed by <a href=\"https://freehtml5.co\" target=\"_blank\">FreeHTML5</a>.</div>\n");
      out.write("\n");
      out.write("        <a href=\"#top\" id=\"btt\">Top <i class=\"fa fa-chevron-up\"></i></a>\n");
      out.write("    </div>\n");
      out.write("</footer>\n");
      out.write("\n");
      out.write("<div id=\"topsearch\">\n");
      out.write("    <div class=\"table\">\n");
      out.write("        <div class=\"table-cell\">\n");
      out.write("            <form role=\"search\" method=\"get\" class=\"searchform\" action=\"index.html\">\n");
      out.write("                <div>\n");
      out.write("                    <input type=\"text\" value=\"\" name=\"s\" class=\"s\" placeholder=\"Type and hit enter\"/>\n");
      out.write("                    <input type=\"submit\" class=\"searchsubmit\" value=\"Search\"/>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <a href=\"#topsearch\" class=\"search-trigger\"><i class=\"fa fa-times\"></i></a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<script>var ie9 = false;</script>\n");
      out.write("<!--[if lte IE 9 ]>\n");
      out.write("<script> var ie9 = true; </script>\n");
      out.write("<![endif]-->\n");
      out.write("<script src=\"../TemplateStyleFiles/js/global-plugins.min.js\"></script>\n");
      out.write("<script src=\"../TemplateStyleFiles/js/main.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\r\n");
      out.write("<!-- FOOTER  ENDS-->");
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
