<%@include file="StaffHomeHeader.jsp" %>
<div class="div_login">
    <div class="div_Heading" >
        <p class="align_center_p"> </p>
    </div>      
    <table class="Round_corner_Form_Base">
        <tr>
            <td rowspan="2">  
                <%@page contentType="text/html" pageEncoding="UTF-8"%>
                <!DOCTYPE html>
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title> </title>
            </head>
            <%
        String URLpondID=request.getParameter("pondID");
        String pondAria="";
        String farmBedAria="";
        String startDate="";
        String finishDate=""; 
        
        String eid=request.getParameter("eid");   
        String did=request.getParameter("did");    
        String hid="";
         
        String verifiedOtherRequirementsID = "";
        
        
        String otherRequirementsName = "";        
        String quantityOfOtherRequirements = "";
        String discription = "";     
        String status = "";
            
        String GetURLVal1 = request.getParameter("URLVal1");
        
        if(request.getParameter("did")!=null)  
        {           
            String queryDelete="delete from tbl_verified_otherrequiements_details where verifiedOtherRequirementsID="+did;
            boolean result=obj.executeCommand(queryDelete);
            if(result)
            {
                out.print("<script>alert('Deleted')</script>");
            }
            else
            {
                out.print("<script>alert('Not Deleted')</script>");
            }
            response.sendRedirect("OtherRequirementsVerification.jsp?pondID="+URLpondID);
        }
        
        if (eid != null)
        {   
            hid=request.getParameter("hid");
            String querySelect="select * from tbl_verified_otherRequiements_details where verifiedOtherRequirementsID="+eid;
            System.out.print("EDIT: eid="+eid);
            ResultSet rs=obj.select(querySelect);                
            if(rs.next())
            {
                
                otherRequirementsName =rs.getString("otherRequirementsName");
                quantityOfOtherRequirements =rs.getString("quantityOfOtherRequirements");
                discription =rs.getString("discription");
            } 
        }
        if (request.getParameter("B_Submit")!=null)
        {   
            System.out.print("Submit Button clicked in file LabTest Details"); 
           
            otherRequirementsName =request.getParameter("otherRequirementsName");
            quantityOfOtherRequirements =request.getParameter("quantityOfOtherRequirements");
            discription =request.getParameter("discription");
            
            String values1="'"+URLpondID 
            +"','"+otherRequirementsName              
            +"','"+quantityOfOtherRequirements
            +"','"+discription               
            +"'";
        
            if (request.getParameter("eid") != null)
            {
                
                String values2="pondID='" +URLpondID
                + "',otherRequirementsName='" +otherRequirementsName
                + "',quantityOfOtherRequirements='" +quantityOfOtherRequirements
                + "',discription='" +discription        
                +"'" ;
                
                String queryUpadate = "update tbl_verified_otherrequiements_details set "+values2+ " where verifiedOtherRequirementsID=" + eid;  //EDIT
                System.out.print(queryUpadate);
                obj.executeCommand(queryUpadate);
            } 
            else  
            {                    
                String columns= "pondID, otherRequirementsName, quantityOfOtherRequirements,discription";
                String queryInsert="insert into tbl_verified_otherrequiements_details("+columns+") values ("+values1+")";
                System.out.print(queryInsert);
                obj.executeCommand(queryInsert); 
            }
            response.sendRedirect("VerifiedFinalForm.jsp?pondID="+URLpondID);
        }   
        %>
        
            <body>     
                <form name="Form1" method="POST"> 
                    <div align="center" style="padding-top:  50px; font-family: sans-serif; font-size: larger; "  >         


                        <table border="1" class="Content_Table" style=" border-collapse: collapse; width: 400px;  overflow: scroll;">
                            
                            <%
                                String querySelect = "SELECT "
                                + "a.*,"
                                + "b.*,"
                                + "c.*,"
                                + "d.*,"
                                + "e.*"
                                + " FROM "
                                + "tbl_pond_register a,"
                                + "tbl_pondcategory b,"
                                + "tbl_state c,"
                                + "tbl_district d,"
                                + "tbl_user_details e"
                                + " WHERE "
                                + "a.pondCategoryID =b.pondCategoryID"
                                + " AND "
                                + "a.StateID=c.stateID"
                                + " AND "
                                + "a.DistrictID=d.districtID"
                                + " AND "
                                + "a.userID=e.userID"
                                + " AND "
                                + "a.status=0";
                                ResultSet rs = obj.select(querySelect);
                                System.out.println(" QquerySelect : " + querySelect);
                                
                                
                                while (rs.next()) 
                                { 
                                pondAria=rs.getString("pondAria");
                                farmBedAria=rs.getString("farmBedAria");
                                startDate=rs.getString("startDate");
                                finishDate=rs.getString("finishDate");
                                
                            %>

                            <tr >
                                <td>  
                                    
                                    <table border="1" style=" width: 250px;"> 
                                        <tr>                    
                                            <td style="background-color: #34495e">
                                                <font color="white">Pond ID</font>
                                            </td>
                                            <td style="background-color: #34495e">
                                                <font color="white"><%=rs.getString("pondID")%></font>
                                            </td>
                                        </tr>  

                                        <tr> 
                                             <td  align="center" colspan="2">
                                                <center><img src='..\User\PondImages\<%=rs.getString("pondImage")%>' width="250" height="250" />
                                            </td>
                                        </tr>
                                        <tr>                    
                                            <td colspan="2" style="background-color: #34495e">
                                                <font color="white">Pond Details</font>
                                            </td>
                                        </tr> 
                                        <tr> 
                                            <td>Pond Type  </td>
                                            <td><%=rs.getString("pondCategoryName")%></td>
                                        </tr>
                                        <tr> 
                                            <td>Pond Aria   </td>
                                            <td><%=rs.getString("pondAria")%></td>
                                        </tr>
                                        <tr> 
                                            <td>Farm Bed Aria </td>
                                            <td><%=rs.getString("farmBedAria")%></td>
                                        </tr>

                                        <tr> 
                                            <td>Pond Place   </td>
                                            <td><%=rs.getString("pondPlace")%></td>
                                        </tr>
                                        <tr> 
                                            <td>Start Date  </td>
                                            <td><%=rs.getString("startDate")%></td>
                                        </tr>
                                        <tr> 
                                            <td>Finish Date </td>
                                            <td><%=rs.getString("finishDate")%></td>
                                        </tr>
                                        <tr> 
                                            <td>Registered Date </td> 
                                            <td><%=rs.getString("currentDate")%> </td>
                                        </tr>

                                        <tr>                    
                                            <td colspan="2" style="background-color: #34495e">
                                                <font color="white">Owner Details</font>
                                            </td>
                                        </tr> 
                                        <tr> 
                                            <td style="text-align:center; vertical-align:middle;"> 
                                                <img src='..\User\ProfilePictures\<%=rs.getString("profilePicture")%>' width="100" height="100" />
                                            </td>
                                            <td>  
                                                <table> 
                                                    <tr>                                                                   
                                                        <td><%=rs.getString("firstName")%> <%=rs.getString("lastName")%></td>
                                                    </tr>
                                                    <tr>                                                                    
                                                        <td>Ph: <%=rs.getString("contactNumber")%></td>
                                                    </tr>
                                                     <tr>                                                                    
                                                        <td>Mob:<%=rs.getString("mobileNumber")%> </td>
                                                    </tr>
                                                    <tr>                                                                    
                                                        <td>Email: <%=rs.getString("email")%></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr> 
                                    </table>
                                </td>  
                                <%
                                }
                                %>  
                                <td style="vertical-align: top;">                                    
                                    <table class="Content_Table">
                                        <caption>
                                            <h2>Assign OtherRequirements</h2>
                                        </caption>  

                                        <tr>
                                            <td>Other Requirements Name</td>
                                            <td>
                                                <input type="text" name="otherRequirementsName" required="required" value="<%=otherRequirementsName%>" > 
                                            </td>
                                        </tr> 
                                        <tr>
                                            <td>count Of OtherRequirements</td>
                                            <td>
                                                <input type="text" name="quantityOfOtherRequirements" required="required" value="<%=quantityOfOtherRequirements%>" > 
                                            </td>
                                        </tr> 
                                        <tr>
                                            <td>Mechanism Details</td>
                                            <td>
                                                <textarea name="discription" requird="" value="<%=discription%>"><%=discription%></textarea> 
                                            </td>
                                        </tr>
                                          <tr>
                                               <td> 
                                                   <input type="reset" value="Reset" name="buttonReset" >
                                               </td>
                                               <td >
                                                       <input class="btn btn-primary" type="submit" value="Submit" name="B_Submit" >
                                               </td>
                                           </tr>

                                       </table>
                                </td>
                            <tr> 
                            <tr>
                                <table class="Content_Table" border="1">
                                <caption>
                                    <h2>Assigned OtherRequirementss</h2>
                                </caption>     
                                <tr>
                                    <th>ID</th>                                     
                                    <th>Test Kit</th>
                                    <th>Rate</th>
                                    <th>Total Rate</th>  
                                    <th>EDIT</th>
                                    <th>DELETE</th>
                                </tr>
                                <%
                                String querySelect3="select "
                                + "a.*"                                
                                + " from "
                                + "tbl_verified_otherrequiements_details a"                               
                                + " WHERE "
                                + " a.pondID ="+URLpondID       
                                ;

                                ResultSet rs3=obj.select(querySelect3);
                                int count=0;
                                while(rs3.next())
                                {
                                count++;    
                                %>                                
                                <tr>
                                    <td align="center">
                                    <%=count%>
                                    </td>  
                                    
                                    <td>
                                        <table>
                                            <tr>
                                                <td style="align-content: center; width:350px;">
                                                    ID:  <%=rs3.getString("verifiedOtherRequirementsID")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center">
                                                   OtherRequirements Name:  <%=rs3.getString("otherRequirementsName")%> 
                                                </td>    
                                            </tr>
                                            
                                            <tr>
                                                <td style="align-content: center">
                                                   quantityOfOtherRequirements <%=rs3.getString("quantityOfOtherRequirements")%>
                                                </td>    
                                            </tr>
                                             <tr>
                                                <td style="align-content: center">
                                                   discription <%=rs3.getString("discription")%>
                                                </td>    
                                            </tr>
                                        </table>   
                                    </td>
                                      
                                        
                                    <td  style="width: 80px; vertical-align: middle"> <center><a href="OtherRequirementsVerification.jsp?eid=<%=rs3.getString("a.verifiedOtherRequirementsID")%>&pondID=<%=URLpondID%>"><img src="../TemplateStyleFiles/EditIcon.png" height="30px" width="30px"></a></td>
                                    <td  style="width: 80px; vertical-align: middle"> <center><a href="OtherRequirementsVerification.jsp?did=<%=rs3.getString("a.verifiedOtherRequirementsID")%>&pondID=<%=URLpondID%>"><img src="../TemplateStyleFiles/DeleteIcon.png" height="30px" width="30px"></a></td>
                                </tr>
                                <%
                                }
                                %>
                            </table>    
                                
                            </tr>   
                        </table>


                           
                           
                            
                           
                           
                           
                           
                           
                           
                           
                           

                    </div>              
                </form>
            </body>
        </html>        
        </td>
        </tr>
    </table>
</div>    
<%@include file="StaffHomeFooter.jsp" %>
