<!-- HEADER  STARTS-->
<%@include file="AdminHomeHeader.jsp" %>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.DBConnection" id="obj" ></jsp:useBean>
<!DOCTYPE html>
<div class="div_login">
<div class="div_Heading" >
    <p class="align_center_p"></p>
</div>
<table class="Round_corner_Form_Base">
    <tr>
        <td style="vertical-align: middle;">     
        <!-- HEADER  ENDS-->  
        <html>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        </head>
        <body>
        <% //This JSP Block only invokes when value reached from URL that is: When EDIT or DELETE or SUBMEI Button Click 

        String staffID1="";
       // String reject1="";   
        staffID1=request.getParameter("URLVal1"); 
        //reject1=request.getParameter("URLVal2"); 

        if(request.getParameter("approve")!=null)  //Submit Button Code -Checking the url passed argument named "edit" is null on not.
        {

            String queryUpadate="update tbl_staff_details set status=1 where staffID="+staffID1;
            out.print(queryUpadate);
            obj.executeCommand(queryUpadate);
            response.sendRedirect("StaffApproval.jsp");
        }      

        if(request.getParameter("reject")!=null)  //Delete Button Code
        {
            String queryUpadate="update tbl_staff_details set status=2 where staffID="+staffID1;
            obj.executeCommand(queryUpadate);
            response.sendRedirect("StaffApproval.jsp");
        }

        %>
        <div align="center" style="padding-top: 10px;" >         
            <table >
                <caption>
                    <h2> Approve Staff</h2>
                </caption>
                <tr>
                    <th>Staff Image</th>
                    <th>Staff Address</th>
                </tr>
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

                String querySelect="select "
                + "a.*,"
                + "b.*,"
                + "c.*"
                + " from "
                + "tbl_staff_details a,"
                + "tbl_state b,"
                + "tbl_district c"
                + " where "
                + "a.state=b.stateID"
                + " AND "
                + "a.district=c.districtID"
                + " AND "
                + "c.stateID=b.stateID"
                + " AND "
                + "a.status=0";
                System.out.print(querySelect);
                ResultSet rs=obj.select(querySelect);
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
                state =rs.getString("stateName");
                gender =rs.getString("gender");
                contactNumber =rs.getString("contactNumber");
                mobileNumber =rs.getString("mobileNumber");
                email =rs.getString("email");
                qualification =rs.getString("qualification");
                dateOfBirth =rs.getString("dateOfBirth");
                maritalStatus =rs.getString("maritalStatus");
                userName =rs.getString("userName");
                password =rs.getString("password");
                recoveryQuestion =rs.getString("recoveryQuestion");
                answer =rs.getString("answer");
                profilePicture =rs.getString("profilePicture");
                status =rs.getString("status");

                %>
                                
                <tr>
                    <td>
                        <table >
                            <tr>
                                <td colspan="2" style="align-content: center; width: 250px;">
                                     <img src='..\Staff\ProfilePictures\<%=profilePicture%>' width="300" height="300" />
                                 </td>
                            </tr>
                            <tr>
                                <td style="align-content: center">
                                    <a href="StaffApproval.jsp?approve=1&URLVal1=<% out.print(staffID); %>&URLVal2=<% out.print(status);%>"><img src="../TemplateStyleFiles/AcceptButton.png" height="50px" width="125px"></a>
                                </td>

                               <td style="align-content: center">
                                   <a href="StaffApproval.jsp?reject=1&URLVal1=<% out.print(staffID); %>"><img src="../TemplateStyleFiles/RejectButton.png" height="50px" width="125px"></a>
                               </td>
                            </tr>
                        </table> 
                    </td> 

                    <td style="align-content: center; width: 750px;">
                        <table style="width: 700px;" border="2">
                            <tr> 
                                <td> Staff ID: </td>
                                <td><% out.print(staffID); %></td>
                            </tr>  
                            <tr> 
                                 <td>Name:</td>
                                <td><% out.print(firstName); %> <% out.print(lastName); %></td>
                            </tr>                                            
                            <tr> 
                                <td>Address:</td>
                                <td>
                                  <% out.print(address); %><br>
                                  <% out.print(postbox); %>, <% out.print(place); %> ,PIN: <% out.print(pincode); %>                                                 
                                </td>
                            </tr>
                            <tr> 
                                <td>State & District</td>
                                <td><% out.print(state); %>, <% out.print(district); %></td>
                            </tr>
                            <tr> 
                                <td>Contact Number:  </td>
                                 <td><% out.print(contactNumber); %></td>
                            </tr>
                            <tr> 
                                <td>Mobile Number:</td>
                                <td><% out.print(mobileNumber); %></td>
                            </tr>
                            <tr> 
                                <td>E-Mail:</td>
                                <td><% out.print(email); %></td>
                            </tr>   
                            <tr> 
                                <td>Sex: </td>
                                <td><% out.print(gender); %></td>
                            </tr>
                             <tr> 
                                 <td>Qualification: </td>
                                 <td><% out.print(qualification); %></td>
                            </tr>
                            <tr> 
                                <td>Date Of Birth:</td>
                                 <td><% out.print(dateOfBirth); %></td>
                            </tr>
                            <tr> 
                                <td>Marital Status:</td>
                                 <td> <% out.print(maritalStatus); %></td>                      
                            </tr>    
                        </table>
                    </td>        
                </tr>    
            <%
            }
            %>        
            </table>
            </div>
            </form>
            </body>
            </html>
            <!-- FOOTER  STARTS-->
        </td>
    </tr>
</table>
</div>
            <%@include file="AdminHomeFooter.jsp" %>
<!-- FOOTER  ENDS-->