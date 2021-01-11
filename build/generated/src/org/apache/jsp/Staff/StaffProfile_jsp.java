package org.apache.jsp.Staff;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class StaffProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/Staff/StaffHomeHeader.jsp");
    _jspx_dependants.add("/Staff/../TemplateStyleFiles/SmallSlideBar.jsp");
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

      out.write("\n");
      out.write("<!-- HEADER  STARTS-->\n");
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
      out.write("                        \r\n");
      out.write("                       \r\n");
      out.write("                        \r\n");
      out.write("                       \r\n");
      out.write("                    </ul>\r\n");
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
      out.write("\n");
      out.write("\n");
      out.write("<div style=\"margin-top:150px; margin-left: 50px; margin-bottom: 50px;\">\n");
      out.write("<table class=\"Round_corner_Form_Base\">\n");
      out.write("    <tr>\n");
      out.write("        <td rowspan=\"4\">   \n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Shop Owner Profile</title>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"backgroungPicture1\">\n");
      out.write("        ");

        String SSNstaffID=session.getAttribute("staffID").toString();    
        String firstName = "";
        String lastName= "";
        String address= "";
        String postbox= "";
        String place= "";
        String pincode= "";
        String district= "";
        String state= "";
        String gender= "";
        String contactNumber= "";
        String mobileNumber= "";
        String email= "";
        String qualification= "";
        String dateOfBirth= "";
        String maritalStatus= "";
        String userName= "";
        String password= "";
        String recoveryQuestion= "";
        String answer= "";
        String staffCategoryID= "";
        String profilePicture= "";
        
        if (SSNstaffID != null) 
        {
        String querySelect1 = "select * from tbl_staff_details where staffID='"+SSNstaffID+"'";
        ResultSet rs1 = obj.select(querySelect1);
        while (rs1.next()) 
        {
            firstName=rs1.getString("firstName");            
            lastName =rs1.getString("lastName");
            address=rs1.getString("address");
            postbox=rs1.getString("postbox");
            place=rs1.getString("place");
            
            pincode=rs1.getString("pincode");
            district=rs1.getString("district");
            state=rs1.getString("state");
            gender=rs1.getString("gender");
            contactNumber=rs1.getString("contactNumber");
            
            mobileNumber=rs1.getString("mobileNumber");
            email=rs1.getString("email");
            qualification=rs1.getString("qualification");
            dateOfBirth=rs1.getString("dateOfBirth");
            maritalStatus=rs1.getString("maritalStatus");
            
            userName=rs1.getString("userName");
            password=rs1.getString("password");
            recoveryQuestion=rs1.getString("recoveryQuestion");
            answer=rs1.getString("answer");
            staffCategoryID=rs1.getString("staffCategoryID");
            profilePicture=rs1.getString("profilePicture");
            }
        }
        
        if (request.getParameter("buttonSubmit")!=null)
        {
            firstName =request.getParameter("firstName");
            lastName =request.getParameter("lastName");
            address=request.getParameter("address");
            postbox=request.getParameter("postbox");
            place=request.getParameter("place");
            
            pincode=request.getParameter("pincode");
            district=request.getParameter("district");
            state=request.getParameter("state");
            gender=request.getParameter("gender");
            contactNumber=request.getParameter("contactNumber");
            
            mobileNumber=request.getParameter("mobileNumber");
            email=request.getParameter("email");
            qualification=request.getParameter("qualification");
            dateOfBirth=request.getParameter("dateOfBirth");
            maritalStatus=request.getParameter("maritalStatus");
            
            userName=request.getParameter("userName");
            password=request.getParameter("password");
            recoveryQuestion=request.getParameter("recoveryQuestion");
            answer=request.getParameter("answer");
            staffCategoryID=request.getParameter("staffCategoryID");
            profilePicture=request.getParameter("profilePicture");
                


            String values2="firstName='"+firstName
            + "',lastName='"+ lastName
            + "',address='" +address
            + "',postbox='" +postbox
            + "',place='" +place
            + "',pincode='" +pincode
            + "',district='" +district
            + "',state='" +state
            + "',gender='" +gender
            + "',contactNumber='" +contactNumber
            + "',mobileNumber='" +mobileNumber
            + "',email='" +email
            + "',qualification='" +qualification
            + "',dateOfBirth='" +dateOfBirth
            + "',maritalStatus='" +maritalStatus
            + "',userName='" +userName
            + "',password='" +password
            + "',recoveryQuestion='" +recoveryQuestion
            + "',answer='" +answer
            + "',staffCategoryID='" +staffCategoryID
            + "',profilePicture='" +profilePicture;

            String queryUpadate = "update tbl_staff_details set "+values2+ "' where staffID=" + SSNstaffID;  //EDIT
            //out.print(queryUpadate);
            obj.executeCommand(queryUpadate);        
        }
        
      out.write("\n");
      out.write("        \n");
      out.write("    \n");
      out.write("    <form name=\"Form1\" method=\"POST\"> \n");
      out.write("        <div align=\"center\" >        \n");
      out.write("            <table class=\"Content_Table\" >\n");
      out.write("                \n");
      out.write("                <caption>\n");
      out.write("                    Profile\n");
      out.write("                </caption> \n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" style=\"text-align:center; vertical-align:middle;\"> \n");
      out.write("                        <img src='ProfilePictures\\");
      out.print(profilePicture);
      out.write("' width=\"100\" height=\"100\" />\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("               <tr><td>FIRST NAME</td>            \n");
      out.write("                   <td> <input type=\"text\" name=\"firstName\" requird=\"required\" value=\"");
      out.print(firstName);
      out.write("\">  </td></tr>\n");
      out.write("\n");
      out.write("               <tr><td>LAST NAME</td>\n");
      out.write("                   <td><input type=\"text\" name=\"lastName\" requird=\"\" value=\"");
      out.print(lastName);
      out.write("\">  </td></tr>  \n");
      out.write("               \n");
      out.write("               <tr><td>ADDRESS</td><td>\n");
      out.write("                         <textarea name=\"address\" requird=\"\" >");
      out.print(address);
      out.write("</textarea>  </td></tr> \n");
      out.write("                         \n");
      out.write("               <tr><td>POST OFFICE</td>\n");
      out.write("                   <td><input type=\"text\" name=\"postbox\" requird=\"\" value=\"");
      out.print(postbox);
      out.write("\">  \n");
      out.write("\n");
      out.write("                   </td></tr> \n");
      out.write("\n");
      out.write("               <tr><td>PLACE</td>\n");
      out.write("                   <td>\n");
      out.write("                       <input type=\"text\"name=\"place\" value=\"");
      out.print(place);
      out.write("\">\n");
      out.write("                           </td></tr>\n");
      out.write("\n");
      out.write("               <tr><td>PIN CODE</td>\n");
      out.write("                   <td>\n");
      out.write("                          <input type=\"number\" name=\"pincode\" requird=\"\" value=\"");
      out.print(pincode);
      out.write("\">  </td></tr>   \n");
      out.write("\n");
      out.write("               \n");
      out.write("               <tr><td>STATE</td>\n");
      out.write("                   <td>\n");
      out.write("                          <select name=\"state\" >\n");
      out.write("                             <option>Select</option>\n");
      out.write("                               ");

                               String selectQuery2="select * from tbl_state";
                               ResultSet rs2=obj.select(selectQuery2);
                               while (rs2.next())
                               {                                                                                                                        
                               
      out.write("\n");
      out.write("                               <option value=\"");
      out.print(rs2.getString("stateID"));
      out.write('"');
      out.write(' ');
if(state.equals(rs2.getString("stateID"))){
      out.write(" selected=\"select\"");
}
      out.write(" >\n");
      out.write("                                ");
      out.print(rs2.getString("stateName"));
      out.write("\n");
      out.write("                               </option> \n");
      out.write("                            ");
}
      out.write("      \n");
      out.write("                           </select> \n");
      out.write("                   </td></tr>\n");
      out.write("               \n");
      out.write("               <tr><td>DIVISION</td>\n");
      out.write("                   <td>\n");
      out.write("                          <select name=\"district\" >\n");
      out.write("                             <option>Select</option>\n");
      out.write("                               ");

                               String selectQuery1="select * from tbl_district";
                               ResultSet rs=obj.select(selectQuery1);
                               while (rs.next())
                               {                                                                                                                        
                               
      out.write("\n");
      out.write("                               <option value=\"");
      out.print(rs.getString("districtID"));
      out.write('"');
      out.write(' ');
if(district.equals(rs.getString("districtID"))){
      out.write(" selected=\"select\"");
}
      out.write(" >\n");
      out.write("                                ");
      out.print(rs.getString("districtName"));
      out.write("\n");
      out.write("                               </option> \n");
      out.write("                               \n");
      out.write("                               ");
}
      out.write("\n");
      out.write("                           </select> \n");
      out.write("                   </td></tr>\n");
      out.write("\n");
      out.write(" \n");
      out.write("              \n");
      out.write("               <tr>               \n");
      out.write("                   <td>GENDER</td>\n");
      out.write("                   <td>            \n");
      out.write("                       <input type=\"text\" name=\"gender\" required=\"\" value=\"");
      out.print(gender);
      out.write("\">\n");
      out.write("                   </td></tr>\n");
      out.write("\n");
      out.write("               <tr><td>CONTACT NUMBER</td>\n");
      out.write("                   <td>\n");
      out.write("                          <input type=\"number\" name=\"contactNumber\" requird=\"\" value=\"");
      out.print(contactNumber);
      out.write("\">  </td></tr>  \n");
      out.write("               <tr><td>MOBILE NUMBER</td>\n");
      out.write("                   <td>\n");
      out.write("                          <input type=\"number\" name=\"mobileNumber\" requird=\"\" value=\"");
      out.print(mobileNumber);
      out.write("\">  </td></tr>  \n");
      out.write("\n");
      out.write("               <tr><td>EMAIL ID</td>\n");
      out.write("                   <td>\n");
      out.write("                          <input type=\"email\" name=\"email\"  requird=\"\" value=\"");
      out.print(email);
      out.write("\">  </td></tr> \n");
      out.write("\n");
      out.write("               <tr><td>QUALIFICATION</td>\n");
      out.write("                   <td>\n");
      out.write("                   <input type=\"text\" name=\"qualification\" value=\"");
      out.print(qualification);
      out.write("\">  </td></tr>   \n");
      out.write("                \n");
      out.write("               <tr><td>DATE OF BIRTH</td>\n");
      out.write("                   <td>\n");
      out.write("                       <input type=\"date\" name=\"dateOfBirth\" requird=\"\" value=\"");
      out.print(dateOfBirth);
      out.write("\" style=\"padding-top: 0px;\">\n");
      out.write("                   </td></tr>\n");
      out.write("\n");
      out.write("               <tr>\n");
      out.write("                   <td>MARITAL</td>\n");
      out.write("                   <td>\n");
      out.write("                       <input type=\"text\" name=\"maritalStatus\" value=\"");
      out.print(maritalStatus);
      out.write("\"> </td></tr>\n");
      out.write("           \n");
      out.write("               <tr><td>USERNAME</td>\n");
      out.write("                   <td>\n");
      out.write("                        <input type=\"text\" name=\"userName\" requird=\"\" value=\"");
      out.print(userName);
      out.write("\">  </td></tr> \n");
      out.write("\n");
      out.write("               <tr><td>PASSWORD</td>\n");
      out.write("                   <td>\n");
      out.write("                        <input type=\"password\" name=\"password\" requird=\"\" value=\"");
      out.print(password);
      out.write("\">  </td></tr> \n");
      out.write("                              \n");
      out.write("               <tr><td>RECOVERY QUESTION</td>\n");
      out.write("                   <td>\n");
      out.write("                        <select name=\"recoveryQuestion\" >\n");
      out.write("                            <option>Select</option>\n");
      out.write("                            <option>Favourite Color</option>\n");
      out.write("                            <option>Favourite Place</option>\n");
      out.write("                            <option>Nick Name</option>\n");
      out.write("                        </select>\n");
      out.write("                        </td></tr> \n");
      out.write("               \n");
      out.write("                <tr><td>ANSWER</td>\n");
      out.write("                   <td>\n");
      out.write("                        <input type=\"text\" name=\"answer\" requird=\"\" value=\"");
      out.print(answer);
      out.write("\" >  </td></tr>\n");
      out.write("                \n");
      out.write("                <tr><td>CATEGORY</td>\n");
      out.write("                    <td>\n");
      out.write("                       <select name=\"staffCategoryID\" >                      \n");
      out.write("                                ");
  
                                    String querySelect = "select * from tbl_staff_category"; //EDIT
                                    ResultSet rs3 = obj.select(querySelect);
                                    
                                    while (rs3.next()) 
                                    {
                                
      out.write("\n");
      out.write("                                        <option value=\"");
      out.print(rs3.getString("staffCategoryID"));
      out.write('"');
      out.write('>');
      out.print(rs3.getString("staffCategoryName"));
      out.write(" </option>\n");
      out.write("                                ");

                                    }
                                
      out.write("\n");
      out.write("                                \n");
      out.write("                            </select>\n");
      out.write("                    </td></tr>\n");
      out.write("                \n");
      out.write("               <tr><td>PHOTO</td>\n");
      out.write("                   <td>\n");
      out.write("                       <input type=\"file\" name=\"profilePicture\" requird=\"true\" value=\"ProfilePictures\\");
      out.print(profilePicture);
      out.write("\" >  </td></tr>  \n");
      out.write("\n");
      out.write("               <tr><td colspan=\"2\" align=\"center\">\n");
      out.write("                        <center>   <input  type=\"submit\" value=\"Submit\" name=\"buttonSubmit\" >\n");
      out.write("                        <input type=\"reset\" value=\"Reset\" name=\"buttonReset\" ></center>\n");
      out.write("                        </td></tr>\n");
      out.write("\n");
      out.write("           </table>\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- FOOTER  STARTS-->\n");
      out.write("        </td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("        <td>\n");
      out.write("            <!-- Small Slide  STARTS-->\n");
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
      out.write("\n");
      out.write("            <!-- Small Slide  ENDS-->\n");
      out.write("        </td>\n");
      out.write("</tr>\n");
      out.write("<tr>        \n");
      out.write("         <td>\n");
      out.write("            <!-- Small Slide  STARTS-->\n");
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
      out.write("\n");
      out.write("            <!-- Small Slide  ENDS-->\n");
      out.write("        </td>\n");
      out.write("</tr>\n");
      out.write("<tr>        \n");
      out.write("         <td>\n");
      out.write("            <!-- Small Slide  STARTS-->\n");
      out.write("             <img src=\"..\\TemplateStyleFiles\\ContactUs.jpg\"   width=\"400px\" height=\"435px\">\n");
      out.write("            <!-- Small Slide  ENDS-->\n");
      out.write("        </td>\n");
      out.write("    </tr>\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("</div>    \n");
      out.write("\n");
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
      out.write("\n");
      out.write("<!-- FOOTER  ENDS-->\n");
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
