<!-- HEADER  STARTS-->
<%@include file="StaffHomeHeader.jsp" %>

<div class="div_Heading" >
    <p class="align_center_p"></p>
</div>              
    
<table class="Round_corner_Form_Base">
    <tr>
        <td style="vertical-align: top;">     
<!-- HEADER  ENDS-->   

<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Member Application</title>
    </head>
    <body>
        <%
        String SSNstaffID=session.getAttribute("staffID").toString();   
        String URLsiteID=request.getParameter("siteID");
        
        String eid=request.getParameter("eid");   
        String did=request.getParameter("did");    
        String hid="";
         
        String assignedVehicleID = "";
        String vehicleCategoryID = "";
        String vehicleCategoryName ="";
        String vehicleID = "";
        String workedDate = "";
        String totalDistance="";
        String status = "";
            
        String GetURLVal1 = request.getParameter("URLVal1");
        
        if(request.getParameter("did")!=null)  
        {           
            String queryDelete="delete from tbl_assigned_vehicle where assignedVehicleID="+did;
            boolean result=obj.executeCommand(queryDelete);
            if(result)
            {
                out.print("<script>alert('Deleted')</script>");
            }
            else
            {
                out.print("<script>alert('Not Deleted')</script>");
            }
            response.sendRedirect("AssignVehicle.jsp?siteID="+URLsiteID);
        }
        
        if (eid != null)
        {   
            hid=request.getParameter("hid");
            String querySelect="select * from tbl_assigned_vehicle where assignedVehicleID="+eid;
            System.out.print("EDIT: eid="+eid);
            ResultSet rs=obj.select(querySelect);                
            if(rs.next())
            {
                
                vehicleID =rs.getString("vehicleID");
                workedDate =rs.getString("workedDate");
                
            } 
        }
        if (request.getParameter("B_Submit")!=null)
        {   
            System.out.print("Submit Button clicked in file LabTest Details");  
            totalDistance =request.getParameter("totalDistance");            
            vehicleID =request.getParameter("vehicleID");
            workedDate =request.getParameter("workedDate");
            
            String values1="'"+URLsiteID 
            +"','"+vehicleID
            +"','"+workedDate  
            +"','"+totalDistance         
            +"'";
        
            if (request.getParameter("eid") != null)
            {
                
                String values2="siteID='" +URLsiteID
                + "',vehicleID='" +vehicleID 
                + "',workedDate='" +workedDate
                + "',totalDistance='" +totalDistance        
                +"'" ;
                
                String queryUpadate = "update tbl_assigned_vehicle set "+values2+ " where assignedVehicleID=" + eid;  //EDIT
                out.print(queryUpadate);
                obj.executeCommand(queryUpadate);
            } 
            else  
            {                    
                String columns= "siteID, vehicleID, workedDate,totalDistance ";
                String queryInsert="insert into tbl_assigned_vehicle("+columns+") values ("+values1+")";
                System.out.print(queryInsert);
                obj.executeCommand(queryInsert); 
            }
            response.sendRedirect("AssignVehicle.jsp?siteID="+URLsiteID);
        }
               
        %>
        
          <script type="text/javascript" lang="javascript">
                function getVehicleName(argsStateID)
                {
                    var http;
                    http=new XMLHttpRequest();
                    http.onreadystatechange=function()
                    {
                        if(http.readyState==4)
                        {
                            document.getElementById("vehicleID").innerHTML=http.responseText;
                        }
                    };
                    http.open("GET","ajaxVehicleName.jsp?argsStateID="+argsStateID,true);
                    http.send();
                }
            </script>
        
     <form  method="post"> 
        <table class="one" >
            <div align="center" >        
            <table class="Content_Table">
                <caption>
                         <h2>Assign Vehicle</h2>
                </caption> 
                       <tr>
                           <td>Select Vehicle Type</td>
                           
                           <td>
                                <select name="vehicleCategoryID" onchange="getVehicleName(this.value);">    
                                    <option value="Nil">-------------Select-------------</option>
                                    <%  //VALUE ADDING TO COMBO BOX
                                        String querySelect2 = "select * from tbl_vehicle_category "; 
                                        ResultSet rs2 = obj.select(querySelect2);
                                        System.out.print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+querySelect2);
                                        while (rs2.next()) 
                                        {                                                
                                    %>
                                        <option value="<%=rs2.getString("vehicleCategoryID")%>"     
                                        <%if(vehicleCategoryID.equals(rs2.getString("vehicleCategoryID")))
                                         {
                                        %>
                                            selected="selected"
                                        <%}%> >
                                            
                                        <%=rs2.getString("vehicleCategoryName")%> </option>
                                        <%
                                        }
                                        %>
                                    </select> 
                           </td>
                        </tr>  
                        <tr>
                            <td>
                                Select Vehicle
                            </td>
                            <td>
                                <select name="vehicleID" id="vehicleID" > 
                                    <option value="">--------Select--------</option>                                 
                                </select>
                            </td>
                        </tr>
                       
                        <tr>
                            <%
                                String querySelect="select * from tbl_assigned_worker where siteID="+URLsiteID;
                                System.out.print("EDIT: eid="+URLsiteID);
                                ResultSet rs_1=obj.select(querySelect);
                                 if(rs_1.next())
                                 {
                                    workedDate =rs_1.getString("workedDate");
                                 }
                                 System.out.print("EDIT: eid="+workedDate);
                                rs_1.close();
                            %>
                           <td>Running Date</td>
                           <td>
                               <input type="date" name="workedDate" requird="" value="<%=workedDate%>" > 
                           </td>
                       </tr> 
                      
                       <tr><td>Total Distance in Km</td>
                           <td>
                               <input type="text"name="totalDistance"  value="<%=totalDistance%>">
                            </td>
                       </tr>
                       
                       <tr>
                            <td> 
                                <input type="reset" value="Reset" name="buttonReset" >
                            </td>
                            <td >
                       <center>  <input class="btn btn-primary" type="submit" value="Submit" name="B_Submit" >
                            </td>
                        </tr>
                    
            </table>
        </div>
        </td>
        
         <td style="vertical-align: top;">
            <!-- Small Slide  STARTS-->
            <%@include file="../TemplateStyleFiles/SmallSlideBar.jsp" %>
            <!-- Small Slide  ENDS-->
        </td>
       
    </tr>
    
    <tr>
        <td colspan="2">
            <div align="center" >         
                <table class="TBL1" border="1">

                     <caption>
                         <h2>Assigned Vehicle Details</h2>
                     </caption>     
                                <tr>
                                    <th>ID</th> 
                                    <th>Image</th>
                                    <th>Vehicle</th>                                    
                                    <th>Fare</th>  
                                    <th>EDIT</th>
                                    <th>DELETE</th>

                                </tr>
                                <%
                                    
                                   // String SSNvehicleID2=session.getAttribute("vehicleID").toString(); 
                                   // String querySelect="select * from tbl_assigned_vehicle where vehicleID='"+SSNvehicleID2+"'";
                                    String querySelect3="select "
                                    + "a.*,"
                                    + "b.*,"    
                                    + "c.*"    
                                    + " from "
                                    + "tbl_assigned_vehicle a," 
                                    + "tbl_vehicle_details b," 
                                    + "tbl_vehicle_category c"
                                    + " WHERE "
                                    + " a.siteID ="+URLsiteID                                           
                                    + " AND "        
                                    + " a.vehicleID = b.vehicleID"
                                    + " AND "
                                    + " b.vehicleCategoryID = c.vehicleCategoryID"
                                    + " ORDER BY "
                                            + "a.workedDate ASC";
                                   
                                    ResultSet rs3=obj.select(querySelect3);
                                    //System.out.println("File upload file is strt invoking 2:-querySelect"+querySelect);
                                    int count=0;
                                    while(rs3.next())
                                    {
                                    count++;    
                                %>
                                
                                <tr>
                                    <td align="center">
                                    <%=count%>
                                    </td>  
                                    
                                    <td  style="text-align:center; vertical-align:middle;"> 
                                        <img src='..\Staff\Vehicles\<%=rs3.getString("b.profilePicture")%>' width="100" height="100" />
                                    </td>
                               
                                    <td>
                                        <table>
                                            <tr>
                                                <td style="align-content: center; width:350px;">
                                                    ID:  <%=rs3.getString("vehicleID")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center; width:350px;">
                                                     <%=rs3.getString("vehicleNumber")%> 
                                                 </td>
                                            </tr>
                                             <tr>
                                                <td style="align-content: center; width:350px;">
                                                    Type:  <%=rs3.getString("vehicleCategoryName")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center">
                                                   Company: <%=rs3.getString("company")%> <%=rs3.getString("modelName")%>
                                                </td>    
                                            </tr>    
                                             <tr>
                                                <td style="align-content: center">
                                                    Assigned Date: <%=rs3.getString("workedDate")%>
                                                </td>    
                                            </tr>
                                        </table>   
                                    </td>                                                                     
                                    <td>
                                        <table>                                            
                                            <tr>
                                                <td style="align-content: center; width:350px;">
                                                    Per Km Charge:  
                                                </td>
                                                <td style="align-content: center; width:350px;">
                                                    <%=rs3.getString("perKmCharge")%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center; width:350px;">
                                                    Total Distance: 
                                                </td>
                                                <td style="align-content: center; width:350px;">
                                                    <%=rs3.getString("totalDistance")%>
                                                </td> 
                                            </tr>
                                             <tr>
                                                <td style="align-content: center; width:350px;">
                                                   Commission:  
                                                </td>
                                                <td style="align-content: center; width:350px;">
                                                   <%=rs3.getString("commission")%>
                                                </td>
                                            </tr>  
                                             <tr>
                                                <td style="align-content: center; width:350px;">
                                                   Total Commission:  
                                                </td>
                                                <td style="align-content: center; width:350px;">
                                                   <%=Float.parseFloat(rs3.getString("commission"))*Float.parseFloat(rs3.getString("totalDistance"))%>
                                                </td>
                                            </tr>  
                                             <tr>
                                                <td style="align-content: center; width:350px;">
                                                   <div style="font-size: 18px;"><font color="#0847a8">Total Fare: 
                                                </td>
                                                <td style="align-content: center; width:350px;">
                                                   <div style="font-size: 18px;"><font color="#0847a8"><%=(Float.parseFloat(rs3.getString("commission"))*Float.parseFloat(rs3.getString("totalDistance")))+(Float.parseFloat(rs3.getString("perKmCharge"))*Float.parseFloat(rs3.getString("totalDistance")))%>
                                                </td>
                                            </tr>  
                                        </table>   
                                    </td>           
                                    <td  style="width: 80px; vertical-align: middle"> <center><a href="AssignVehicle.jsp?eid=<%=rs3.getString("a.assignedVehicleID")%>&siteID=<%=URLsiteID%>"><img src="../TemplateStyleFiles/EditIcon.png" height="30px" width="30px"></a></td>
                                    <td  style="width: 80px; vertical-align: middle"><center><a href="AssignVehicle.jsp?did=<%=rs3.getString("a.assignedVehicleID")%>&siteID=<%=URLsiteID%>"><img src="../TemplateStyleFiles/DeleteIcon.png" height="30px" width="30px"></a></td>
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
       <!-- FOOTER  STARTS-->
        </td>
        
    </tr>
</table>
</div>    

<%@include file="StaffHomeFooter.jsp" %>
<!-- FOOTER  ENDS-->