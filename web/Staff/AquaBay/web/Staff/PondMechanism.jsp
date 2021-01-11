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
                String URLpondMechanismID=request.getParameter("URLpondMechanismID");  
                String hid="";
                
                String pondMechanismID = "";               
                String pondMechanismName = "";              
                String costOfMakingMechanism = "";
                String discription = "";
                
                //String GetURLVal1 = request.getParameter("URLVal1");

                if(request.getParameter("URLpondMechanismID")!=null)  
                {           
                    String queryDelete="delete from tbl_pond_mechanism_details where pondMechanismID="+URLpondMechanismID;
                    boolean result=obj.executeCommand(queryDelete);
                    if(result)
                    {
                        out.print("<script>alert('Deleted')</script>");
                    }
                    else
                    {
                        out.print("<script>alert('Not Deleted')</script>");
                    }
                    response.sendRedirect("PondMechanism.jsp");
                }

                if (URLpondMechanismID != null)
                {   
                    hid=request.getParameter("hid");
                    String querySelect="select * from tbl_pond_mechanism_details where pondMechanismID="+URLpondMechanismID;
                    System.out.print("EDIT: URLpondMechanismID="+URLpondMechanismID);
                    ResultSet rs=obj.select(querySelect);                
                    if(rs.next())
                    {
                       
                        pondMechanismName =rs.getString("pondMechanismName");
                        costOfMakingMechanism =rs.getString("costOfMakingMechanism");
                        discription =rs.getString("discription"); 
                    } 
                    System.out.println(discription);
                }
                if (request.getParameter("B_Submit")!=null)
                {               
                    pondMechanismName =request.getParameter("pondMechanismName");
                    costOfMakingMechanism =request.getParameter("costOfMakingMechanism");
                    discription =request.getParameter("discription");

                    String values1="'"+pondMechanismName 
                    +"','"+costOfMakingMechanism 
                    +"','"+discription
                    +"'";

                    if (request.getParameter("URLpondMechanismID") != null)
                    {

                        String values2="pondMechanismName='"+pondMechanismName
                        + "',costOfMakingMechanism='" +costOfMakingMechanism        
                        + "',discription='" +discription
                        +"'";         
                        String queryUpadate = "update tbl_pond_mechanism_details set "+values2+ " where pondMechanismID=" + URLpondMechanismID; 
                        System.out.print(queryUpadate);
                        obj.executeCommand(queryUpadate);
                    } 
                    else  
                    {                    
                        String columns= "pondMechanismName, costOfMakingMechanism,  discription";
                        String queryInsert="insert into tbl_pond_mechanism_details("+columns+") values ("+values1+")";
                        System.out.print(queryInsert);
                        obj.executeCommand(queryInsert); 
                    }
                    response.sendRedirect("PondMechanism.jsp");
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
                                       <input type="text" name="pondMechanismName" requird="" value="<%=pondMechanismName%>"> 
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
                                        <input type="hidden" name="hid" value="<%=URLpondMechanismID%>"
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
                                + "tbl_pond_mechanism_details";
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
                                                    Pond Mechanism ID:  <%=rs.getString("pondMechanismID")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center; width:350px;">
                                                    Mechanism Name:  <%=rs.getString("pondMechanismName")%>
                                                 </td>
                                            </tr>


                                        </table>   
                                    </td>

                                    <td style="vertical-align: middle">
                                        <div style="font-size: 20px;"> <font color="#0847a8">  RS:  <%=rs.getString("costOfMakingMechanism")%>
                                    </td>
                                    <td  style="width: 80px;"><center><a href="PondMechanism.jsp?URLpondMechanismID=<%=rs.getString("pondMechanismID")%>"><img src="../TemplateStyleFiles/EditIcon.png" height="30px" width="30px"></a></td>
                                    <td  style="width: 80px;"><center><a href="PondMechanism.jsp?URLpondMechanismID=<%=rs.getString("pondMechanismID")%>"><img src="../TemplateStyleFiles/DeleteIcon.png" height="30px" width="30px"></a></td>
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