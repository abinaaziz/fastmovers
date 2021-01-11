
<%@include file="AdminHomeHeader.jsp" %>

<div class="div_login">
<div class="div_Heading" >
<p class="align_center_p"></p>
</div>
    
<table class="Round_corner_Form_Base">
    <tr>
        <td style="vertical-align: middle;">    
            <%@page import="java.sql.ResultSet" %>
            <%@page contentType="text/html" pageEncoding="UTF-8"%>
            <jsp:useBean class="db.DBConnection" id="obj" ></jsp:useBean>
            <!DOCTYPE html>
            <html>
            <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title> </title>
            </head>
            <body>
            <%   
            if(request.getParameter("B_Submit")!=null) 
            {
            String TValue1=request.getParameter("fromDate");
            String TValue2=request.getParameter("toDate");
            response.sendRedirect("StatusBetweenTwoDate.jsp?fromDate="+TValue1+"&toDate="+TValue2);
            }
            %>     
            <form name="Form1" method="POST">             
            <table class="one" >
                <tr>
                    <td>    
                        <div align="center" >        
                        <table class="Content_Table">
                            <caption>
                             SELECT TWO DATES
                            </caption> 
                            <tr>
                                <td>
                                FROM DATE
                                </td>
                                <td>
                                    <input type="date" name="fromDate"  required="" >   
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    TO DATE
                                </td>
                                <td>
                                    <input type="date" name="toDate" value="11/08/2012" required="" >                
                                </td>
                            </tr>
                        <tr>
                            <td >
                                <input type="reset" name="btnreset" value="Reset">   
                            </td>
                           <td >
                                <input type="submit" value="VIEW REPORT" name="B_Submit" />
                            </td>
                        </tr>
                        </table>
                        </div>
                    </td>    
                </tr>        
            </table>    
                
                
                
                
        </td>        
        <td style="vertical-align: top;">
            <!-- Small Slide  STARTS-->
            
            <!-- Small Slide  ENDS-->
        </td>        
        </form>
        </body>
        </html>
    </tr>
</table>
</div>  
<%@include file="AdminHomeFooter.jsp" %>
