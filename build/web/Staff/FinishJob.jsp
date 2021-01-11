<%@include file="StaffHomeHeader.jsp" %>

<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<div class="div_login">
<div class="div_Heading" >
<p class="align_center_p"> Appointment</p>
</div>      
<table class="Round_corner_Form_Base">
    <tr>
        <td rowspan="2">  
            <%@page contentType="text/html" pageEncoding="UTF-8"%>
            <!DOCTYPE html>
            <html>
            <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title> Appointment</title>
            </head>
            <body>     
            <form method="post"> 
            <div align="center" style="padding-top:  50px; font-family: sans-serif; font-size: larger; "  >         
            
             

                <%
                String SSNstaffID=session.getAttribute("staffID").toString();
                String URLsiteID=request.getParameter("siteID");
                String URLpaymentDue=request.getParameter("paymentDue");
                System.out.println(" URLpaymentDue : "+URLpaymentDue);
                
                DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
                String currentDate = df.format(new Date());
                String SSNuserID=session.getAttribute("userID").toString(); 
        
                if( Float.parseFloat(URLpaymentDue)<=0.0F  )
                {
                String queryUpadate="update tbl_site_register"
                + " set "
                + "finishedDate='"+currentDate+"', status='3' where siteID="+URLsiteID;
                obj.executeCommand(queryUpadate);
                %>
                    <table  style=" border-collapse: collapse; width: 1000px;  overflow: scroll;">
                        <caption>
                            <h2>Site Finish Status</h2>
                        </caption> 
                            <tr>
                               <th>
                                <center>  <div style="font-size: 20px;"> <font color="red"> The Shifting is Finished 
                            </th>  
                        </tr>
                        <tr>  
                            <th>
                                <center> 
                                    <a href="StaffHomePage.jsp">
                                        <img src="../TemplateStyleFiles/GoHome.png" height="60px" width="200px"/>
                                    </a>
                                </center>        
                            </th> 
                        </tr>
                    </table>
                <%
                }               
                else
                { 
                %>
                    <table  style=" border-collapse: collapse; width: 1000px;  overflow: scroll;">
                        <caption>
                            <h2>Site Finish Status</h2>
                        </caption> 
                            <tr>
                               <th>
                                <center>  <div style="font-size: 20px;"> <font color="red">There is amount is Pending  <font color="Black"> RS: <%=URLpaymentDue%> <font color="red">, So Can't Finish The Site 
                            </th>  
                        </tr>
                        <tr>  
                            <th>
                                <center> 
                                    <a href="StaffHomePage.jsp">
                                        <img src="../TemplateStyleFiles/GoHome.png" height="60px" width="200px"/>
                                    </a>
                                </center>        
                            </th> 
                        </tr>
                    </table>
                <%
                }
                %>            
            </div>              
            </form>
            </body>
            </html>        
        </td>
    </tr>
</table>
</div>    
<%@include file="StaffHomeFooter.jsp" %>
