<!-- HEADER  STARTS-->
<%@include file="StaffHomeHeader.jsp" %>

<div class="div_login">
<table class="Round_corner_Form_Base" >
    <tr>
        <td >   
            <!DOCTYPE html>
            <html>
            <head>        
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>User Application</title>

            <script type="text/javascript" lang="javascript">
            function getDistrict(argsStateID)
            {
                var http;
                http=new XMLHttpRequest();
                http.onreadystatechange=function()
                {
                    if(http.readyState==4)
                    {
                        document.getElementById("moveFromDistrict").innerHTML=http.responseText;
                    }
                };
                http.open("GET","ajaxdist.jsp?argsStateID="+argsStateID,true);
                http.send();
            }
            </script>

            </head>
            <body class="backgroungPicture4">
            <%
            //String SSNstaffID=session.getAttribute("staffID").toString(); 
            String URLsiteID=request.getParameter("siteID");
            System.out.print("URLsiteID"+URLsiteID);        
            String eid=request.getParameter("eid");   
            String did=request.getParameter("did");    
            String hid="";

            String approximateWages = "";
            String approximateVehicleCharge = "";
            String approximateServiceCharge = "";
            String anyExtraCharges = "";        
            String description = "";        
            String status = "";

            if (request.getParameter("B_Submit")!=null)
            {   
                System.out.print("Submit Button clicked in file Medicine Details");            
               
                approximateWages =request.getParameter("approximateWages");
                anyExtraCharges =request.getParameter("anyExtraCharges");
                approximateVehicleCharge =request.getParameter("approximateVehicleCharge");
                approximateServiceCharge =request.getParameter("approximateServiceCharge");
                description =request.getParameter("description");
               
                String values1="'"+URLsiteID                   
                +"','"+approximateWages
                +"','"+approximateVehicleCharge
                +"','"+anyExtraCharges        
                +"','"+approximateServiceCharge
                +"','"+description        
                +"'";
                String columns= "siteID,approximateWages,"
                + "approximateVehicleCharge,anyExtraCharges,approximateServiceCharge,description"; 
                String queryInsert="insert into tbl_approximate_wages("+columns+") values ("+values1+")";
                System.out.println(queryInsert);
                boolean a=obj.executeCommand(queryInsert);
                
                String queryUpadate="update tbl_site_register set  status=1 WHERE siteID="+URLsiteID;              
                obj.executeCommand(queryUpadate);
                System.out.println(queryUpadate);
                
                response.sendRedirect("StaffHomePage.jsp?siteID="+URLsiteID);  
            }
            %>
            <script type="text/javascript">        
            function required()  
            {  
                var empt = document.forms["form1"]["approximateWages"].value;                
                if (empt != "" )  
                {  
                    alert("VERIFICATION COMPLETED");  
                    return false;  
                }  
                else   
                {  
                    return true;   
                }  
            } 
            </script>
    
             <form  method="post" name="form1" action="#" onsubmit="required()"> 
                        
             <table >
                <caption>
                    <h2> Other Charges Expected</h2>
                </caption>
                <tr>
                   <td>
                       Approximate Wages 
                   </td>
                   <td>
                       <input type="text" name="approximateWages" placeholder="approximateWages" required="required" value="<%=approximateWages%>"> 
                   </td>
                </tr>   
                <tr>
                   <td>
                       Approximate Vehicle Charge 
                   </td>
                   <td>
                       <input type="text" name="approximateVehicleCharge" placeholder="How Many Vehicle Needed" required="required" value="<%=approximateVehicleCharge%>" > 
                   </td>
                </tr> 

                <tr>
                    <td>
                        Approximate Service Charge 
                    </td>
                    <td>
                        <input type="text" name="approximateServiceCharge" placeholder="Total Service Charge Expected" required="" value="<%=approximateServiceCharge%>">  
                    </td>
                </tr>  

                <tr>
                   <td>
                       Any Extra Charges
                   </td>
                   <td>
                       <input type="text" name="anyExtraCharges" placeholder="Aproximate Weight" requird="" value="<%=anyExtraCharges%>" > 
                   </td>
                </tr>    
                <tr>
                    <td>
                        Description
                    </td>
                    <td>
                         <textarea  name="description" required="" ></textarea>  
                    </td>
                </tr> 
                <tr>
                    <td> 
                        <input type="reset" value="CLEAR" name="B_Finish" >
                    </td>
                    <td >
                            <input  type="submit" value="Submit" name="B_Submit" >
                    </td>
                </tr>
                
            </table>
            </div>        
        </td>
        <td style="vertical-align: top;padding-top: 0px;">            
            <table  >            
                <tr >                                  
                    <th colspan="2">SITE & OWNER DETAILS </th>               
                </tr>
                <%
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
                + "a.siteID ="+URLsiteID
                + " AND "  
                + "a.buildingCategoryID =b.buildingCategoryID"
                + " AND "
                + "a.moveFromStateID=c.stateID"                                     
                + " AND "
                + "a.moveFromDistrictID=d.districtID"   
                + " AND "
                + "a.userID=e.userID"   
                + " AND "    
                + "a.status=0"        
                ;  
                ResultSet rs=obj.select(querySelect);
                System.out.println(" QquerySelect : "+querySelect);
                while(rs.next())
                {
                %>

                <tr>                    
                    <td>
                        <center><img src='..\User\SiteImages\<%=rs.getString("siteImage")%>' width="160" height="160" />
                    </td>
                    <td>
                        <table style="width: 100%;" border='1' >
                             <tr> 
                                <td>
                                    <div style="font-size: 20px;"> <font color="#0847a8">Building Type:  
                                </td>
                                <td>
                                    <div style="font-size: 20px;"> <font color="#0847a8"><%=rs.getString("buildingCategoryName")%> 
                                </td>
                            </tr>  
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
                                    <div style="font-size: 18px;"><font color="#0847a8">Destination</font>
                                </td>
                                <td>
                                    <div style="font-size: 18px;"><font color="#0847a8"><%=rs.getString("moveToPlace")%> 
                                </td>
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
                <tr>
                    <td style="text-align:center; vertical-align:middle;"> 
                                    <img src='..\User\ProfilePictures\<%=rs.getString("profilePicture")%>' width="160" height="160" />
                    </td>
                    <td>  
                        <table style="width: 100%"  border='1'> 
                            <tr> 
                                <td><div style="font-size: 20px;"> <font color="#0847a8">Name   </td>
                                 <td><div style="font-size: 20px;"> <font color="#0847a8"><%=rs.getString("firstName")%> <%=rs.getString("lastName")%></td>
                            </tr>
                            <tr> 
                                <td>Place   </td>
                                 <td><%=rs.getString("place")%> </td>
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
                <%
                }
                %>
            </table>                    
        </td>
    </tr>  
                            
        </div>              
    </tr>
    </table>
                        
            <!-- FOOTER  STARTS-->            
            </form>
            </body>
            </html>
        </td>
    </tr>   
</table>
</div>   
<%@include file="StaffHomeFooter.jsp" %>

    