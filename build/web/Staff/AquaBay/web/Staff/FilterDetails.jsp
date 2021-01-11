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
        <%
        //String SSNstaffID=session.getAttribute("staffID").toString();   
        String URLfilterID=request.getParameter("filterID");
        
        String eid=request.getParameter("eid");   
        String did=request.getParameter("did");    
        String hid="";
         
        String filterID = "";
        String filterCategoryID = "";
        String filterCategoryName ="";
        String filterName = "";
        String actualRate = "";
        String sellingRate = "";
        String capasity = "";
        String discription = "";
        String status = "";
            
        String GetURLVal1 = request.getParameter("URLVal1");
        
        if(request.getParameter("did")!=null)  
        {           
            String queryDelete="delete from tbl_filter_details where filterID="+did;
            boolean result=obj.executeCommand(queryDelete);
            if(result)
            {
                out.print("<script>alert('Deleted')</script>");
            }
            else
            {
                out.print("<script>alert('Not Deleted')</script>");
            }
            response.sendRedirect("FilterDetails.jsp?filterID="+URLfilterID);
        }
        
        if (eid != null)
        {   
            hid=request.getParameter("hid");
            String querySelect="select * from tbl_filter_details where filterID="+eid;
            System.out.print("EDIT: eid="+eid);
            ResultSet rs=obj.select(querySelect);                
            if(rs.next())
            {
                filterCategoryID =rs.getString("filterCategoryID");
                filterName =rs.getString("filterName");
                actualRate =rs.getString("actualRate");
                sellingRate =rs.getString("sellingRate");
                capasity =rs.getString("capasity");
                discription =rs.getString("discription"); 
            } 
            System.out.println(discription);
        }
        if (request.getParameter("B_Submit")!=null)
        {               
            filterCategoryID =request.getParameter("comboMainCategory");
            filterName =request.getParameter("filterName");
            actualRate =request.getParameter("actualRate");
            sellingRate =request.getParameter("sellingRate");
            capasity =request.getParameter("capasity");
            discription =request.getParameter("discription");
           
            String values1="'"+filterCategoryID 
            +"','"+filterName
            +"','"+actualRate
            +"','"+sellingRate
            +"','"+capasity
            +"','"+discription
            +"'";
        
            if (request.getParameter("eid") != null)
            {
                
                String values2="filterCategoryID='"+filterCategoryID
                + "',filterName='" +filterName
                + "',actualRate='" +actualRate
                + "',sellingRate='" +sellingRate
                + "',capasity='" +capasity
                + "',discription='" +discription
                +"'";         
                String queryUpadate = "update tbl_filter_details set "+values2+ " where filterID=" + eid;  //EDIT
                System.out.print(queryUpadate);
                obj.executeCommand(queryUpadate);
            } 
            else  
            {                    
                String columns= "filterCategoryID, filterName, actualRate, sellingRate, capasity, discription";
                String queryInsert="insert into tbl_filter_details("+columns+") values ("+values1+")";
                System.out.print(queryInsert);
                obj.executeCommand(queryInsert); 
            }
            response.sendRedirect("FilterDetails.jsp?filterID="+URLfilterID);
        }
               
        %>
     <form  method="post"> 
        <table class="one" >
            <div align="center" >     
            <table class="Content_Table">
                <caption>
                         <h2> Filter Details  </h2>
                </caption>  
                
                       <tr>
                           <td>
                               Filter Type
                           </td>
                           <td>
                                <select name="comboMainCategory" >   
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
                               Filter Name
                            </td>
                            <td>
                               <input type="text" name="filterName" requird="" value="<%=filterName%>"> 
                            </td> 
                        </tr>
                        <tr>
                            <td>
                                Actual Rate
                            </td>
                            <td>
                                <input type="text" name="actualRate" requird="" value="<%=actualRate%>" > 
                            </td>
                        </tr> 

                       <tr><td>Selling Rate</td>
                           <td>
                               <input type="text"name="sellingRate"  value="<%=sellingRate%>">
                                   </td></tr>

                       <tr><td>capasity</td>
                           <td>
                                  <input type="text" name="capasity" requird="" value="<%=capasity%>">  </td></tr>   

                       <tr><td>Filter Description</td>
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
                         <h2>Filter Details </h2>
                     </caption>     
                                <tr>
                                   <th>ID</th>                                   
                                    <th>Filter Details</th>
                                    <th>Other Details</th>  
                                    <th>Amount</th>  
                                    <th>EDIT</th>
                                    <th>DELETE</th>

                                </tr>
                                <%
                                    
                               
                                String querySelect="select a.*,"
                                + "b.*"                                         
                                + " from "
                                + "tbl_filter_details a,"
                                + "tbl_filter_category b"
                                + " WHERE "
                                + "  a.filterCategoryID = b.filterCategoryID";

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
                                                    Filter ID:  <%=rs.getString("a.filterID")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center; width:350px;">
                                                    Filter:  <%=rs.getString("a.filterName")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center">
                                                    Type: <%=rs.getString("b.filterCategoryName")%>
                                                </td>    
                                            </tr>
                                            
                                        </table>   
                                    </td>
                                    <td>
                                        <table>
                                            <tr>
                                                <td style="align-content: center">
                                                    Date: <%=rs.getString("a.actualRate")%>
                                                </td>    
                                            </tr> 
                                             <tr>
                                                <td style="align-content: center">
                                                    Responsible For: <%=rs.getString("sellingRate")%>
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
                                        <div style="font-size: 20px;"> <font color="#0847a8">  RS:  <%=rs.getString("a.capasity")%>
                                    </td>
                                    <td  style="width: 80px;"><a href="FilterDetails.jsp?eid=<%=rs.getString("a.filterID")%>&filterID=<%=URLfilterID%>"><img src="../TemplateStyleFiles/EditIcon.png" height="30px" width="30px"></a></td>
                                    <td  style="width: 80px;"><a href="FilterDetails.jsp?did=<%=rs.getString("a.filterID")%>&filterID=<%=URLfilterID%>"><img src="../TemplateStyleFiles/DeleteIcon.png" height="30px" width="30px"></a></td>
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