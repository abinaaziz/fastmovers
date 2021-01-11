package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class AdvanceAndBooking_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/User/UserHomeHeader.jsp");
    _jspx_dependants.add("/User/UserHomeFooter.jsp");
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

      out.write("<!-- HEADER  STARTS-->\n");
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
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"div_login\">\n");
      out.write("<table class=\"Round_corner_Form_Base\" >\n");
      out.write("    <tr>\n");
      out.write("        <td >   \n");
      out.write("            <!DOCTYPE html>\n");
      out.write("            <html>\n");
      out.write("            <head>        \n");
      out.write("            <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("            <title>User Application</title>\n");
      out.write("\n");
      out.write("            <script type=\"text/javascript\" lang=\"javascript\">\n");
      out.write("            function getDistrict(argsStateID)\n");
      out.write("            {\n");
      out.write("                var http;\n");
      out.write("                http=new XMLHttpRequest();\n");
      out.write("                http.onreadystatechange=function()\n");
      out.write("                {\n");
      out.write("                    if(http.readyState==4)\n");
      out.write("                    {\n");
      out.write("                        document.getElementById(\"moveFromDistrict\").innerHTML=http.responseText;\n");
      out.write("                    }\n");
      out.write("                };\n");
      out.write("                http.open(\"GET\",\"ajaxdist.jsp?argsStateID=\"+argsStateID,true);\n");
      out.write("                http.send();\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            </script>\n");
      out.write("            \n");
      out.write("            </head>\n");
      out.write("            <body class=\"backgroungPicture4\">\n");
      out.write("            ");

            String SSNuserID=session.getAttribute("userID").toString(); 
            String URLsiteID=request.getParameter("siteID");
            System.out.print("URLsiteID"+URLsiteID);        
            String eid=request.getParameter("eid");   
            String did=request.getParameter("did");    
            String hid="";

            String itemID = "";       
            String thingsCategoryID = "";        
            String thingsName = "";
            String count = "";           
            String weight = "";        
            String mass = "";        
            String status = "";

            if(request.getParameter("did")!=null)  
            {           
                String queryDelete="delete from tbl_item where itemID="+did;
                System.out.print("queryDelete="+queryDelete);
                boolean result=obj.executeCommand(queryDelete);
                if(result)
                {
                    out.print("<script>alert('Deleted')</script>");
                }
                else
                {
                    out.print("<script>alert('Not Deleted')</script>");
                }
                response.sendRedirect("SiteVerification.jsp?siteID="+URLsiteID);  
            }

            if (eid != null)
            {   
                //hid=request.getParameter("hid");
                String querySelect="select * from tbl_item where itemID="+eid;
                System.out.print("EDIT: eid="+eid);
                ResultSet rs=obj.select(querySelect);                
                if(rs.next())
                {

                    thingsCategoryID =rs.getString("thingsCategoryID");
                    thingsName =rs.getString("thingsName");
                    weight =rs.getString("weight");
                    count =rs.getString("count");                   
                    mass =rs.getString("mass");
                } 
            }

            if (request.getParameter("B_Submit")!=null)
            {   
                System.out.print("Submit Button clicked in file Medicine Details");            
                thingsCategoryID =request.getParameter("thingsCategoryID");
                thingsName =request.getParameter("thingsName");
                weight =request.getParameter("weight");
                count =request.getParameter("count");                
                mass =request.getParameter("mass");
                if(request.getParameter("eid")!=null)
                {
                    String queryUpadate="update tbl_item set "
                    +"thingsCategoryID='"+thingsCategoryID+"',"
                    +"thingsName='"+thingsName+"',"
                    +"count='"+count+"',"
                    +"weight='"+weight+"',"                      
                    +"mass='"+mass+"'"
                    +" where itemID="+eid;
                    obj.executeCommand(queryUpadate);
                    System.out.println(queryUpadate);
                }
                else
                {
                    String values1="'"+URLsiteID
                    +"','"+thingsCategoryID
                    +"','"+thingsName
                    +"','"+count
                    +"','"+weight   
                    +"','"+mass        
                    +"'";
                    String columns= "siteID,thingsCategoryID, thingsName, "
                                    + "count,weight,mass"; 
                    String queryInsert="insert into tbl_item("+columns+") values ("+values1+")";
                    System.out.println(queryInsert);
                    boolean a=obj.executeCommand(queryInsert);
                }
                response.sendRedirect("SiteVerification.jsp?siteID="+URLsiteID);  
            }
            if (request.getParameter("B_Finish")!=null)
            {
                String queryUpadate="update tbl_site_register set status=1"
                +" where "
                + "siteID="+URLsiteID;
                obj.executeCommand(queryUpadate);
                response.sendRedirect("StaffHomePage.jsp"); 
            }
            
      out.write("\n");
      out.write("            <script type=\"text/javascript\">        \n");
      out.write("            function required()  \n");
      out.write("            {  \n");
      out.write("                var empt = document.forms[\"form1\"][\"thingsName\"].value; \n");
      out.write("                var empt2 = document.forms[\"form1\"][\"B_Finish\"].value; \n");
      out.write("                if (empt == \"\"&&empt2 ==\"\" )  \n");
      out.write("                {  \n");
      out.write("                    alert(\"REQUIRED FIELD ARE EMPTY!!! PLEASE ENTER VALUE\");  \n");
      out.write("                    return false;  \n");
      out.write("                }  \n");
      out.write("                else   \n");
      out.write("                {  \n");
      out.write("                    return true;   \n");
      out.write("                }  \n");
      out.write("            } \n");
      out.write("            </script>\n");
      out.write("    \n");
      out.write("             <form  method=\"post\" name=\"form1\" action=\"#\" onsubmit=\"required()\"> \n");
      out.write("                        \n");
      out.write("             <table border=\"1\" style='width: 400px;'>\n");
      out.write("                <caption>\n");
      out.write("                    <h2> Approximate Charges</h2>\n");
      out.write("                </caption>\n");
      out.write("                ");

                String siteID="";    
                String querySelect5 = "SELECT "
                + "a.*,"
                + "b.*"                                               
                + " FROM "
                + "tbl_item a, "
                + "tbl_thingscategory b"          
                + " WHERE "
                + "a.thingsCategoryID=b.thingsCategoryID"
                + " AND "
                + "a.siteID="+URLsiteID
                + " AND "        
                + "a.status=0";

                System.out.println("querySelect: "+querySelect5);
                ResultSet rs5=obj.select(querySelect5);
                //System.out.println("File upload file is strt invoking 2:-querySelect"+querySelect);
                float TotalProfitShare=0.0F;
                while(rs5.next())
                {                        
                    TotalProfitShare=TotalProfitShare+Float.parseFloat(rs5.getString("count"))*Float.parseFloat(rs5.getString("thingsServiceCharge"));
                }
               
                String querySelect1="SELECT "
                + "a.*"
                + " FROM "
                + "tbl_approximate_wages a,"        
                + "tbl_site_register b"
                + " WHERE "
                + "a.siteID =b.siteID"
                + " AND "
                + "a.siteID="+URLsiteID 
                + " AND "
                + "b.siteID="+URLsiteID         
                + " AND "
                + "b.status=1"        
                ;  
                ResultSet rs1=obj.select(querySelect1);
                System.out.println(" QquerySelect : "+querySelect1);
                float approximateNetTotal=0.0F;                
                float advanceAmount=0.0F;
                float approximateGrossTotal=0.0F; 
                float advance=0.0F; 
                
                while(rs1.next())
                {
                siteID=rs1.getString("siteID");
                
      out.write("\n");
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                   <td>\n");
      out.write("                       Approximate Wages\n");
      out.write("                   </td>\n");
      out.write("                   <td>\n");
      out.write("                      Rs:  ");
      out.print(rs1.getString("approximateWages"));
      out.write("\n");
      out.write("                   </td>\n");
      out.write("                </tr>   \n");
      out.write("                <tr>\n");
      out.write("                   <td>\n");
      out.write("                       Approximate Vehicle Charge\n");
      out.write("                   </td>\n");
      out.write("                   <td>\n");
      out.write("                      Rs:  ");
      out.print(rs1.getString("approximateVehicleCharge"));
      out.write("\n");
      out.write("                   </td>\n");
      out.write("                </tr> \n");
      out.write("                <tr>\n");
      out.write("                   <td>\n");
      out.write("                       Approximate Service Charge\n");
      out.write("                   </td>\n");
      out.write("                   <td>\n");
      out.write("                     Rs:  ");
      out.print(rs1.getString("approximateServiceCharge"));
      out.write("\n");
      out.write("                   </td>\n");
      out.write("                </tr> \n");
      out.write("                <tr>\n");
      out.write("                   <td>\n");
      out.write("                       Extra Charges\n");
      out.write("                   </td>\n");
      out.write("                   <td>\n");
      out.write("                      Rs:  ");
      out.print(rs1.getString("anyExtraCharges"));
      out.write("\n");
      out.write("                   </td>\n");
      out.write("                </tr> \n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                   <td>\n");
      out.write("                       Staff Note\n");
      out.write("                   </td>\n");
      out.write("                   <td>\n");
      out.write("                      ");
      out.print(rs1.getString("description"));
      out.write("\n");
      out.write("                   </td>\n");
      out.write("                </tr> \n");
      out.write("                ");

                    approximateNetTotal+=(
                            Float.parseFloat(rs1.getString("approximateWages"))+
                            Float.parseFloat( rs1.getString("approximateVehicleCharge"))+
                            Float.parseFloat(rs1.getString("approximateServiceCharge"))+
                            Float.parseFloat( rs1.getString("anyExtraCharges"))
                            );
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                   <td>\n");
      out.write("                       Approximate Total Charge\n");
      out.write("                   </td>\n");
      out.write("                   <td>\n");
      out.write("                      Rs: ");
      out.print(approximateNetTotal);
      out.write("\n");
      out.write("                   </td>\n");
      out.write("                </tr> \n");
      out.write("                <tr>\n");
      out.write("                   <td>\n");
      out.write("                       Total Shifting Fare\n");
      out.write("                   </td>\n");
      out.write("                   <td>\n");
      out.write("                     Rs: ");
      out.print(TotalProfitShare);
      out.write("\n");
      out.write("                   </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                   <td>\n");
      out.write("                      <div style=\"font-size: 20px;\"> <font color=\"#0847a8\"> Approximate Total Fare \n");
      out.write("                   </td>\n");
      out.write("                   <td>\n");
      out.write("                        ");

                            approximateGrossTotal=approximateNetTotal+TotalProfitShare;
                        
      out.write("\n");
      out.write("                       <div style=\"font-size: 20px;\"> <font color=\"#0847a8\">Rs: ");
      out.print(approximateGrossTotal);
      out.write("\n");
      out.write("                   </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                   <td>\n");
      out.write("                      <div style=\"font-size: 20px;\"> <font color=\"#800000\"> Advance to Pay \n");
      out.write("                   </td>\n");
      out.write("                   <td>\n");
      out.write("                        ");

                            advance=approximateGrossTotal*.10F;
                        
      out.write("\n");
      out.write("                       <div style=\"font-size: 20px;\"> <font color=\"#800000\"> Rs: ");
      out.print(advance);
      out.write("\n");
      out.write("                   </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\"> \n");
      out.write("                        <center> \n");
      out.write("                            <a href=\"AdvancePayment.jsp?siteID=");
      out.print(siteID);
      out.write("&advance=");
      out.print(advance);
      out.write("\"> \n");
      out.write("                                 <img src='../TemplateStyleFiles/PayAdvance.png' width=\"250\" height=\"60\" />\n");
      out.write("                             </a>\n");
      out.write("                        </center>         \n");
      out.write("                    </td>                    \n");
      out.write("                </tr>\n");
      out.write("                ");

                }
                
      out.write("\n");
      out.write("            </table>\n");
      out.write("            </div>        \n");
      out.write("        </td>\n");
      out.write("        <td style=\"vertical-align: top;padding-top: 0px;\">            \n");
      out.write("            <table  >            \n");
      out.write("                <tr >                                  \n");
      out.write("                    <th colspan=\"2\">SITE & OWNER DETAILS </th>               \n");
      out.write("                </tr>\n");
      out.write("                ");

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
                + "a.userID ="+SSNuserID
                + " AND "  
                + "a.buildingCategoryID =b.buildingCategoryID"
                + " AND "
                + "a.moveFromStateID=c.stateID"                                     
                + " AND "
                + "a.moveFromDistrictID=d.districtID"   
                + " AND "
                + "a.userID=e.userID"  
                + " AND "
                + "a.siteID="+URLsiteID         
                + " AND "    
                + "a.status=1"        
                ;  
                ResultSet rs=obj.select(querySelect);
                System.out.println(" QquerySelect : "+querySelect);
                while(rs.next())
                {
                
      out.write("\n");
      out.write("\n");
      out.write("                <tr>                    \n");
      out.write("                    <td>\n");
      out.write("                        <center><img src='..\\User\\SiteImages\\");
      out.print(rs.getString("siteImage"));
      out.write("' width=\"160\" height=\"160\" />\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <table style=\"width: 100%;\" border='1' >\n");
      out.write("                             <tr> \n");
      out.write("                                <td>\n");
      out.write("                                    <div style=\"font-size: 20px;\"> <font color=\"#0847a8\">Building Type:  \n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <div style=\"font-size: 20px;\"> <font color=\"#0847a8\">");
      out.print(rs.getString("buildingCategoryName"));
      out.write(" \n");
      out.write("                                </td>\n");
      out.write("                            </tr>  \n");
      out.write("                            <tr> \n");
      out.write("                                <td>\n");
      out.write("                                    <div style=\"font-size: 18px;\"><font color=\"#0847a8\"><b>Start Location</font>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <div style=\"font-size: 18px;\"><font color=\"#0847a8\">");
      out.print(rs.getString("moveFromPlace"));
      out.write("</font> \n");
      out.write("                                </td>\n");
      out.write("                            </tr>                            \n");
      out.write("                            <tr>     \n");
      out.write("                                <td> \n");
      out.write("                                    <div style=\"font-size: 18px;\"><font color=\"#0847a8\">Destination</font>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <div style=\"font-size: 18px;\"><font color=\"#0847a8\">");
      out.print(rs.getString("moveToPlace"));
      out.write(" \n");
      out.write("                                </td>\n");
      out.write("                            </tr>                           \n");
      out.write("                            <tr> \n");
      out.write("                                <td>Road Type </td>\n");
      out.write("                                <td>");
      out.print(rs.getString("roadType"));
      out.write("</td>\n");
      out.write("                            </tr>\n");
      out.write("                             <tr> \n");
      out.write("                                <td>Distance </td>\n");
      out.write("                                <td>");
      out.print(rs.getString("distance"));
      out.write("</td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                    </td>\n");
      out.write("                </tr>                           \n");
      out.write("                <tr>\n");
      out.write("                    <td style=\"text-align:center; vertical-align:middle;\"> \n");
      out.write("                                    <img src='..\\User\\ProfilePictures\\");
      out.print(rs.getString("profilePicture"));
      out.write("' width=\"160\" height=\"160\" />\n");
      out.write("                    </td>\n");
      out.write("                    <td>  \n");
      out.write("                        <table style=\"width: 100%\"  border='1'> \n");
      out.write("                            <tr> \n");
      out.write("                                <td><div style=\"font-size: 20px;\"> <font color=\"#0847a8\">Name   </td>\n");
      out.write("                                 <td><div style=\"font-size: 20px;\"> <font color=\"#0847a8\">");
      out.print(rs.getString("firstName"));
      out.write(' ');
      out.print(rs.getString("lastName"));
      out.write("</td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr> \n");
      out.write("                                <td>Place   </td>\n");
      out.write("                                 <td>");
      out.print(rs.getString("place"));
      out.write(" </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr> \n");
      out.write("                                <td>Contact Number  </td>\n");
      out.write("                                <td>");
      out.print(rs.getString("contactNumber"));
      out.write(',');
      out.write(' ');
      out.print(rs.getString("mobileNumber"));
      out.write(" </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr> \n");
      out.write("                                <td>E-Mail </td>\n");
      out.write("                                <td>");
      out.print(rs.getString("email"));
      out.write("</td>\n");
      out.write("                            </tr>\n");
      out.write("                             <tr> \n");
      out.write("                                <td>Registered Date </td> \n");
      out.write("                                <td>");
      out.print(rs.getString("currentDate"));
      out.write(" </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                    </td> \n");
      out.write("                </tr>          \n");
      out.write("                ");

                }
                
      out.write("\n");
      out.write("            </table>                    \n");
      out.write("        </td>\n");
      out.write("    </tr>    \n");
      out.write("    <tr>\n");
      out.write("        <td colspan=\"2\">\n");
      out.write("            <table  style=\"width: 1050px; \" border='1'>   \n");
      out.write("                <caption>    \n");
      out.write("                    <h2> Items To Move</h2>\n");
      out.write("                </caption>      \n");
      out.write("            ");

            int count2=0;
            String querySelect3 = "SELECT "
            + "a.*,"
            + "b.*"                                               
            + " FROM "
            + "tbl_item a, "
            + "tbl_thingscategory b,"
            + "tbl_site_register c"          
            + " WHERE "
            + "a.thingsCategoryID=b.thingsCategoryID"
            + " AND "
            + "a.siteID=c.siteID"        
            + " AND "
            + "c.status=1";

            System.out.println("querySelect: "+querySelect3);
            ResultSet rs3=obj.select(querySelect3);
            //System.out.println("File upload file is strt invoking 2:-querySelect"+querySelect);
            float NetTotal=0.0F;
            while(rs3.next())
            {
            count2++;
            if(count2==1)
            {
            
      out.write("\n");
      out.write("                <tr >                                  \n");
      out.write("                    <th>NO</th>\n");
      out.write("                    <th>Category</th>                                    \n");
      out.write("                    <th>Item Name</th>                   \n");
      out.write("                    <th>Weight</th>    \n");
      out.write("                    <th>Mass</th>\n");
      out.write("                    <th>Count</th>\n");
      out.write("                    <th>Rate</th>\n");
      out.write("                    <th>Total</th>\n");
      out.write("                    <th> Edit</th>  \n");
      out.write("                    <th> Delete</th>  \n");
      out.write("                </tr>\n");
      out.write("            ");

            }
            
      out.write("\n");
      out.write("                <tr >\n");
      out.write("                    <td>\n");
      out.write("                     ");
      out.print(count2);
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                       ");
      out.print(rs3.getString("thingsCategoryName"));
      out.write("\n");
      out.write("                    </td>   \n");
      out.write("                    <td>\n");
      out.write("                     ");
      out.print(rs3.getString("thingsName"));
      out.write("  \n");
      out.write("                    </td>                   \n");
      out.write("                    <td>\n");
      out.write("                       ");
      out.print(rs3.getString("weight"));
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                       ");
      out.print(rs3.getString("mass"));
      out.write("\n");
      out.write("                    </td> \n");
      out.write("                     <td>\n");
      out.write("                        ");
      out.print(rs3.getString("count"));
      out.write("\n");
      out.write("                    </td>  \n");
      out.write("                    <td>\n");
      out.write("                       ");
      out.print(rs3.getString("thingsServiceCharge"));
      out.write("\n");
      out.write("                    </td> \n");
      out.write("                     <td>\n");
      out.write("                       ");
      out.print(Float.parseFloat(rs3.getString("count"))*Float.parseFloat(rs3.getString("thingsServiceCharge")) );
      out.write("\n");
      out.write("                    </td> \n");
      out.write("                    <td>\n");
      out.write("                        <a href=\"SiteVerification.jsp?eid=");
      out.print(rs3.getString("itemID"));
      out.write("&siteID=");
      out.print(rs3.getString("siteID"));
      out.write("\"><img src=\"../TemplateStyleFiles/EditIcon.png\" height=\"30px\" width=\"30px\"></a>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <a href=\"SiteVerification.jsp?did=");
      out.print(rs3.getString("itemID"));
      out.write("&siteID=");
      out.print(rs3.getString("siteID"));
      out.write("\"><img src=\"../TemplateStyleFiles/DeleteIcon.png\" height=\"30px\" width=\"30px\"></a>\n");
      out.write("                    </td>\n");
      out.write("                    ");

                    NetTotal+=(Float.parseFloat(rs3.getString("count"))*Float.parseFloat( rs3.getString("thingsServiceCharge")));
                    
      out.write("\n");
      out.write("                </tr>\n");
      out.write("            ");

            }
            
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"5\" >\n");
      out.write("                       <div  style=\"font-size: 20px;\"> <font color=\"#0847a8\"> \n");
      out.write("                    </td> \n");
      out.write("                    <td colspan=\"2\" >\n");
      out.write("                       <div  style=\"font-size: 20px;\"> <font color=\"#0847a8\"> Net Total \n");
      out.write("                    </td> \n");
      out.write("                    <td colspan=\"3\">\n");
      out.write("                        <div  style=\"font-size: 20px;\"> <font color=\"#0847a8\"> Rs: ");
      out.print(NetTotal);
      out.write("\n");
      out.write("                    </td> \n");
      out.write("                </tr>        \n");
      out.write("            </table>\n");
      out.write("        </td>   \n");
      out.write("    </tr>                               \n");
      out.write("        </div>              \n");
      out.write("    </tr>\n");
      out.write("    </table>\n");
      out.write("                        \n");
      out.write("            <!-- FOOTER  STARTS-->            \n");
      out.write("            </form>\n");
      out.write("            </body>\n");
      out.write("            </html>\n");
      out.write("        </td>\n");
      out.write("    </tr>   \n");
      out.write("</table>\n");
      out.write("</div>   \n");
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
      out.write("\n");
      out.write("\n");
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
