<!-- HEADER  STARTS-->
<%@include file="StaffHomeHeader.jsp" %>

<div class="div_Heading" >
    <p class="align_center_p"></p>
</div>    
    <table class="Round_corner_Form_Base">
        <tr>
            <td style="vertical-align: top;"> 
            <!DOCTYPE html>
            <html>
            <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title></title>
            </head>
            <body>
                <%
                //String SSNstaffID=session.getAttribute("staffID").toString();   
                //String URLsiteID=request.getParameter("siteID");
                String URLsecondaryLayerID="";
                URLsecondaryLayerID=request.getParameter("URLsecondaryLayerID");  
                 String hid="";
                String secondaryLayerID = "";               
                String secondaryLayerName = "";              
                String costOfMakingSecondaryLayer = "";
                String discription = "";
             
                if(request.getParameter("URLsecondaryLayerID")!=null)  
                {           
                    String queryDelete="delete from tbl_secondary_layer_details where secondaryLayerID="+URLsecondaryLayerID;
                    boolean result=obj.executeCommand(queryDelete);
                    if(result)
                    {
                        out.print("<script>alert('Deleted')</script>");
                    }
                    else
                    {
                        out.print("<script>alert('Not Deleted')</script>");
                    }
                    response.sendRedirect("SecondaryLayer.jsp");
                }

                if (URLsecondaryLayerID != null)
                {   
                     hid=request.getParameter("hid");
                    String querySelect="select * from tbl_secondary_layer_details where secondaryLayerID="+URLsecondaryLayerID;
                    System.out.print("EDIT: URLsecondaryLayerID="+URLsecondaryLayerID);
                    ResultSet rs=obj.select(querySelect);                
                    if(rs.next())
                    {
                       
                        secondaryLayerName =rs.getString("secondaryLayerName");
                        costOfMakingSecondaryLayer =rs.getString("costOfMakingSecondaryLayer");
                        discription =rs.getString("discription"); 
                    } 
                    System.out.println(discription);
                }
                if (request.getParameter("B_Submit")!=null)
                {               
                    secondaryLayerName =request.getParameter("secondaryLayerName");
                    costOfMakingSecondaryLayer =request.getParameter("costOfMakingSecondaryLayer");
                    discription =request.getParameter("discription");

                    String values1="'"+secondaryLayerName 
                    +"','"+costOfMakingSecondaryLayer 
                    +"','"+discription
                    +"'";

                    if (request.getParameter("URLsecondaryLayerID") != null)
                    {

                        String values2="secondaryLayerName='"+secondaryLayerName
                        + "',costOfMakingSecondaryLayer='" +costOfMakingSecondaryLayer        
                        + "',discription='" +discription
                        +"'";         
                        String queryUpadate = "update tbl_secondary_layer_details set "+values2+ " where secondaryLayerID=" + URLsecondaryLayerID; 
                        System.out.print(queryUpadate);
                        obj.executeCommand(queryUpadate);
                    } 
                    else  
                    {                    
                        String columns= "secondaryLayerName, costOfMakingSecondaryLayer,  discription";
                        String queryInsert="insert into tbl_secondary_layer_details("+columns+") values ("+values1+")";
                        System.out.print(queryInsert);
                        obj.executeCommand(queryInsert); 
                    }
                    response.sendRedirect("SecondaryLayer.jsp");
                }

                %>
                <form  method="post"> 
                <table style="width: 1000px;" border="0">
                    <tr>                        
                        <td>
                            <table class="Content_Table" style="width: 500px;" >
                                <caption>
                                         <h2>Pond Mechanism</h2>
                                </caption> 
                               <tr>
                                    <td>
                                       Mechanism Name
                                    </td>
                                    <td>
                                       <input type="text" name="secondaryLayerName" requird="" value="<%=secondaryLayerName%>"> 
                                    </td> 
                                </tr>

                                <tr><td> Cost Of Making 1 Square Feet</td>
                                   <td>
                                       <input type="text"name="costOfMakingSecondaryLayer"  value="<%=costOfMakingSecondaryLayer%>">

                                    </td>
                                </tr>

                                <tr>
                                   <td>Mechanism Details</td>
                                   <td>
                                        <textarea name="discription" requird=""    value="<%=discription%>"><%=discription%>Nil</textarea> 
                                        <input type="hidden" name="hid" value="<%=URLsecondaryLayerID%>"
                                   </td>
                                </tr>
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
                            <table  style="width: 450px;" >
                                <tr>
                                   <td>
                                    <img src="../TemplateStyleFiles/RT2.jpg" height="265px" width="450px">
                        
                                   </td>
                                </tr>
                            </table>
                        </td>    
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div align="center" >         
                            <table class="Content_Table" border="1" style="width: 1000px;" >
                                <caption>
                                    <h2>Pond Mechanism </h2>
                                </caption>     
                                <tr>
                                   <th>No</th>                                   
                                    <th>Pond Mechanism</th>
                                    <th>Cost Per Sqrft</th>  
                                    <th>EDIT</th>
                                    <th>DELETE</th>
                                </tr>
                                <%
                                String querySelect="select *"                                                                
                                + " from "
                                + "tbl_secondary_layer_details";
                                ResultSet rs=obj.select(querySelect);
                                System.out.println("querySelect : "+querySelect);
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
                                                    Pond Mechanism ID:  <%=rs.getString("secondaryLayerID")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center; width:350px;">
                                                    Mechanism Name:  <%=rs.getString("secondaryLayerName")%>
                                                 </td>
                                            </tr>


                                        </table>   
                                    </td>

                                    <td style="vertical-align: middle">
                                        <div style="font-size: 20px;"> <font color="#0847a8">  RS:  <%=rs.getString("costOfMakingSecondaryLayer")%>
                                    </td>
                                    <td  style="width: 80px;"><center><a href="SecondaryLayer.jsp?URLsecondaryLayerID=<%=rs.getString("secondaryLayerID")%>"><img src="../TemplateStyleFiles/EditIcon.png" height="30px" width="30px"></a></td>
                                    <td  style="width: 80px;"><center><a href="SecondaryLayer.jsp?URLsecondaryLayerID=<%=rs.getString("secondaryLayerID")%>"><img src="../TemplateStyleFiles/DeleteIcon.png" height="30px" width="30px"></a></td>
                                </tr>
                                <%
                                   }
                                %>
                            </table>
                            </div>              
                        </td>
                    </tr>  
                </table>    
                </form>
                </body>
                </html>        
                <!-- FOOTER  STARTS-->
            </td>
        </tr>
    </table>
<%@include file="StaffHomeFooter.jsp" %>
<!-- FOOTER  ENDS-->