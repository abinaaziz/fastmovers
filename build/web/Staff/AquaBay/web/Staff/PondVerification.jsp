<%@include file="StaffHomeHeader.jsp" %>
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
                <title> </title>
            </head>
            <% 
            String URLpondID=request.getParameter("pondID");    
            String pondAria="";
            String farmBedAria="";
            String startDate="";
            String finishDate="";  
            
            if(request.getParameter("B_Submit")!=null)  
            {
                System.out.println("queryUpadate");
                pondAria=request.getParameter("pondAria");
                farmBedAria=request.getParameter("farmBedAria");
                startDate=request.getParameter("startDate");
                finishDate=request.getParameter("finishDate");
                String queryUpadate="UPDATE "
                + "tbl_pond_register"
                + " SET "
                + "pondAria='"+pondAria+"',"
                + "farmBedAria='"+farmBedAria+"',"
                + "startDate='"+startDate+"',"
                + "finishDate='"+finishDate+"'"
                + " WHERE "
                + "pondID="+URLpondID;
                obj.executeCommand(queryUpadate);
                System.out.println("queryUpadate"+queryUpadate);
                try{
                //response.sendRedirect("StaffHomePage.jsp");
                response.sendRedirect("PondMechanismVarification.jsp?pondID="+URLpondID);
                //response.sendRedirect("PondMechanismVarification.jsp");
                }catch(Exception e){System.out.println("Error: "+e);}
            }
            
            %>
            
            <body>     
                <form name="Form1" method="POST"> 
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
                                            <h2>Pond Design</h2>
                                        </caption> 
                                        <tr>  
                                            <td>
                                                Pond Aria (in Squire Feet)
                                            </td>                                 
                                            <td> 
                                                <input type="text" name="pondAria" required="required" value="<%=pondAria%>" >  
                                            </td>
                                        </tr>  
                                         <tr>  
                                            <td>
                                                Farm Bed Aria (in Squire Feet)
                                            </td>
                                           <td>
                                              <input type="text"name="farmBedAria"  required="required" value="<%=farmBedAria%>" >
                                           </td>
                                        </tr>  
                                        <tr> 
                                            <td>
                                                Start Installation From
                                            </td>                                
                                            <td>
                                                <input type="date" name="startDate" value="<%=startDate%>" style="padding-top: 0px;">
                                            </td>
                                        </tr>  
                                        <tr>         
                                            <td>
                                                Finish Installation At
                                            </td>
                                            <td>
                                                <input type="date" name="finishDate" value="<%=finishDate%>" style="padding-top: 0px;">
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
