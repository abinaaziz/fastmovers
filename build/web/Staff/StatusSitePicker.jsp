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
            <body>     
            <form method="post"> 
            <div align="center" style="padding-top:  50px; font-family: sans-serif; font-size: larger; "  >         
            
                
            <table border="1" class="CT" style=" border-collapse: collapse; width: 1000px;  overflow: scroll;">
            <caption>
                <h2>Select Site</h2>
            </caption>  
                <tr style="height: 35px; background-color: #000; color: #d43f3a; padding: 5px;">
                    <th style="padding: 10px;">ID</th>
                    <th style="padding: 10px;">Site</th>
                    <th style="padding: 10px;" >Shifting Details</th>                                
                </tr>  

                <%
                String SSNstaffID=session.getAttribute("staffID").toString();   
                String siteID="";
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
                + "a.buildingCategoryID =b.buildingCategoryID"
                + " AND "
                + "a.moveFromStateID=c.stateID"                                     
                + " AND "
                + "a.moveFromDistrictID=d.districtID"   
                + " AND "
                + "a.userID=e.userID"   
                + " AND "    
                + "a.status=2"        
                ;  
                ResultSet rs=obj.select(querySelect);
                System.out.println(" QquerySelect : "+querySelect);
                while(rs.next())
                {
                siteID=rs.getString("siteID");
                %>

                <tr >
                    <td align="center"><%=rs.getString("siteID")%></td>
                    <td >

                        <table>
                            <tr> 
                                <td>
                                    <center><img src='..\User\SiteImages\<%=rs.getString("siteImage")%>' width="250" height="250" />
                                </td>
                            </tr>
                           
                            <tr>
                                <td>    
                                    <table>  
                                         <tr> 
                                            <td>
                                                <center> <div style="font-size: 20px;"> <font color="#0847a8">Building Type:  
                                            </td>
                                            <td>
                                                <center> <div style="font-size: 20px;"> <font color="#0847a8"><%=rs.getString("buildingCategoryName")%> 
                                            </td>
                                        </tr>
                                        <tr> 
                                            <td>Start Date   </td>
                                             <td><%=rs.getString("startDate")%></td>
                                        </tr>
                                        <tr> 
                                            <td>Finish Date  </td>
                                            <td><%=rs.getString("finishDate")%></td>
                                        </tr>
                                        <tr> 
                                            <td>Road Type </td>
                                            <td><%=rs.getString("roadType")%></td>
                                        </tr>
                                         <tr> 
                                            <td>Distance </td>
                                            <td><%=rs.getString("distance")%></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>                             
                        </table>
                    </td>  

                    <td>
                        <table border="1"  style="width: 100%;">
                            <tr> 
                                <td>
                                    <div style="font-size: 18px;"><font color="#0847a8"><b>Start Location</font>
                                </td>
                                <td>
                                    <div style="font-size: 18px;"><font color="#0847a8"><%=rs.getString("moveFromPlace")%></font> 
                                </td>
                            </tr>
                            <tr> 
                                <td>
                                    Address  
                                </td>                           
                                <td>
                                    <%=rs.getString("moveFromAddress")%> 
                                </td>
                            </tr>  
                            <tr> 
                                <td>
                                    State 
                                </td>
                                <td>
                                    <%=rs.getString("stateName")%> 
                                </td>
                            </tr>
                            <tr> 
                                <td>
                                    District
                                </td>
                                 <td>
                                     <%=rs.getString("districtName")%>
                                 </td>
                            </tr>
                            <tr>     
                                <td> 
                                    <div style="font-size: 18px;"><font color="#0847a8">Destination</font>
                                </td>
                                <td>
                                    <div style="font-size: 18px;"><font color="#0847a8"><%=rs.getString("moveToPlace")%> 
                                </td>
                            </tr>
                            <tr> 
                                <td>Address</td>
                                <td><%=rs.getString("moveToAddress")%> </td>
                            </tr>
                            <tr> 
                                <td>State</td>
                                <td><%=rs.getString("stateName")%></td>
                            </tr>
                            <tr> 
                                <td>District</td>
                                <td><%=rs.getString("districtName")%></td>
                            </tr>
                            <tr> 
                                
                                <td style="text-align:center; vertical-align:middle;"> 
                                    <img src='..\User\ProfilePictures\<%=rs.getString("profilePicture")%>' width="100" height="100" />
                                </td>  
                                <td>
                                    <table border="1" style="width: 100%;"> 
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
                            <tr>          
                                <td colspan="2">
                            <center> <a href="StatusofWokingSite.jsp?siteID=<%=siteID%>"> <img src='../TemplateStyleFiles/View.png' width="220" height="60" /></a>
                                </td>                       
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
        </td>
    </tr>
</table>
</div>    
<%@include file="StaffHomeFooter.jsp" %>
