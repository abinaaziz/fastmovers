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
            
String userID="";

            String itemID = "";       
            String thingsCategoryID = "";        
            String thingsName = "";
            String count = "";           
            String weight = "";        
            String mass = "";        
            String status = "";

            if(request.getParameter("did")!=null)  
            {           
                String queryDelete="delete from tbl_item where itemID="+did;
                System.out.print("queryDelete="+queryDelete);
                boolean result=obj.executeCommand(queryDelete);
                if(result)
                {
                    out.print("<script>alert('Deleted')</script>");
                }
                else
                {
                    out.print("<script>alert('Not Deleted')</script>");
                }
                response.sendRedirect("SiteVerification.jsp?siteID="+URLsiteID);  
            }

            if (eid != null)
            {   
                //hid=request.getParameter("hid");
                String querySelect="select * from tbl_item where itemID="+eid;
                System.out.print("EDIT: eid="+eid);
                ResultSet rs=obj.select(querySelect);                
                if(rs.next())
                {

                    thingsCategoryID =rs.getString("thingsCategoryID");
                    thingsName =rs.getString("thingsName");
                    weight =rs.getString("weight");
                    count =rs.getString("count");                   
                    mass =rs.getString("mass");
                } 
            }

            if (request.getParameter("B_Submit")!=null)
            {   
                System.out.print("Submit Button clicked in file Medicine Details");            
                thingsCategoryID =request.getParameter("thingsCategoryID");
                thingsName =request.getParameter("thingsName");
                weight =request.getParameter("weight");
                count =request.getParameter("count");                
                mass =request.getParameter("mass");
                if(request.getParameter("eid")!=null)
                {
                    String queryUpadate="update tbl_item set "
                    +"thingsCategoryID='"+thingsCategoryID+"',"
                    +"thingsName='"+thingsName+"',"
                    +"count='"+count+"',"
                    +"weight='"+weight+"',"                      
                    +"mass='"+mass+"'"
                    +" where itemID="+eid;
                    obj.executeCommand(queryUpadate);
                    System.out.println(queryUpadate);
                }
                else
                {
                    String values1="'"+URLsiteID
                    +"','"+thingsCategoryID
                    +"','"+thingsName
                    +"','"+count
                    +"','"+weight   
                    +"','"+mass        
                    +"'";
                    String columns= "siteID,thingsCategoryID, thingsName, "
                                    + "count,weight,mass"; 
                    String queryInsert="insert into tbl_item("+columns+") values ("+values1+")";
                    System.out.println(queryInsert);
                    boolean a=obj.executeCommand(queryInsert);
                }
                response.sendRedirect("SiteVerification.jsp?siteID="+URLsiteID);  
            }
            if (request.getParameter("B_Finish")!=null)
            {
                String queryUpadate="update tbl_site_register set status=1"
                +" where "
                + "siteID="+URLsiteID;
                obj.executeCommand(queryUpadate);
                response.sendRedirect("StaffHomePage.jsp"); 
            }
            %>
            <script type="text/javascript">        
            function required()  
            {  
                var empt = document.forms["form1"]["thingsName"].value; 
                var empt2 = document.forms["form1"]["B_Finish"].value; 
                if (empt == ""&&empt2 =="" )  
                {  
                    alert("REQUIRED FIELD ARE EMPTY!!! PLEASE ENTER VALUE");  
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
                    <h2> Item Details</h2>
                </caption>
                <tr>
                    <td>
                        Item Category
                    </td>
                    <td>
                        <select name="thingsCategoryID"  >  
                        <option name="sel>">-------------Select-------------</option>    
                        <%  //VALUE ADDING TO COMBO BOX
                        String querySelect2 = "select * from tbl_thingscategory "; 
                        ResultSet rs2 = obj.select(querySelect2);
                        System.out.print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+querySelect2);
                        while (rs2.next()) 
                        {                                                
                        %>
                        <option value="<%=rs2.getString("thingsCategoryID")%>"     
                        <%if(thingsCategoryID.equals(rs2.getString("thingsCategoryID")))
                         {
                        %>
                            selected="selected"
                            <%}%> >
                        <%=rs2.getString("thingsCategoryName")%>                        
                        </option>
                        <%
                        }
                        %>
                        </select> 
                    </td>
                </tr>   

                <tr>
                   <td>
                       Thing Name
                   </td>
                   <td>
                       <input type="text" name="thingsName" placeholder="" required="required" value="<%=thingsName%>"> 
                   </td>
                </tr>   
                <tr>
                   <td>
                       Count
                   </td>
                   <td>
                       <input type="text" name="count" placeholder="" required="required" value="<%=count%>" > 
                   </td>
                </tr> 
                <tr>
                   <td>
                       Weight
                   </td>
                   <td>
                       <input type="text" name="weight" placeholder="Aproximate Weight" requird="" value="<%=weight%>" > 
                   </td>
                </tr> 
                <tr>
                   <td>
                       Mass
                   </td>
                   <td>
                       <input type="text" name="mass" placeholder="Aproximate Mass" requird="" value="<%=mass%>" > 
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
                <tr>
                    <td colspan="2"> 
                        <center> 
                             <a href="AproximateWageAdding.jsp?siteID=<%=URLsiteID%>"> 
                                 <img src='../TemplateStyleFiles/FinishVerify.png' width="250" height="60" />
                             </a>
                        </center>         
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
userID= rs.getString("userID");                   
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
    <tr>
        <td colspan="2">
            <table  style="width: 1050px; " border='1'>   
                <caption>    
                    <h2> Items To Move</h2>
                </caption>      
            <%
            int count2=0;
            String querySelect3 = "SELECT "
            + "a.*,"
            + "b.*"                                               
            + " FROM "
            + "tbl_item a, "
            + "tbl_thingscategory b"          
            + " WHERE "
            + "a.siteID ="+URLsiteID
            + " AND "          
            + "a.thingsCategoryID=b.thingsCategoryID"
            + " AND "
            + "a.status=0";

            System.out.println("querySelect: "+querySelect3);
            ResultSet rs3=obj.select(querySelect3);
            //System.out.println("File upload file is strt invoking 2:-querySelect"+querySelect);
            float NetTotal=0.0F;
            while(rs3.next())
            {
            count2++;
            if(count2==1)
            {
            %>
                <tr >                                  
                    <th>NO</th>
                    <th>Category</th>                                    
                    <th>Item Name</th>                   
                    <th>Weight</th>    
                    <th>Mass</th>
                    <th>Count</th>
                    <th>Rate</th>
                    <th>Total</th>
                    <th> Edit</th>  
                    <th> Delete</th>  
                </tr>
            <%
            }
            %>
                <tr >
                    <td>
                     <%=count2%>
                    </td>
                    <td>
                       <%=rs3.getString("thingsCategoryName")%>
                    </td>   
                    <td>
                     <%=rs3.getString("thingsName")%>  
                    </td>                   
                    <td>
                       <%=rs3.getString("weight")%>
                    </td>
                    <td>
                       <%=rs3.getString("mass")%>
                    </td> 
                     <td>
                        <%=rs3.getString("count")%>
                    </td>  
                    <td>
                       <%=rs3.getString("thingsServiceCharge")%>
                    </td> 
                     <td>
                       <%=Float.parseFloat(rs3.getString("count"))*Float.parseFloat(rs3.getString("thingsServiceCharge")) %>
                    </td> 
                    <td>
                        <a href="SiteVerification.jsp?eid=<%=rs3.getString("itemID")%>&siteID=<%=rs3.getString("siteID")%>"><img src="../TemplateStyleFiles/EditIcon.png" height="30px" width="30px"></a>
                    </td>
                    <td>
                        <a href="SiteVerification.jsp?did=<%=rs3.getString("itemID")%>&siteID=<%=rs3.getString("siteID")%>"><img src="../TemplateStyleFiles/DeleteIcon.png" height="30px" width="30px"></a>
                    </td>
                    <%
                    NetTotal+=(Float.parseFloat(rs3.getString("count"))*Float.parseFloat( rs3.getString("thingsServiceCharge")));
                    %>
                </tr>
            <%
            }
            %>
                <tr>
                    <td colspan="5" >
                       <div  style="font-size: 20px;"> <font color="#0847a8"> 
                    </td> 
                    <td colspan="2" >
                       <div  style="font-size: 20px;"> <font color="#0847a8"> Net Total 
                    </td> 
                    <td colspan="3">
                        <div  style="font-size: 20px;"> <font color="#0847a8"> Rs: <%=NetTotal%>
                    </td> 
                </tr>        
            </table>
        </td>   
    </tr>
    
    <!-- New Code-->
                        <tr>
                            <td colspan='2'>
                                <center> <table class="Dispaly_Table" style="width: 1000px;" >
                                    <caption>
                                        <h2>Site Images</h2>
                                    </caption> 
                                     <tr>   
                                    <%
                                        String querySelect112 = "select "
                                        + "a.*," 
                                        + "b.*,"
                                        + "c.* "
                                        + "from"
                                        + " tbl_site_register a,"
                                        + " tbl_buildingcategory b,"
                                        + " tbl_site_more_images c"        
                                        + " WHERE "
                                        + "a.userID="+userID  
                                        + " AND "
                                        + "a.siteID=c.siteID" 
                                        + " AND "
                                        + "a.buildingCategoryID =b.buildingCategoryID "
                                        + " AND "
                                        + "a.status=0"
                                                
                                        ; 
                                        ResultSet rs112 = obj.select(querySelect112);
                                        System.out.println("DIP TABLE QRY:"+querySelect2);
                                        int count112=0;
                                        while (rs112.next()) 
                                        {
                                            count112++;
                                        %>
                                                                   
                                            <td><a href='..\User\SiteMoreImages\<%=rs112.getString("imageName")%>'><img src='..\User\SiteMoreImages\<%=rs112.getString("imageName")%>' width="200" height="200"></a></td>                                        
                                          <% if (count112>3)
                                          {
                                          %>   
                                        </tr>
                                        <%
                                            count112=0;
                                            }
                                        }    
                                        %>
                                </table>          
                            </td> 
                        </tr> 
    <!-- New Code-->
    
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

    