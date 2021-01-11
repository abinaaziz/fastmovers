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
            System.out.println("URLpondID : "+URLpondID);
            
            String pondShape="";
            String pondMechanismID=""; 
            String secondaryLayerID="";
            String farmbedMechanismID="";
           
            if(request.getParameter("B_Submit")!=null)  
            {
                pondShape=request.getParameter("pondShape");
                pondMechanismID=request.getParameter("pondMechanismID");
                secondaryLayerID=request.getParameter("secondaryLayerID");
                farmbedMechanismID=request.getParameter("farmbedMechanismID");
                System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>"+secondaryLayerID);
                String values1="'"+URLpondID
                +"','"+pondShape                
                +"','"+pondMechanismID        
                +"','"+secondaryLayerID
                +"','"+farmbedMechanismID
                +"'";
                
                String columns="pondID,"
                + "pondShape,"
                + "pondMechanismID,"        
                + "secondaryLayerID,"
                + "farmbedMechanismID"
                ;
                
                String queryInsert="insert into tbl_verified_pond_mechanism("+columns+") values ("+values1+")";
                System.out.println(queryInsert);
                obj.executeCommand(queryInsert);
                response.sendRedirect("FilterVerification.jsp?pondID="+URLpondID);
            }
            %>
            
            <body>     
                <form method="post"> 
                    <div align="center" style="padding-top:  50px; font-family: sans-serif; font-size: larger; "  >
                        <table border="1" class="Content_Table" style=" border-collapse: collapse; width: 400px;  overflow: scroll;">
                            
                            <%
                                //String SSNstaffID=session.getAttribute("staffID").toString();
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
                                
                                String pondAria="";
                                String farmBedAria="";
                                String startDate="";
                                String finishDate="";  
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
                                    <table class="Content_Table" style="width: 600px;"  >
                                        <caption>
                                            <h2>Pond Construction</h2>
                                        </caption> 
                                        <tr>  
                                            <td>
                                                Pond Shape
                                            </td>                                 
                                            <td> 
                                                <select name="pondShape" >
                                                    <option name="sel>">-------------Select-------------</option>
                                                   
                                                    <option value="Round" <%if(pondShape.equals("Round")){%> selected="select"<%}%> >
                                                        Round
                                                    </option> 
                                                    <option value="Round" <%if(pondShape.equals("Round")){%> selected="select"<%}%> >
                                                        Squire
                                                    </option> 
                                                                         
                                                </select>
                                            </td>
                                        </tr>  
                                         <tr>  
                                            <td>
                                                Pond Mechanism
                                            </td>
                                           <td>
                                                <select name="pondMechanismID" >
                                                    <option name="sel>">-------------Select-------------</option>
                                                    <%String sel="select * from tbl_pond_mechanism_details";
                                                    ResultSet rs1=obj.select(sel);
                                                    while (rs1.next())
                                                    {                                                                                            
                                                    %>
                                                    <option value="<%=rs1.getString("pondMechanismID")%>" <%if(pondMechanismID.equals(rs1.getString("pondMechanismID"))){%> selected="select"<%}%> >

                                                        <%=rs1.getString("pondMechanismName")%></option> 
                                                    <%}%>                            
                                                </select>
                                           </td>
                                        </tr>  
                                        <tr> 
                                            <td>
                                                Secondary Material
                                            </td>                                
                                            <td>
                                                <select name="secondaryLayerID" >
                                                    <option name="sel>">-------------Select-------------</option>
                                                    <%String sel2="select * from tbl_secondary_layer_details";
                                                    ResultSet rs2=obj.select(sel2);
                                                    while (rs2.next())
                                                    {                                                                                            
                                                    %>
                                                    <option value="<%=rs2.getString("secondaryLayerID")%>" <%if(secondaryLayerID.equals(rs2.getString("secondaryLayerID"))){%> selected="select"<%}%> >
                                                        <%=rs2.getString("secondaryLayerName")%></option> 
                                                    <%}%>                            
                                                </select>
                                            </td>
                                        </tr>  
                                        <tr> 
                                            <td>
                                                Farm Bed Mechanism
                                            </td>                                
                                            <td>
                                                <select name="farmbedMechanismID" >
                                                    <option name="sel>">-------------Select-------------</option>
                                                    <%String sel3="select * from tbl_farmbed_mechanism_details";
                                                    ResultSet rs3=obj.select(sel3);
                                                    while (rs3.next())
                                                    {                                                                                            
                                                    %>
                                                    <option value="<%=rs3.getString("farmbedMechanismID")%>" <%if(farmbedMechanismID.equals(rs3.getString("farmbedMechanismID"))){%> selected="select"<%}%> >
                                                        <%=rs3.getString("farmbedMechanismName")%></option> 
                                                    <%}%>                            
                                                </select>
                                            </td>
                                        </tr>  
                                        <tr>
                                            <td >
                                            
                                            </td>
                                            <td >
                                            <input type="submit" value="Next >>>" name="B_Submit" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            <tr>    
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
