<!-- HEADER  STARTS-->
<%@include file="UserHomeHeader.jsp" %>

<div class="div_login">
<table class="Round_corner_Form_Base" >
    <tr>
        <td >   
            <!DOCTYPE html>
            <html>
            <head>        
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title></title>
            </head>
            <body class="backgroungPicture4">
                
                <% 
            String SSNuserID=session.getAttribute("userID").toString();             
            String siteMoreImagesID=request.getParameter("siteMoreImagesID");  
            
            
            
            
             if (siteMoreImagesID != null) //Delete Button Code
            {
                String queryDelete = "delete from tbl_site_more_images where siteMoreImagesID=" + siteMoreImagesID;
                boolean result=obj.executeCommand(queryDelete);
                if(result)
                {
                    out.print("<script>alert('Deleted')</script>");
                }
                else
                {
                    out.print("<script>alert('Not Deleted')</script>");
                }
                response.sendRedirect("SiteMoreImagesAdding.jsp");
            }
           
        %>
 
                
                
     <form action="SiteMoreImagesUpload.jsp" enctype="multipart/form-data" method="post"> 


        <table class="one" >
        <div align="center" >        
            <table class="Content_Table"> 
                
                     <caption>
                         <h2>Site Images Adding</h2>
                     </caption>  
                    <tr>
                        <td>Select Site</td>
                        <td>
                            
                            <select name="medicineName" >  
                                <option value="sel">-------------Select-------------</option>
                                <%  //VALUE ADDING TO COMBO BOX
                                   
                
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
                + "a.userID="+SSNuserID  
                + " AND "
                + "e.userID="+SSNuserID          
                + " AND "    
                + "a.status=0"        
                ;  
                ResultSet rs=obj.select(querySelect);
                System.out.println(" QquerySelect : "+querySelect);
                String siteID = "";
                while(rs.next())
                {                                  
                                %>
                                <option value="<%=rs.getString("siteID") %>"  
                                    <%if(siteID.equals(rs.getString("siteID")))
                                    {
                                    %>
                                    selected="selected"<%}%>> 
                                   ID: <%=rs.getString("siteID") %>/<%=rs.getString("buildingCategoryName")%> - <%=rs.getString("moveFromPlace")%> To <%=rs.getString("moveToPlace")%></option>
                                <%}%>                                                             
                            </select>
                        </td>                       
                    </tr>
                    <tr>
                        <td>
                            Upload site Image
                        </td>
                        <td>
                            <input type="file" name="logo" requird="" >
                        </td>
                    </tr>
                      <tr>
                    <td></td>
                    <td >
                      
                             <input class="btn btn-primary" type="submit" value="Submit" name="B_Submit" >
                       
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
                                <table class="Dispaly_Table" style="width: 700px;" border="1">
                                    <caption>
                                        <h2>Site Images</h2>
                                    </caption> 
                                    <tr>  
                                        <th>No</th>
                                        <th>Site</th>
                                        <th>Image</th>
                                        <th>DELETE</th>
                                    </tr>
                                    <%
                                        String querySelect2 = "select "
                                        + "a.*," 
                                        + "b.*,"
                                        + "c.* "
                                        + "from"
                                        + " tbl_site_register a,"
                                        + " tbl_buildingcategory b,"
                                        + " tbl_site_more_images c"        
                                        + " WHERE "
                                        + "a.userID="+SSNuserID  
                                        + " AND "
                                        + "a.siteID=c.siteID" 
                                        + " AND "
                                        + "a.buildingCategoryID =b.buildingCategoryID "
                                        + " AND "
                                        + "a.status=0"
                                                
                                        ; 
                                        ResultSet rs2 = obj.select(querySelect2);
                                        System.out.println("DIP TABLE QRY:"+querySelect2);
                                        int count=0;
                                        while (rs2.next()) {
                                            count++;
                                    %>
                                    <tr>
                                        <td align="center"><%=count%></td>
                                        <td>ID: <%=rs2.getString("siteID") %>/<%=rs2.getString("buildingCategoryName")%> - <%=rs2.getString("moveFromPlace")%> To <%=rs2.getString("moveToPlace")%></td>
                                        <td><a href='SiteMoreImages\<%=rs2.getString("imageName")%>'><img src='SiteMoreImages\<%=rs2.getString("imageName")%>' width="100" height="100"></a></td>                                        
                                        <td  style="width: 80px; vertical-align: middle;"><center><a href="SiteMoreImagesAdding.jsp?siteMoreImagesID=<%=rs2.getString("siteMoreImagesID")%>"><img src="../TemplateStyleFiles/DeleteIcon.png" height="30px" width="30px"></a></td>
                                    </tr>
                                    <% } %>
                                </table>     
                                    
                    </td>
            </tr>
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
<%@include file="UserHomeFooter.jsp" %>