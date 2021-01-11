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
         
        String verifiedFeedID = "";
        
        String feedID = "";
        String quantityOfFeed = "";
        String status = "";
            
        String GetURLVal1 = request.getParameter("URLVal1");
        
        if(request.getParameter("did")!=null)  
        {           
            String queryDelete="delete from tbl_verified_feed_details where verifiedFeedID="+did;
            boolean result=obj.executeCommand(queryDelete);
            if(result)
            {
                out.print("<script>alert('Deleted')</script>");
            }
            else
            {
                out.print("<script>alert('Not Deleted')</script>");
            }
            response.sendRedirect("FeedVerification.jsp?pondID="+URLpondID);
        }
        
        if (eid != null)
        {   
            hid=request.getParameter("hid");
            String querySelect="select * from tbl_verified_feed_details where verifiedFeedID="+eid;
            System.out.print("EDIT: eid="+eid);
            ResultSet rs=obj.select(querySelect);                
            if(rs.next())
            {
                feedID =rs.getString("feedID");
                quantityOfFeed =rs.getString("quantityOfFeed");
            } 
        }
        if (request.getParameter("B_Submit")!=null)
        {   
            System.out.print("Submit Button clicked in file LabTest Details"); 
            feedID =request.getParameter("feedID");
            quantityOfFeed =request.getParameter("quantityOfFeed");
            
            String values1="'"+URLpondID 
            +"','"+feedID
            +"','"+quantityOfFeed          
            +"'";
        
            if (request.getParameter("eid") != null)
            {
                
                String values2="pondID='" +URLpondID
                + "',feedID='" +feedID
                + "',quantityOfFeed='" +quantityOfFeed
                +"'" ;
                
                String queryUpadate = "update tbl_verified_feed_details set "+values2+ " where verifiedFeedID=" + eid;  //EDIT
                System.out.print(queryUpadate);
                obj.executeCommand(queryUpadate);
            } 
            else  
            {                    
                String columns= "pondID, feedID, quantityOfFeed";
                String queryInsert="insert into tbl_verified_feed_details("+columns+") values ("+values1+")";
                System.out.print(queryInsert);
                obj.executeCommand(queryInsert); 
            }
            response.sendRedirect("OtherRequirementsVerification.jsp?pondID="+URLpondID);
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
                                            <h2>Assign Feed</h2>
                                        </caption>  
                                          <tr><td>Select Feed Type</td>

                                              <td>
                                                   <select name="feedID" >    
                                                       <option value="Nil">-------------Select-------------</option>
                                                        <%
                                                        String querySelect2 = "select * from tbl_feed_details "; 
                                                        ResultSet rs2 = obj.select(querySelect2);
                                                        System.out.print("XXXXXXXXXX "+querySelect2);
                                                        while (rs2.next()) 
                                                        {                                                
                                                        %>
                                                       <option value="<%=rs2.getString("feedID")%>"     
                                                       <%if(feedID.equals(rs2.getString("feedID")))
                                                        {
                                                       %>
                                                           selected="selected"
                                                       <%}%> >

                                                       <%=rs2.getString("feedName")%> 
                                                       </option>
                                                       <%
                                                       }
                                                       %>
                                                    </select> 
                                              </td>
                                           </tr>  
                                           

                                           <tr>
                                              <td>count Of Feeds</td>
                                              <td>
                                                  <input type="text" name="quantityOfFeed" required="required" value="<%=quantityOfFeed%>" > 
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
                                    <h2>Assigned Feeds</h2>
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
                                + "a.*,"
                                + "b.*" 
                                + " from "
                                + "tbl_verified_feed_details a," 
                                + "tbl_feed_details b" 
                                + " WHERE "
                                + " a.pondID ="+URLpondID                                           
                                + " AND "
                                + " a.feedID = b.feedID"     
                                + "";

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
                                                    ID:  <%=rs3.getString("feedID")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center">
                                                   Feed Name:  <%=rs3.getString("feedName")%> 
                                                </td>    
                                            </tr>
                                            
                                            <tr>
                                                <td style="align-content: center">
                                                   Capacity: <%=rs3.getString("weight")%>
                                                </td>    
                                            </tr>
                                        </table>   
                                    </td>
                                     <td>
                                        <table>
                                             <tr>
                                                <td style="align-content: center; width:350px;">
                                                    Actual Rate  Rs: <%=rs3.getString("actualRate")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center">
                                                   Selling Rate Rs: <%=rs3.getString("sellingRate")%>
                                                </td>    
                                            </tr>
                                             <tr>
                                                <td style="align-content: center; width:350px;">
                                                    No of Feeds: <%=rs3.getString("quantityOfFeed")%>
                                                 </td>
                                            </tr>
                                           
                                        </table>   
                                    </td>    
                                    <td style="align-content: center; vertical-align: middle;">
                                         Rs: <%=Float.parseFloat(rs3.getString("quantityOfFeed"))*Float.parseFloat(rs3.getString("sellingRate"))%>
                                    </td>  
                                        
                                    <td  style="width: 80px; vertical-align: middle"> <center><a href="FeedVerification.jsp?eid=<%=rs3.getString("a.verifiedFeedID")%>&pondID=<%=URLpondID%>"><img src="../TemplateStyleFiles/EditIcon.png" height="30px" width="30px"></a></td>
                                    <td  style="width: 80px; vertical-align: middle"> <center><a href="FeedVerification.jsp?did=<%=rs3.getString("a.verifiedFeedID")%>&pondID=<%=URLpondID%>"><img src="../TemplateStyleFiles/DeleteIcon.png" height="30px" width="30px"></a></td>
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
