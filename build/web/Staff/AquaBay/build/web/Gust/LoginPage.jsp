
<!-- HEADER  STARTS-->
<%@include file="GuestHomeHeader.jsp" %>

<table class="Round_corner_Form_Base" >
    <tr>
        <td style="vertical-align: middle;">  
        <html>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN PAGE</title>
        </head>    
        <body class="backgroungPicture4">        
        <div class="">  
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
            System.out.print(sel1);
            ResultSet rs1=obj.select(sel1);
            
            //ADMIN
            String sel2="select * from tbl_admin_login where userName='"+userName+"' and password='"+password+"'";            
            ResultSet rs2=obj.select(sel2);
            System.out.print(sel2);
           
            if (rs2.next())
            {
                session.setAttribute("id",rs2.getString("adminID"));
                response.sendRedirect("../Admin/AdminHomePage.jsp");                
            }
           
            //STAFF
            else if (rs1.next())
            {          
                int staffStatus=10;   
                staffStatus=Integer.parseInt(rs1.getString("status"));   
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
            }
            //USER  
            if (rs.next())
            {
                System.out.println(sel);
                session.setAttribute("userID",rs.getString("userID"));
                session.setAttribute("welcomeName",rs.getString("firstName")+" "+rs.getString("lastName"));
                 System.out.println(rs.getString("firstName"));
                response.sendRedirect("../User/UserHomePage.jsp");             
               
            } 
            else
            {
                out.print("<script> alert('Login Failed')</script>");
            }
        }   
        
        %>
            <div class="">  
            <form>
            <table class="Content_Table" >
                <tr>
                     <td colspan="2" >
                        <div class="Table_Caption" align="center">
                            LOGIN
                        </div>
                    </td>
                </tr>    
                
                <tr>
                    <td style="width:200px;">Buyer Name</td>
                    <td>
                        <div class="input-group margin-bottom-sm" >
                            <span class="input-group-addon" style="color:#000; text-shadow: 2px 2px 5px white;" style="background-color: #31b0d5;" >
                                <i class="fa fa-user fa-fw" aria-hidden="true" ></i>
                            </span>
                            <input  type="text" name="T1" value="" placeholder="Buyer Name" >
                        </div>       
                    </td>
                </tr> 
               <tr>
                    <td>Password</td>
                    <td>
                        <div class="input-group margin-bottom-sm" >
                            <span class="input-group-addon" style="color:#000; text-shadow: 2px 2px 5px white;" style="background-color: #31b0d5;" >
                                <i class="fa fa-lock fa-fw" aria-hidden="true" ></i>
                            </span>
                            <input type="password" placeholder="Password" name="PF1" value="">
                        </div>       
                    </td>
                </tr> 
                
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="buttonSubmit" value="Login">
                    </td>
                </tr>
            </table>                      
        </form>
    </body>
</html>
    
</div>
        
        </td>

      
    </tr>
    
    
</table>

            
           <%@include file="GuestHomeFooter.jsp" %>
<!-- FOOTER  ENDS-->
    