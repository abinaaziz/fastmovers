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
        <title></title>
    </head>
    <body>
        <%
        String SSNstaffID=session.getAttribute("staffID").toString();   
        String URLsiteID=request.getParameter("siteID");
        
        String eid=request.getParameter("eid");   
        String did=request.getParameter("did");    
        String hid="";
         
        String expenceID = "";
        String expenceCategoryID = "";
        String expenceCategoryName ="";
        String expenceName = "";
        String expenceDate = "";
        String expenceMadeBy = "";
        String expenceAmount = "";
        String discription = "";
        String status = "";
            
        String GetURLVal1 = request.getParameter("URLVal1");
        
        if(request.getParameter("did")!=null)  
        {           
            String queryDelete="delete from tbl_expence_details where expenceID="+did;
            boolean result=obj.executeCommand(queryDelete);
            if(result)
            {
                out.print("<script>alert('Deleted')</script>");
            }
            else
            {
                out.print("<script>alert('Not Deleted')</script>");
            }
            response.sendRedirect("ExpenceDetails.jsp?siteID="+URLsiteID);
        }
        
        if (eid != null)
        {   
            hid=request.getParameter("hid");
            String querySelect="select * from tbl_expence_details where expenceID="+eid;
            System.out.print("EDIT: eid="+eid);
            ResultSet rs=obj.select(querySelect);                
            if(rs.next())
            {
                expenceCategoryID =rs.getString("expenceCategoryID");
                expenceName =rs.getString("expenceName");
                expenceDate =rs.getString("expenceDate");
                expenceMadeBy =rs.getString("expenceMadeBy");
                expenceAmount =rs.getString("expenceAmount");
                discription =rs.getString("discription"); 
            } 
            System.out.println(discription);
        }
        if (request.getParameter("B_Submit")!=null)
        {               
            expenceCategoryID =request.getParameter("comboMainCategory");
            expenceName =request.getParameter("expenceName");
            expenceDate =request.getParameter("expenceDate");
            expenceMadeBy =request.getParameter("expenceMadeBy");
            expenceAmount =request.getParameter("expenceAmount");
            discription =request.getParameter("discription");
           
            String values1="'"+expenceCategoryID 
            +"','"+URLsiteID        
            +"','"+expenceName
            +"','"+expenceDate
            +"','"+expenceMadeBy
            +"','"+expenceAmount
            +"','"+discription
            +"'";
        
            if (request.getParameter("eid") != null)
            {
                
                String values2="expenceCategoryID='"+expenceCategoryID
                + "',siteID='" +URLsiteID        
                + "',expenceName='" +expenceName
                + "',expenceDate='" +expenceDate
                + "',expenceMadeBy='" +expenceMadeBy
                + "',expenceAmount='" +expenceAmount
                + "',discription='" +discription
                +"'";         
                String queryUpadate = "update tbl_expence_details set "+values2+ " where expenceID=" + eid;  //EDIT
                System.out.print(queryUpadate);
                obj.executeCommand(queryUpadate);
            } 
            else  
            {                    
                String columns= "expenceCategoryID,siteID, expenceName, expenceDate, expenceMadeBy, expenceAmount, discription";
                String queryInsert="insert into tbl_expence_details("+columns+") values ("+values1+")";
                System.out.print(queryInsert);
                obj.executeCommand(queryInsert); 
            }
            response.sendRedirect("ExpenceDetails.jsp?siteID="+URLsiteID);
        }
               
        %>
     <form  method="post"> 
        <table class="one" >
            <div align="center" >     
            <table class="Content_Table">
                <caption>
                         <h2> Expense Voucher Entry  </h2>
                </caption>  
                
                       <tr>
                           <td>
                               Expense Type
                           </td>
                           <td>
                                <select name="comboMainCategory" >   
                                <option value="Nil">-------------Select-------------</option> 
                               
                                <%  //VALUE ADDING TO COMBO BOX
                                String querySelect2 = "select * from tbl_expence_category "; 
                                ResultSet rs2 = obj.select(querySelect2);
                                System.out.print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+querySelect2);
                                while (rs2.next()) 
                                {                                                
                                %>
                                <option value="<%=rs2.getString("expenceCategoryID")%>"     
                                <%if(expenceCategoryID.equals(rs2.getString("expenceCategoryID")))
                                 {
                                %>
                                    selected="selected"
                                <%}%> >

                                <%=rs2.getString("expenceCategoryName")%> </option>
                                <%
                                }
                                %>

                                </select> 
                           </td>
                       </tr>  

                       <tr>
                            <td>
                               Expense Name
                            </td>
                            <td>
                               <input type="text" name="expenceName" requird="" value="<%=expenceName%>"> 
                            </td> 
                        </tr>
                        <tr>
                            <td>
                                Expense Date
                            </td>
                            <td>
                                <input type="date" name="expenceDate" requird="" value="<%=expenceDate%>" > 
                            </td>
                        </tr> 

                       <tr><td>Expense Made By</td>
                           <td>
                               <input type="text"name="expenceMadeBy"  value="<%=expenceMadeBy%>">
                                   </td></tr>

                       <tr><td>Expense Amount</td>
                           <td>
                                  <input type="text" name="expenceAmount" requird="" value="<%=expenceAmount%>">  </td></tr>   

                       <tr><td>Expense Details</td>
                           <td>
                                <textarea name="discription" requird=""    value="<%=discription%>"><%=discription%>Nil</textarea> 
                                <input type="hidden" name="hid" value="<%=eid%>"
                           </td></tr>

                       <tr>
                            <td> 
                                <input type="reset" value="Reset" name="buttonReset" >
                            </td>
                            <td >
                                 <center>    <input class="btn btn-primary" type="submit" value="Submit" name="B_Submit" >
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
                         <h2>Expense Details </h2>
                     </caption>     
                                <tr>
                                   <th>ID</th>                                   
                                    <th>Expense Details</th>
                                    <th>Other Details</th>  
                                    <th>Amount</th>  
                                    <th>EDIT</th>
                                    <th>DELETE</th>

                                </tr>
                                <%
                                    
                               
                                String querySelect="select a.*,"
                                + "b.*"                                         
                                + " from "
                                + "tbl_expence_details a,"
                                + "tbl_expence_category b"
                                + " WHERE "
                                + " a.siteID ="+URLsiteID                                           
                                + " AND "        
                                + "  a.expenceCategoryID = b.expenceCategoryID";

                                ResultSet rs=obj.select(querySelect);
                                //System.out.println("File upload file is strt invoking 2:-querySelect"+querySelect);
                                int count=0;
                                while(rs.next())
                                {
                                count++; 
                                %>
                                
                                <tr>
                                    <td align="center" style="vertical-align: middle">
                                         <%=count%>
                                    </td>                                    
                                    <td>
                                        <table>
                                            <tr>
                                                <td style="align-content: center; width:350px;">
                                                    Expense ID:  <%=rs.getString("a.expenceID")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center; width:350px;">
                                                    Expense:  <%=rs.getString("a.expenceName")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center">
                                                    Type: <%=rs.getString("b.expenceCategoryName")%>
                                                </td>    
                                            </tr>
                                            
                                        </table>   
                                    </td>
                                    <td>
                                        <table>
                                            <tr>
                                                <td style="align-content: center">
                                                    Date: <%=rs.getString("a.expenceDate")%>
                                                </td>    
                                            </tr> 
                                             <tr>
                                                <td style="align-content: center">
                                                    Responsible For: <%=rs.getString("expenceMadeBy")%>
                                                </td>    
                                            </tr>
                                             <tr>
                                                <td style="align-content: center">
                                                    <%=rs.getString("a.discription")%>
                                                </td>    
                                            </tr>
                                            
                                        </table>    
                                   
                                    </td>                                     
                                    <td style="vertical-align: middle">
                                        <div style="font-size: 20px;"> <font color="#0847a8">  RS:  <%=rs.getString("a.expenceAmount")%>
                                    </td>
                                    <td  style="width: 80px;"><a href="ExpenceDetails.jsp?eid=<%=rs.getString("a.expenceID")%>&siteID=<%=URLsiteID%>"><img src="../TemplateStyleFiles/EditIcon.png" height="30px" width="30px"></a></td>
                                    <td  style="width: 80px;"><a href="ExpenceDetails.jsp?did=<%=rs.getString("a.expenceID")%>&siteID=<%=URLsiteID%>"><img src="../TemplateStyleFiles/DeleteIcon.png" height="30px" width="30px"></a></td>
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