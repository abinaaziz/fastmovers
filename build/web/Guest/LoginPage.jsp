
<!-- HEADER  STARTS-->
<%@include file="GuestHomeHeader.jsp" %>


    <div class="hero-inner">
        <div class="inner">
            <h1><span class="border border-top border-bottom"></span></h1>
            
        </div>

        <a class="more-arrow" href="#content"></i><span></span></a>

    </div>
      
        <%
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
        
        %>
<form>
<table class="Round_corner_Form_Base" border="0">
    <tr>
        <td style="vertical-align: middle;">  
   
            <table class="Content_Table" >
                <tr>
                     <td colspan="2"style="font-family:verdana;font-size: 30px;color:black" >
                        <div class="Table_Caption" align="center">
                            LOGIN
                        </div>
                    </td>
                </tr>    
                
                <tr>
                    <td style="width:250px;font-family:verdana;font-size: 20px;color:black">User Name</td>
                    <td>
                        <div class="input-group margin-bottom-sm" >
                            <span class="input-group-addon" style="color:#000; text-shadow: 2px 2px 5px white;" style="background-color: #31b0d5;" >
                                <i class="fa fa-user fa-fw" aria-hidden="true" ></i>
                            </span>
                            <input required="" type="text" name="T1" value="" placeholder="User Name" >
                        </div>       
                    </td>
                </tr> 
               <tr>
                    <td style="width:250px;font-family:verdana;font-size: 20px;color:black">Password</td>
                    <td>
                        <div class="input-group margin-bottom-sm" >
                            <span class="input-group-addon" style="color:#000; text-shadow: 2px 2px 5px white;" style="background-color: #31b0d5;" >
                                <i class="fa fa-lock fa-fw" aria-hidden="true" ></i>
                            </span>
                            <input type="password" placeholder="Password" name="PF1" value=""  required="" >
                        </div>       
                    </td>
                </tr> 
                
                
                
                <tr>
                    <td colspan="2" align="center" style="padding-top: 30px;color:black">
                        <input type="submit" name="buttonSubmit" value="Login">
                    </td>
                </tr>
            </table>                      
        </form>
    </body>
</html>
    
</div>
        
        </td>

        <td >
           <!-- Small Slide  STARTS-->
            <img src="..\TemplateStyleFiles\Login.jpg"   width="400px" height="300px">
           <!-- Small Slide  ENDS-->
        </td>
    </tr>
    
    
</table>

            
           <%@include file="GuestHomeFooter.jsp" %>
<!-- FOOTER  ENDS-->
    