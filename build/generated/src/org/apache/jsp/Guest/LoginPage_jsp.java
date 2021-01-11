package org.apache.jsp.Guest;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class LoginPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Guest/GuestHomeHeader.jsp");
    _jspx_dependants.add("/Guest/GuestHomeFooter.jsp");
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!-- HEADER  STARTS-->\r\n");
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
      out.write("                <a href=\"GuestHomePage.jsp\" title=\"Go to Home\"><font color=\"red\">Itsy</font></a>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div><!-- /logo -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <nav id=\"nav\" role=\"navigation\">\r\n");
      out.write("            <div class=\"table\">\r\n");
      out.write("                <div class=\"table-cell\">\r\n");
      out.write("                    <ul id=\"menu-menu-1\">\r\n");
      out.write("                        <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"GuestHomePage.jsp\">Home</a></li>\r\n");
      out.write("                        <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"LoginPage.jsp\">Login</a></li>\r\n");
      out.write("                        <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"#\">Sign Up</a>\r\n");
      out.write("                            <ul class=\"sub-menu\">\r\n");
      out.write("                                <li class=\"menu-item\">\r\n");
      out.write("                                    <a href=\"StaffDetails.jsp\">Staff</a></li>\r\n");
      out.write("                                <li class=\"menu-item\">\r\n");
      out.write("                                    <a href=\"UserDetails.jsp\">User</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                       \r\n");
      out.write("                        <li class=\"menu-item\">\r\n");
      out.write("                            <a href=\"Contacts.jsp\">Contact me</a></li>\r\n");
      out.write("                        <li class=\"menu-inline menu-item\">\r\n");
      out.write("                            <a title=\"Twitter\" href=\"http://twitter.com/fh5co\">\r\n");
      out.write("                                <i class=\"fa fa-twitter\"></i><span class=\"i\">Twitter</span>\r\n");
      out.write("                            </a></li>\r\n");
      out.write("                        <li class=\"menu-inline menu-item\">\r\n");
      out.write("                            <a title=\"Facebook\" href=\"http://www.facebook.com/fh5co\">\r\n");
      out.write("                                <i class=\"fa fa-facebook\"></i><span class=\"i\">Facebook</span>\r\n");
      out.write("                            </a></li>\r\n");
      out.write("                        <li class=\"menu-inline menu-item\">\r\n");
      out.write("                            <a title=\"Flickr\" href=\"#\"><i class=\"fa fa-flickr\"></i><span class=\"i\">Flickr</span></a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"menu-inline menu-item\">\r\n");
      out.write("                            <a title=\"Instagram\" href=\"#\">\r\n");
      out.write("                                <i class=\"fa fa-instagram\"></i><span class=\"i\">Instagram</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <a href=\"#nav\" class=\"menu-trigger\"><i class=\"fa fa-bars\"></i></a>\r\n");
      out.write("\r\n");
      out.write("        <a href=\"#topsearch\" class=\"search-trigger\"><i class=\"fa fa-search\"></i></a>\r\n");
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
      out.write("\r\n");
      out.write("    <div class=\"hero-inner\">\r\n");
      out.write("        <div class=\"inner\">\r\n");
      out.write("            <h1><span class=\"border border-top border-bottom\"></span></h1>\r\n");
      out.write("            \r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <a class=\"more-arrow\" href=\"#content\"></i><span></span></a>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("      \r\n");
      out.write("        ");

        String userName="",password="";
        if(request.getParameter("buttonSubmit")!=null)
        {
            userName=request.getParameter("T1");
            password=request.getParameter("PF1");
          
           //USER
            String sel="select * from tbl_user_details where userName='"+userName+"' and password='"+password+"'";
            ResultSet rs=obj.select(sel);
          
            //STAFF
            String sel1="select * from tbl_staff_details where userName='"+userName+"' and password='"+password+"'";
            //out.print(sel1);
            ResultSet rs1=obj.select(sel1);
            
            /* 
            //STUDENT
            String sel3="select * from tbl_student_details where userName='"+userName+"' and password='"+password+"'";            
            ResultSet rs3=obj.select(sel3);
            */
         
            //ADMIN
            String sel2="select * from tbl_admin_login where userName='"+userName+"' and password='"+password+"'";            
            ResultSet rs2=obj.select(sel2);
            System.out.print(sel2);
           
            if (rs2.next())
            {
                session.setAttribute("id",rs2.getString("adminID"));
                response.sendRedirect("../Administrator/AdminHomePage.jsp");             
               
            }
            
            /*
            //STUDENT
            if (rs3.next())
            {   
                
                session.setAttribute("doctorID",rs3.getString("doctorID"));
                session.setAttribute("doctorStatus",rs3.getString("status"));
                session.setAttribute("doctorCategoryID",rs3.getString("doctorCategoryID"));
                session.setAttribute("specializationID",rs3.getString("specializationID"));
                response.sendRedirect("../Doctor/DoctorHomePage.jsp");
                    
//                int doctorStatus=10;               
//                
//                doctorStatus=Integer.parseInt(rs3.getString("status"));                
//                //out.print("doctorID"+rs3.getString("doctorID"));
//                //out.print("\ndoctorname"+rs3.getString("firstName"));
//                //out.print("doctorStatus"+doctorStatus);
//                
//                
////                if(doctorStatus==1)
////                {
////                    
////                    session.setAttribute("doctorID",rs3.getString("doctorID"));
////                    session.setAttribute("doctorName",(rs3.getString("firstName")+" "+rs3.getString("lastName")) );
////                    session.setAttribute("doctorStatus",rs3.getString("status"));
////                    session.setAttribute("doctorCategoryID",rs3.getString("doctorCategoryID"));
////                    session.setAttribute("specializationID",rs3.getString("specializationID"));
////                    System.out.print("doctorStatus???????????????????");
////                    response.sendRedirect("../Guest/StaffRegistration.jsp");
////                    //out.print("<script> alert('Login Successful: Please Register Yourself')</script>");
////                }
//
////                else if(doctorStatus==3)
////                {
////                    //session.setAttribute("doctorID2",rs3.getString("doctorID"));
////                    //session.setAttribute("doctorStatus",rs3.getString("status"));
////                    //response.sendRedirect("../Member/MemberRenew.jsp");
////                    ////out.print("<script> alert('Login Successful: Please Register Yourself')</script>");
////                }
//                else if(doctorStatus==4)
//                {
//                    session.setAttribute("doctorID",rs3.getString("doctorID"));
//                    session.setAttribute("doctorStatus",rs3.getString("status"));
//                    session.setAttribute("doctorCategoryID",rs3.getString("doctorCategoryID"));
//                    session.setAttribute("specializationID",rs3.getString("specializationID"));
//                    response.sendRedirect("../Staff/StaffHomePage.jsp");
//                    //out.print("<script> alert('Login Successful')</script>");
//                }              
            }
             */
            
            //STAFF
            else if (rs1.next())
            {          
                int staffStatus=10;               
                
                staffStatus=Integer.parseInt(rs1.getString("status"));                
                //out.print("staffID"+rs1.getString("staffID"));
                //out.print("\nstaffname"+rs1.getString("firstName"));
                //out.print("staffStatus"+staffStatus);
                
                
                if(staffStatus==1)
                {
                    
                    session.setAttribute("staffID",rs1.getString("staffID"));
                    session.setAttribute("staffName",(rs1.getString("firstName")+" "+rs1.getString("lastName")) );
                    session.setAttribute("staffStatus",rs1.getString("status"));
                    session.setAttribute("staffCategoryID",rs1.getString("staffCategoryID"));
                    System.out.print("staffStatus???????????????????");
                    response.sendRedirect("../Staff/StaffHomePage.jsp");
                    //out.print("<script> alert('Login Successful: Please Register Yourself')</script>");
                }

                if(staffStatus==3)
                {
                    //session.setAttribute("staffID2",rs1.getString("staffID"));
                    //session.setAttribute("staffStatus",rs1.getString("status"));
                    //response.sendRedirect("../Member/MemberRenew.jsp");
                    ////out.print("<script> alert('Login Successful: Please Register Yourself')</script>");
                }
                else if(staffStatus==4)
                {
//                    session.setAttribute("staffID",rs1.getString("staffID"));
//                    session.setAttribute("staffStatus",rs1.getString("status"));
//                    session.setAttribute("staffCategoryID",rs1.getString("staffCategoryID"));
//                    
//                    response.sendRedirect("../Staff/StaffHomePage.jsp");
                    //out.print("<script> alert('Login Successful')</script>");
                }              
            }
            //USER  
            if (rs.next())
            {
                //out.println(sel);
                session.setAttribute("userID",rs.getString("userID"));
                session.setAttribute("welcomeName",rs.getString("firstName")+" "+rs.getString("lastName"));
                response.sendRedirect("../User/UserHomePage.jsp");             
               
            } 
       
          
            else
            {
                out.print("<script> alert('Login Failed')</script>");
            }
            
        }   
        
        
      out.write("\r\n");
      out.write("<form>\r\n");
      out.write("<table class=\"Round_corner_Form_Base\" border=\"0\">\r\n");
      out.write("    <tr>\r\n");
      out.write("        <td style=\"vertical-align: middle;\">  \r\n");
      out.write("   \r\n");
      out.write("            <table class=\"Content_Table\" >\r\n");
      out.write("                <tr>\r\n");
      out.write("                     <td colspan=\"2\" >\r\n");
      out.write("                        <div class=\"Table_Caption\" align=\"center\">\r\n");
      out.write("                            LOGIN\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>    \r\n");
      out.write("                \r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td style=\"width:250px;\">User Name</td>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <div class=\"input-group margin-bottom-sm\" >\r\n");
      out.write("                            <span class=\"input-group-addon\" style=\"color:#000; text-shadow: 2px 2px 5px white;\" style=\"background-color: #31b0d5;\" >\r\n");
      out.write("                                <i class=\"fa fa-user fa-fw\" aria-hidden=\"true\" ></i>\r\n");
      out.write("                            </span>\r\n");
      out.write("                            <input required=\"\" type=\"text\" name=\"T1\" value=\"\" placeholder=\"User Name\" >\r\n");
      out.write("                        </div>       \r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr> \r\n");
      out.write("               <tr>\r\n");
      out.write("                    <td>Password</td>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <div class=\"input-group margin-bottom-sm\" >\r\n");
      out.write("                            <span class=\"input-group-addon\" style=\"color:#000; text-shadow: 2px 2px 5px white;\" style=\"background-color: #31b0d5;\" >\r\n");
      out.write("                                <i class=\"fa fa-lock fa-fw\" aria-hidden=\"true\" ></i>\r\n");
      out.write("                            </span>\r\n");
      out.write("                            <input type=\"password\" placeholder=\"Password\" name=\"PF1\" value=\"\"  required=\"\" >\r\n");
      out.write("                        </div>       \r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr> \r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td colspan=\"2\" align=\"center\" style=\"padding-top: 30px;  \">\r\n");
      out.write("                        <input type=\"submit\" name=\"buttonSubmit\" value=\"Login\">\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("            </table>                      \r\n");
      out.write("        </form>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("    \r\n");
      out.write("</div>\r\n");
      out.write("        \r\n");
      out.write("        </td>\r\n");
      out.write("\r\n");
      out.write("        <td >\r\n");
      out.write("           <!-- Small Slide  STARTS-->\r\n");
      out.write("            <img src=\"..\\TemplateStyleFiles\\Login.jpg\"   width=\"400px\" height=\"230px\">\r\n");
      out.write("           <!-- Small Slide  ENDS-->\r\n");
      out.write("        </td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("            \r\n");
      out.write("           ");
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
      out.write("\r\n");
      out.write("<!-- FOOTER  ENDS-->\r\n");
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
