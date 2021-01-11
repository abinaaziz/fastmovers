<!-- HEADER  STARTS-->
<%@include file="AdminHomeHeader.jsp" %>

<div class="div_login">


<table class="Round_corner_Form_Base">
    <tr>
        <td style="vertical-align: middle;">     
<!-- HEADER  ENDS-->   

        
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.DBConnection" id="obj" ></jsp:useBean>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            .txt
            {
                width: 100px;
                height: 20px;
            }
        </style>
    </head>
    <body>
    <% //This JSP Block only invokes when value reached from URL that is: When EDIT or DELETE or SUBMEI Button Click 
        
    String staffID1="";
   // String reject1="";   
    staffID1=request.getParameter("URLVal1"); 
    //reject1=request.getParameter("URLVal2"); 
    
    if(request.getParameter("approve")!=null)  //Submit Button Code -Checking the url passed argument named "edit" is null on not.
    {
         
        String queryUpadate="update tbl_staff_details set status=0 where staffID="+staffID1;
        out.print(queryUpadate);
        obj.executeCommand(queryUpadate);
        response.sendRedirect("StaffDesc.jsp");
    }      
        
    if(request.getParameter("reject")!=null)  //Delete Button Code
    {
        String queryUpadate="update tbl_staff_details set status=4 where staffID="+staffID1;
        obj.executeCommand(queryUpadate);
        response.sendRedirect("StaffDesc.jsp");
    }
  
    %>
     <div align="center" style="padding-top: 10px;" >         
       <h2>FAST MOVERS  OFFICE STAFFS</h2> 
       
                                <%
                                    String staffID = "";
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
                                    String profilePicture= "";
                                    String status= "";
                                    String staffCategoryName= "";
  
                                    
                                    String querySelect1 = "SELECT "
                                    + "a.staffID, "        
                                    + "a.firstName, "
                                    + "a.lastName, "
                                    + "a.address, "
                                    + "a.postbox, "
                                    + "a.place, "

                                    + "a.pincode, "
                                    + "a.district, "
                                    + "a.state, "
                                    + "a.gender, "
                                    + "a.contactNumber, "   

                                    + "a.mobileNumber, "
                                    + "a.email, "
                                    + "a.qualification, "
                                    + "a.profilePicture, "

                                    + "b.staffCategoryName, "
                                    + "d.stateName, "
                                    + "e.districtName "
                                    + " FROM "
                                    + "tbl_staff_details a,"
                                    + "tbl_staff_category b,"
                                    + "tbl_state d,"
                                    + "tbl_district e"        
                                    + " WHERE "
                                    + " a.staffCategoryID=b.staffCategoryID"
                                    + " AND "
                                    + " a.state=d.stateID"
                                    + " AND "
                                    + " a.district=e.districtID"
                                    + " AND "
                                    + " a.status=1"        
                                    + " ORDER BY "
                                    + "a.district";
                                    
                                    System.out.print(querySelect1);
                            
                                   
                                    ResultSet rs=obj.select(querySelect1);
                                    while(rs.next())
                                    {
                                        staffID  =rs.getString("staffID");
                                        firstName  =rs.getString("firstName");
                                        lastName  =rs.getString("lastName");
                                        address  =rs.getString("address");
                                        postbox =rs.getString("postbox");
                                        place =rs.getString("place");
                                        pincode =rs.getString("pincode");
                                        district =rs.getString("districtName");
                                        state =rs.getString("state");
                                        gender =rs.getString("gender");
                                        contactNumber =rs.getString("contactNumber");
                                        mobileNumber =rs.getString("mobileNumber");
                                        email =rs.getString("email");
                                        qualification =rs.getString("qualification");
//                                        dateOfBirth =rs.getString("dateOfBirth");
//                                        maritalStatus =rs.getString("maritalStatus");
//                                        userName =rs.getString("userName");
//                                        password =rs.getString("password");
//                                        recoveryQuestion =rs.getString("recoveryQuestion");
//                                        answer =rs.getString("answer");
                                        profilePicture =rs.getString("profilePicture");
                                        //status =rs.getString("status");
                                        
                                        staffCategoryName=rs.getString("staffCategoryName");

                                %>
                                
                                

                                        <!-- Block 2 (team member) -->
                                        <div class="block-2-container section-container about-block-2-container">
                                                <div class="container">
                                                    <div class="row">
                                                        <div class="col-sm-4 block-2-box block-2-left block-2-media wow fadeInLeft">
                                                                <div class="block-2-img-container">
                                                                        <img src="..\Staff\ProfilePictures\<%=profilePicture%>" alt="" data-at2x="..\Staff\ProfilePictures\<%=profilePicture%>" width="375px" height="400px">
                                                                        <div class="img-container-line line-1"></div>
                                                                        <div class="img-container-line line-2"></div>
                                                                        <div class="img-container-line line-3"></div>
                                                                </div>
                                                        </div>
                                                        <div class="col-sm-8 block-2-box block-2-right wow fadeInUp">
                                                                <h3><%=firstName%>  <%=lastName%> (<%=qualification%>)/ <span>Our <%=staffCategoryName%></span></h3>
                                                                <p>
                                                                    <i class="fa fa-home"></i> <%=address%></br>
                                                                    <%=postbox%>,  <%=place%></br>
                                                                     <%=state%>, <%=district%>(Division),Pin : <%=pincode%></br>
                                                                </p>
                                                                
                                                                <h3>Contact</h3>
                                                                <div class="contact_div">
                                                                    <a href="#"><i class="fa fa-phone"></i>  <%=contactNumber%></a><br/>   
                                                                    <a href="#"><i class="fa fa-mobile-phone"></i>  <%=mobileNumber%></a><br/>
                                                                    <a href="#"><i class="fa fa-envelope"></i>  <%=email%></a><br/>
                                                                </div>
                                                        </div>
                                                    </div>
                                                </div>
                                        </div>
        
                                
                                
                                
                                <%
                                   }
                                %>
                             
                              
        </table>
        </div>
    </form>
    </body>
</html>

<!-- FOOTER  STARTS-->
       <!-- FOOTER  STARTS-->
        </td>
        
    </tr>
</table>

</div>    

<%@include file="AdminHomeFooter.jsp" %>
<!-- FOOTER  ENDS-->