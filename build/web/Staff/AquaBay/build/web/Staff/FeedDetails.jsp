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
        String URLfeedID=request.getParameter("feedID");
        
        String eid=request.getParameter("eid");   
        String did=request.getParameter("did");    
        String hid="";
         
        String feedID = "";        
        String feedName = "";
        String actualRate = "";
        String sellingRate = "";
        String weight = "";
        String discription = "";
        String status = "";
            
        String GetURLVal1 = request.getParameter("URLVal1");
        
        if(request.getParameter("did")!=null)  
        {           
            String queryDelete="delete from tbl_feed_details where feedID="+did;
            boolean result=obj.executeCommand(queryDelete);
            if(result)
            {
                out.print("<script>alert('Deleted')</script>");
            }
            else
            {
                out.print("<script>alert('Not Deleted')</script>");
            }
            response.sendRedirect("FeedDetails.jsp?feedID="+URLfeedID);
        }
        
        if (eid != null)
        {   
            hid=request.getParameter("hid");
            String querySelect="select * from tbl_feed_details where feedID="+eid;
            System.out.print("EDIT: eid="+eid);
            ResultSet rs=obj.select(querySelect);                
            if(rs.next())
            { 
                feedName =rs.getString("feedName");
                actualRate =rs.getString("actualRate");
                sellingRate =rs.getString("sellingRate");
                weight =rs.getString("weight");
                discription =rs.getString("discription"); 
            } 
            System.out.println(discription);
        }
        if (request.getParameter("B_Submit")!=null)
        {               
           
            feedName =request.getParameter("feedName");
            actualRate =request.getParameter("actualRate");
            sellingRate =request.getParameter("sellingRate");
            weight =request.getParameter("weight");
            discription =request.getParameter("discription");
           
            String values1="'"+feedName 
            +"','"+actualRate
            +"','"+sellingRate
            +"','"+weight
            +"','"+discription
            +"'";
        
            if (request.getParameter("eid") != null)
            {
                
                String values2="feedName='"+feedName                
                + "',actualRate='" +actualRate
                + "',sellingRate='" +sellingRate
                + "',weight='" +weight
                + "',discription='" +discription
                +"'";         
                String queryUpadate = "update tbl_feed_details set "+values2+ " where feedID=" + eid;  //EDIT
                System.out.print(queryUpadate);
                obj.executeCommand(queryUpadate);
            } 
            else  
            {                    
                String columns= " feedName, actualRate, sellingRate, weight, discription";
                String queryInsert="insert into tbl_feed_details("+columns+") values ("+values1+")";
                System.out.print(queryInsert);
                obj.executeCommand(queryInsert); 
            }
            response.sendRedirect("FeedDetails.jsp?feedID="+URLfeedID);
        }
               
        %>
    <form  method="post"> 
    <table class="" border="1" >
       <tr>    
           <td>   
               <table class="Content_Table" >
                   <caption>
                            <h2> Feed Details  </h2>
                   </caption>  
                  <tr>
                       <td>
                          Feed Name
                       </td>
                       <td>
                          <input type="text" name="feedName" requird="" value="<%=feedName%>"> 
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

                  <tr><td>weight</td>
                      <td>
                             <input type="text" name="weight" requird="" value="<%=weight%>">  </td></tr>   

                  <tr><td>Feed Description</td>
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

           </td>

           <td style="vertical-align: top;">
               <!-- Small Slide  STARTS-->
               <%@include file="../TemplateStyleFiles/SmallSlideBar.jsp" %>
               <!-- Small Slide  ENDS-->
           </td>
       </tr>
    
        <tr>
            <td colspan="2">
                   
                <table class="Content_Table" border="1" style="width: 1000px">
                     <caption>
                         <h2>Feed Details </h2>
                     </caption>     
                                <tr>
                                   <th>ID</th>                                   
                                    <th>Feed Details</th>
                                    <th>Other Details</th>  
                                    <th>Amount</th>  
                                    <th>EDIT</th>
                                    <th>DELETE</th>

                                </tr>
                                <%
                                    
                               
                                String querySelect="select a.*"    
                                + " from "
                                + "tbl_feed_details a";
                               

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
                                                    Feed ID:  <%=rs.getString("a.feedID")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center; width:350px;">
                                                    Feed:  <%=rs.getString("a.feedName")%>
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
                                                    sellingRate: <%=rs.getString("sellingRate")%>
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
                                        <div style="font-size: 20px;"> <font color="#0847a8">  RS:  <%=rs.getString("a.weight")%>
                                    </td>
                                    <td  style="width: 80px;"><a href="FeedDetails.jsp?eid=<%=rs.getString("a.feedID")%>&feedID=<%=URLfeedID%>"><img src="../TemplateStyleFiles/EditIcon.png" height="30px" width="30px"></a></td>
                                    <td  style="width: 80px;"><a href="FeedDetails.jsp?did=<%=rs.getString("a.feedID")%>&feedID=<%=URLfeedID%>"><img src="../TemplateStyleFiles/DeleteIcon.png" height="30px" width="30px"></a></td>
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