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
        String SSNfilterID=session.getAttribute("filterID").toString();   
        String URLpondID=request.getParameter("pondID");
        
        String eid=request.getParameter("eid");   
        String did=request.getParameter("did");    
        String hid="";
         
        String verifiedFilterID = "";
        String filterCategoryID = "";
        String filterCategoryName ="";
        String filterID = "";
        String countOfFilters = "";
        String status = "";
            
        String GetURLVal1 = request.getParameter("URLVal1");
        
        if(request.getParameter("did")!=null)  
        {           
            String queryDelete="delete from tbl_verified_filter_details where verifiedFilterID="+did;
            boolean result=obj.executeCommand(queryDelete);
            if(result)
            {
                out.print("<script>alert('Deleted')</script>");
            }
            else
            {
                out.print("<script>alert('Not Deleted')</script>");
            }
            response.sendRedirect("FilterVerification.jsp?pondID="+URLpondID);
        }
        
        if (eid != null)
        {   
            hid=request.getParameter("hid");
            String querySelect="select * from tbl_verified_filter_details where verifiedFilterID="+eid;
            System.out.print("EDIT: eid="+eid);
            ResultSet rs=obj.select(querySelect);                
            if(rs.next())
            {
                filterID =rs.getString("filterID");
                countOfFilters =rs.getString("countOfFilters");
            } 
        }
        if (request.getParameter("B_Submit")!=null)
        {   
            System.out.print("Submit Button clicked in file LabTest Details"); 
            filterID =request.getParameter("filterID");
            countOfFilters =request.getParameter("countOfFilters");
            
            String values1="'"+URLpondID 
            +"','"+filterID
            +"','"+countOfFilters          
            +"'";
        
            if (request.getParameter("eid") != null)
            {
                
                String values2="pondID='" +URLpondID
                + "',filterID='" +filterID
                + "',countOfFilters='" +countOfFilters
                +"'" ;
                
                String queryUpadate = "update tbl_verified_filter_details set "+values2+ " where verifiedFilterID=" + eid;  //EDIT
                System.out.print(queryUpadate);
                obj.executeCommand(queryUpadate);
            } 
            else  
            {                    
                String columns= "pondID, filterID, countOfFilters";
                String queryInsert="insert into tbl_verified_filter_details("+columns+") values ("+values1+")";
                System.out.print(queryInsert);
                obj.executeCommand(queryInsert); 
            }
            response.sendRedirect("FilterVerification.jsp?pondID="+URLpondID);
        }
               
        %>
        
          <script type="text/javascript" lang="javascript">
                function getFilterName(argsStateID)
                {
                    var http;
                    http=new XMLHttpRequest();
                    http.onreadystatechange=function()
                    {
                        if(http.readyState==4)
                        {
                            document.getElementById("filterID").innerHTML=http.responseText;
                        }
                    };
                    http.open("GET","ajaxFilterName.jsp?argsStateID="+argsStateID,true);
                    http.send();
                }
            </script>
        
     <form  method="post"> 
        <table class="one" >
            <div align="center" >        
            <table class="Content_Table">
                 <caption>
                         <h2>Assign Worker</h2>
                     </caption>  
                       <tr><td>Select Worker Type</td>
                           
                           <td>
                                <select name="filterCategoryID" onchange="getFilterName(this.value);">    
                                    <option value="Nil">-------------Select-------------</option>
                                    <%  //VALUE ADDING TO COMBO BOX
                                        String querySelect2 = "select * from tbl_filter_category "; 
                                        ResultSet rs2 = obj.select(querySelect2);
                                        System.out.print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+querySelect2);
                                        while (rs2.next()) 
                                        {                                                
                                    %>
                                        <option value="<%=rs2.getString("filterCategoryID")%>"     
                                        <%if(filterCategoryID.equals(rs2.getString("filterCategoryID")))
                                         {
                                        %>
                                            selected="selected"
                                        <%}%> >
                                            
                                        <%=rs2.getString("filterCategoryName")%> </option>
                                        <%
                                        }
                                        %>
                                    </select> 
                           </td>
                        </tr>  
                        <tr>
                            <td>
                                Select Worker
                            </td>
                            <td>
                                <select name="filterID" id="filterID" > 
                                    <option value="">--------Select--------</option>                                 
                                </select>
                            </td>
                        </tr>
                       
                        <tr>
                           <td>Worked Date</td>
                           <td>
                               <input type="date" name="countOfFilters" requird="" value="<%=countOfFilters%>" > 
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
                         <h2>Assigned Workers</h2>
                     </caption>     
                                <tr>
                                    <th>ID</th> 
                                    <th>Image</th>
                                    <th>Filter</th>
                                    <th>Contact</th>  
                                    <th>Wages</th>  
                                    <th>EDIT</th>
                                    <th>DELETE</th>

                                </tr>
                                <%
                                    
                                   // String SSNfilterID2=session.getAttribute("filterID").toString(); 
                                   // String querySelect="select * from tbl_verified_filter_details where filterID='"+SSNfilterID2+"'";
                                    String querySelect3="select "
                                            + "a.*,"
                                            + "b.*,"    
                                            + "c.*"    
                                            + " from "
                                            + "tbl_verified_filter_details a," 
                                            + "tbl_filter_details b," 
                                            + "tbl_filter_category c"
                                            + " WHERE "
                                            + " a.pondID ="+URLpondID                                           
                                            + " AND "
                                            + " a.filterID = b.filterID"                                            
                                            + " AND "
                                            + " b.filterCategoryID = c.filterCategoryID"
                                            + "";
                                   
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
                                    
                                    <td>
                                        <table>
                                            <tr>
                                                <td style="align-content: center; width:350px;">
                                                    ID:  <%=rs3.getString("filterID")%>/ <%=rs3.getString("filterName")%> 
                                                 </td>
                                            </tr>
                                             <tr>
                                                <td style="align-content: center; width:350px;">
                                                    actualRate:  <%=rs3.getString("actualRate")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center">
                                                   sellingRate: <%=rs3.getString("sellingRate")%>
                                                </td>    
                                            </tr>
                                             <tr>
                                                <td style="align-content: center">
                                                   capasity <%=rs3.getString("capasity")%>
                                                </td>    
                                            </tr>
                                        </table>   
                                    </td>
                                                      
                                    <td  style="vertical-align: middle;">
                                        <table>
                                            <tr>
                                                <td style="align-content: center; width:250px; vertical-align: middle">
                                                    <div style="font-size: 18px;"><font color="#0847a8">Daily Wages:  <%=rs3.getString("dailyWages")%>
                                                 </td>
                                            </tr>
                                             <tr>
                                                <td style="align-content: center; width:250px; vertical-align: middle">
                                                   <div style="font-size: 18px;"><font color="#0847a8">Commission:  <%=rs3.getString("commission")%> 
                                                 </td>
                                            </tr>                                            
                                        </table>   
                                    </td>           
                                    <td  style="width: 80px; vertical-align: middle"> <center><a href="FilterVerification.jsp?eid=<%=rs3.getString("a.verifiedFilterID")%>&pondID=<%=URLpondID%>"><img src="../TemplateStyleFiles/EditIcon.png" height="30px" width="30px"></a></td>
                                    <td  style="width: 80px; vertical-align: middle"> <center><a href="FilterVerification.jsp?did=<%=rs3.getString("a.verifiedFilterID")%>&pondID=<%=URLpondID%>"><img src="../TemplateStyleFiles/DeleteIcon.png" height="30px" width="30px"></a></td>
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