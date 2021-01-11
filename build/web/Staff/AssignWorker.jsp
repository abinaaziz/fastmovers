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
         
        String assignedWorkerID = "";
        String staffCategoryID = "";
        String staffCategoryName ="";
        String dailyWorkerID = "";
        String workedDate = "";
        String status = "";
            
        String GetURLVal1 = request.getParameter("URLVal1");
        
        if(request.getParameter("did")!=null)  
        {           
            String queryDelete="delete from tbl_assigned_worker where assignedWorkerID="+did;
            boolean result=obj.executeCommand(queryDelete);
            if(result)
            {
                out.print("<script>alert('Deleted')</script>");
            }
            else
            {
                out.print("<script>alert('Not Deleted')</script>");
            }
            response.sendRedirect("AssignWorker.jsp?siteID="+URLsiteID);
        }
        
        if (eid != null)
        {   
            hid=request.getParameter("hid");
            String querySelect="select * from tbl_assigned_worker where assignedWorkerID="+eid;
            System.out.print("EDIT: eid="+eid);
            ResultSet rs=obj.select(querySelect);                
            if(rs.next())
            {
                dailyWorkerID =rs.getString("dailyWorkerID");
                workedDate =rs.getString("workedDate");
            } 
        }
        if (request.getParameter("B_Submit")!=null)
        {   
            System.out.print("Submit Button clicked in file LabTest Details"); 
            dailyWorkerID =request.getParameter("dailyWorkerID");
            workedDate =request.getParameter("workedDate");
            
            String values1="'"+URLsiteID 
            +"','"+dailyWorkerID
            +"','"+workedDate          
            +"'";
        
            if (request.getParameter("eid") != null)
            {
                
                String values2="siteID='" +URLsiteID
                + "',dailyWorkerID='" +dailyWorkerID
                + "',workedDate='" +workedDate
                +"'" ;
                
                String queryUpadate = "update tbl_assigned_worker set "+values2+ " where assignedWorkerID=" + eid;  //EDIT
                System.out.print(queryUpadate);
                obj.executeCommand(queryUpadate);
            } 
            else  
            {                    
                String columns= "siteID, dailyWorkerID, workedDate";
                String queryInsert="insert into tbl_assigned_worker("+columns+") values ("+values1+")";
                System.out.print(queryInsert);
                obj.executeCommand(queryInsert); 
            }
            response.sendRedirect("AssignWorker.jsp?siteID="+URLsiteID);
        }
               
        %>
        
          <script type="text/javascript" lang="javascript">
                function getStaffName(argsStateID)
                {
                    var http;
                    http=new XMLHttpRequest();
                    http.onreadystatechange=function()
                    {
                        if(http.readyState==4)
                        {
                            document.getElementById("dailyWorkerID").innerHTML=http.responseText;
                        }
                    };
                    http.open("GET","ajaxStaffName.jsp?argsStateID="+argsStateID,true);
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
                                <select name="staffCategoryID" onchange="getStaffName(this.value);">    
                                    <option value="Nil">-------------Select-------------</option>
                                    <%  //VALUE ADDING TO COMBO BOX
                                        String querySelect2 = "select * from tbl_staff_category "; 
                                        ResultSet rs2 = obj.select(querySelect2);
                                        System.out.print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+querySelect2);
                                        while (rs2.next()) 
                                        {                                                
                                    %>
                                        <option value="<%=rs2.getString("staffCategoryID")%>"     
                                        <%if(staffCategoryID.equals(rs2.getString("staffCategoryID")))
                                         {
                                        %>
                                            selected="selected"
                                        <%}%> >
                                            
                                        <%=rs2.getString("staffCategoryName")%> </option>
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
                                <select name="dailyWorkerID" id="dailyWorkerID" > 
                                    <option value="">--------Select--------</option>                                 
                                </select>
                            </td>
                        </tr>
                       
                        <tr>
                           <td>Worked Date</td>
                           <td>
                               <input type="date" name="workedDate" requird="" value="<%=workedDate%>" > 
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
                                    <th>Staff</th>
                                    <th>Contact</th>  
                                    <th>Wages</th>  
                                    <th>EDIT</th>
                                    <th>DELETE</th>

                                </tr>
                                <%
                                    
                                   // String SSNstaffID2=session.getAttribute("staffID").toString(); 
                                   // String querySelect="select * from tbl_assigned_worker where staffID='"+SSNstaffID2+"'";
                                    String querySelect3="select "
                                            + "a.*,"
                                            + "b.*,"    
                                            + "c.*"    
                                            + " from "
                                            + "tbl_assigned_worker a," 
                                            + "tbl_daily_workers b," 
                                            + "tbl_staff_category c"
                                            + " WHERE "
                                            + " a.siteID ="+URLsiteID                                           
                                            + " AND "
                                            + " a.dailyWorkerID = b.dailyWorkerID"                                            
                                            + " AND "
                                            + " b.staffCategoryID = c.staffCategoryID"
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
                                    
                                    <td  style="text-align:center; vertical-align:middle;"> 
                                        <img src='..\Staff\DailyWorkers\<%=rs3.getString("b.profilePicture")%>' width="100" height="100" />
                                    </td>
                               
                                    <td>
                                        <table>
                                            <tr>
                                                <td style="align-content: center; width:350px;">
                                                    ID:  <%=rs3.getString("dailyWorkerID")%>/ <%=rs3.getString("firstName")%> 
                                                 </td>
                                            </tr>
                                             <tr>
                                                <td style="align-content: center; width:350px;">
                                                    Type:  <%=rs3.getString("staffCategoryName")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center">
                                                   Aadar Number: <%=rs3.getString("aadarNumber")%>
                                                </td>    
                                            </tr>
                                             <tr>
                                                <td style="align-content: center">
                                                   Postbox: <%=rs3.getString("postbox")%>
                                                </td>    
                                            </tr>
                                        </table>   
                                    </td>
                                    <td>
                                        <table>
                                            <tr>
                                                <td style="align-content: center; width:350px;">
                                                    Contact Number:  <%=rs3.getString("contactNumber")%>
                                                 </td>
                                            </tr>
                                             <tr>
                                                <td style="align-content: center; width:350px;">
                                                   Mobile Number:  <%=rs3.getString("mobileNumber")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center">
                                                   E-Mail: <%=rs3.getString("email")%>
                                                </td>    
                                            </tr>
                                             <tr>
                                                <td style="align-content: center">
                                                    Assigned Date: <%=rs3.getString("workedDate")%>
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
                                    <td  style="width: 80px; vertical-align: middle"> <center><a href="AssignWorker.jsp?eid=<%=rs3.getString("a.assignedWorkerID")%>&siteID=<%=URLsiteID%>"><img src="../TemplateStyleFiles/EditIcon.png" height="30px" width="30px"></a></td>
                                    <td  style="width: 80px; vertical-align: middle"> <center><a href="AssignWorker.jsp?did=<%=rs3.getString("a.assignedWorkerID")%>&siteID=<%=URLsiteID%>"><img src="../TemplateStyleFiles/DeleteIcon.png" height="30px" width="30px"></a></td>
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