<%@include file="UserHomeHeader.jsp" %>
<div class="div_login">
<div class="div_Heading" >
<p class="align_center_p"> Appointment</p>
</div>      
<table class="Round_corner_Form_Base">
    <tr>
        <td rowspan="2">  
            <%@page contentType="text/html" pageEncoding="UTF-8"%>
            <!DOCTYPE html>
            <html>
            <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title> Appointment</title>
            </head>
            <body>     
            <form method="post"> 
            <div align="center" style="padding-top:  50px; font-family: sans-serif; font-size: larger; "  >         
            
                
            <table border="1" class="Content_Table" style=" border-collapse: collapse; width: 1000px;  overflow: scroll;">
            <caption>
                <h2>Select Pond</h2>
            </caption>  
                <tr style="height: 35px; background-color: #000; color: #d43f3a; padding: 5px;">
                    <th style="padding: 10px;">ID</th>
                    <th style="padding: 10px;">Pond</th>
                    <th style="padding: 10px;"> Details</th>
                                  
                </tr>  

                <%
                String SSNuserID=session.getAttribute("userID").toString();   
                
                String querySelect="SELECT "
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
                + "a.userID="+SSNuserID   
                + " AND "         
                + "a.status=1"        
                ;  
                ResultSet rs=obj.select(querySelect);
                System.out.println(" QquerySelect : "+querySelect);
                int count=0;
                while(rs.next())
                {
                count++;    
                %>

                <tr >
                    <td align="center"><%=count%></td>
                    
                    <td>  
                        <table style=" width: 280px;"> 
                            
                            <tr> 
                                <td  align="center">
                                    <center><img src='..\User\PondImages\<%=rs.getString("pondImage")%>' width="280" height="280" />
                                </td>
                            </tr>
                            
                             <tr> 
                                <td align="center">
                                    <center> <a href="AdvanceandVarifyFinalForm.jsp?pondID=<%=rs.getString("pondID")%>"> <img src='../TemplateStyleFiles/Verify.png' width="200" height="60" /></a>
                                </td>
                            </tr> 
                        </table>
                    </td>
                    <td>
                        <table border="1" style=" width: 700px;">
                            <tr> 
                                <td>    
                                    <table border="1" style=" width: 700px;"> 
                                        <tr> 
                                            <td>Pond ID  </td>
                                            <td><%=rs.getString("pondID")%> </td>
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
                                            <td>Pond Address  </td>
                                            <td><%=rs.getString("pondAddress")%>, <%=rs.getString("districtName")%>(DT), <%=rs.getString("stateName")%></td>
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
                                            <td style="text-align:center; vertical-align:middle;"> 
                                                <img src='..\User\ProfilePictures\<%=rs.getString("profilePicture")%>' width="100" height="100" />
                                            </td>
                                            <td>  
                                                <table> 
                                                    <tr> 
                                                        <td>Name   </td>
                                                         <td><%=rs.getString("firstName")%> <%=rs.getString("lastName")%></td>
                                                    </tr>
                                                    <tr> 
                                                        <td>Contact Number  </td>
                                                        <td><%=rs.getString("contactNumber")%>, <%=rs.getString("mobileNumber")%> </td>
                                                    </tr>
                                                    <tr> 
                                                        <td>E-Mail </td>
                                                        <td><%=rs.getString("email")%></td>
                                                    </tr>
                                                     <tr> 
                                                        <td>Registered Date </td> 
                                                        <td><%=rs.getString("currentDate")%> </td>
                                                    </tr>
                                                    
                                                </table>
                                            </td>
                                        </tr>                                            
                                        
                                       
                                    </table>
                                </td>
                            </tr> 
                           
                        </table>
                                                    
                    </td>  

                    
                                
                <%
                }
                %>
            </table>
                       
            
                            
            </div>              
            </form>
            </body>
            </html>        
        </td>
    </tr>
</table>
</div>    
<%@include file="UserHomeFooter.jsp" %>
