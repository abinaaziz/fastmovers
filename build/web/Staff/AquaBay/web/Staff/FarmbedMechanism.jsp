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
                String URLfarmbedMechanismID=request.getParameter("URLfarmbedMechanismID");  
                String hid="";
                
                String farmbedMechanismID = "";               
                String farmbedMechanismName = "";              
                String costOfMakingMechanism = "";
                String discription = "";
                
                //String GetURLVal1 = request.getParameter("URLVal1");

                if(request.getParameter("URLfarmbedMechanismID")!=null)  
                {           
                    String queryDelete="delete from tbl_farmbed_mechanism_details where farmbedMechanismID="+URLfarmbedMechanismID;
                    boolean result=obj.executeCommand(queryDelete);
                    if(result)
                    {
                        out.print("<script>alert('Deleted')</script>");
                    }
                    else
                    {
                        out.print("<script>alert('Not Deleted')</script>");
                    }
                    response.sendRedirect("FarmbedMechanism.jsp");
                }

                if (URLfarmbedMechanismID != null)
                {   
                    hid=request.getParameter("hid");
                    String querySelect="select * from tbl_farmbed_mechanism_details where farmbedMechanismID="+URLfarmbedMechanismID;
                    System.out.print("EDIT: URLfarmbedMechanismID="+URLfarmbedMechanismID);
                    ResultSet rs=obj.select(querySelect);                
                    if(rs.next())
                    {
                       
                        farmbedMechanismName =rs.getString("farmbedMechanismName");
                        costOfMakingMechanism =rs.getString("costOfMakingMechanism");
                        discription =rs.getString("discription"); 
                    } 
                    System.out.println(discription);
                }
                if (request.getParameter("B_Submit")!=null)
                {               
                    farmbedMechanismName =request.getParameter("farmbedMechanismName");
                    costOfMakingMechanism =request.getParameter("costOfMakingMechanism");
                    discription =request.getParameter("discription");

                    String values1="'"+farmbedMechanismName 
                    +"','"+costOfMakingMechanism 
                    +"','"+discription
                    +"'";

                    if (request.getParameter("URLfarmbedMechanismID") != null)
                    {

                        String values2="farmbedMechanismName='"+farmbedMechanismName
                        + "',costOfMakingMechanism='" +costOfMakingMechanism        
                        + "',discription='" +discription
                        +"'";         
                        String queryUpadate = "update tbl_farmbed_mechanism_details set "+values2+ " where farmbedMechanismID=" + URLfarmbedMechanismID; 
                        System.out.print(queryUpadate);
                        obj.executeCommand(queryUpadate);
                    } 
                    else  
                    {                    
                        String columns= "farmbedMechanismName, costOfMakingMechanism,  discription";
                        String queryInsert="insert into tbl_farmbed_mechanism_details("+columns+") values ("+values1+")";
                        System.out.print(queryInsert);
                        obj.executeCommand(queryInsert); 
                    }
                    response.sendRedirect("FarmbedMechanism.jsp");
                }

                %>
                <form  method="post"> 
                <table style="width: 1000px;" border="0">
                    <tr>                        
                        <td>
                            <table class="Content_Table" style="width: 500px;" >
                                <caption>
                                    <h2>Farmbed Mechanism</h2>
                                </caption> 
                               <tr>
                                    <td>
                                       Mechanism Name
                                    </td>
                                    <td>
                                       <input type="text" name="farmbedMechanismName" requird="" value="<%=farmbedMechanismName%>"> 
                                    </td> 
                                </tr>

                                <tr><td> Cost Of Making 1 Square Feet</td>
                                   <td>
                                       <input type="text"name="costOfMakingMechanism"  value="<%=costOfMakingMechanism%>">

                                    </td>
                                </tr>

                                <tr>
                                   <td>Mechanism Details</td>
                                   <td>
                                        <textarea name="discription" requird=""    value="<%=discription%>"><%=discription%>Nil</textarea> 
                                        <input type="hidden" name="hid" value="<%=URLfarmbedMechanismID%>"
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
                                    <img src="../TemplateStyleFiles/RT1.jpg" height="265px" width="450px">
                        
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
                                    <h2>Farmbed Mechanism </h2>
                                </caption>     
                                <tr>
                                   <th>No</th>                                   
                                    <th>Farmbed Mechanism</th>
                                    <th>Cost Per Sqrft</th>  
                                    <th>EDIT</th>
                                    <th>DELETE</th>
                                </tr>
                                <%
                                String querySelect="select *"                                                                
                                + " from "
                                + "tbl_farmbed_mechanism_details";
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
                                                    Farmbed Mechanism ID:  <%=rs.getString("farmbedMechanismID")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center; width:350px;">
                                                    Mechanism Name:  <%=rs.getString("farmbedMechanismName")%>
                                                 </td>
                                            </tr>


                                        </table>   
                                    </td>

                                    <td style="vertical-align: middle">
                                        <div style="font-size: 20px;"> <font color="#0847a8">  RS:  <%=rs.getString("costOfMakingMechanism")%>
                                    </td>
                                    <td  style="width: 80px;"><center><a href="FarmbedMechanism.jsp?URLfarmbedMechanismID=<%=rs.getString("farmbedMechanismID")%>"><img src="../TemplateStyleFiles/EditIcon.png" height="30px" width="30px"></a></td>
                                    <td  style="width: 80px;"><center><a href="FarmbedMechanism.jsp?URLfarmbedMechanismID=<%=rs.getString("farmbedMechanismID")%>"><img src="../TemplateStyleFiles/DeleteIcon.png" height="30px" width="30px"></a></td>
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