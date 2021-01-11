<!-- HEADER  STARTS-->
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.DBConnection" id="obj" ></jsp:useBean>
    
<%@include file="AdminHomeHeader.jsp" %>

<div class="div_login">
<table class="Round_corner_Form_Base" >
    <tr>
        <td >   
            <!DOCTYPE html>
            <html>
            <head>        
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title></title>
            </head>
            <body class="backgroungPicture4">
            <%
            String URLfromDate=request.getParameter("fromDate");
            String URLtoDate=request.getParameter("toDate");
            String siteID="";     
            String userID="";
            %>            
            <form  method="post" name="form1" action="#" onsubmit="required()"> 
                <% 
                String querySelect100="SELECT "
                + "a.*,"
                + "b.*,"
                + "c.*,"  
                + "d.*," 
                + "e.*"        
                + " FROM "
                + "tbl_site_register a,"        
                + "tbl_buildingcategory b,"
                + "tbl_state c,"
                + "tbl_district d,"
                + "tbl_user_details e"
                + " WHERE "                                       
                + "a.buildingCategoryID =b.buildingCategoryID"
                + " AND "
                + "a.moveFromStateID=c.stateID"                                     
                + " AND "
                + "a.moveFromDistrictID=d.districtID"   
                + " AND "    
                + "a.status=3"        
                ;  
                ResultSet rs100=obj.select(querySelect100);
                System.out.println(" QquerySelect?????????????????? : "+querySelect100);
                while(rs100.next())
                {
                    siteID= rs100.getString("siteID");
                    userID=rs100.getString("userID");
                %>
                <table border="1" style='width: 1000px;'>
                <caption>
                    <h2> Status</h2>
                </caption> 
                    <tr>
                        <td>
                            <table border="1" style='width: 400px;'>
                                <caption>
                                <h2> Approximate Charges</h2>
                                </caption> 
                                <tr>
                                    <td>                       
                        
                                    <% 
                                    String querySelect0="select "
                                    + "a.*,"
                                    + "b.*"                                                  
                                    + " from "
                                    + "tbl_item a,"
                                    + "tbl_thingscategory b"
                                    + " WHERE "
                                    + "a.siteID="+siteID
                                    +" AND "     
                                    + "a.thingsCategoryID=b.thingsCategoryID"                      
                                    ;

                                    ResultSet rs0=obj.select(querySelect0);
                                    System.out.println("querySelect6   "+querySelect0);
                                    int count0=0;
                                    float totalServiceCharge=0.0F;               
                                    while(rs0.next())
                                    {
                                    count0++; 
                                    totalServiceCharge=totalServiceCharge+(  Float.parseFloat(rs0.getString("count"))*Float.parseFloat(rs0.getString("thingsServiceCharge")) );
                                    }

                                    String querySelect3="select "
                                    + "a.*,"
                                    + "b.*,"    
                                    + "c.*"    
                                    + " from "
                                    + "tbl_assigned_worker a," 
                                    + "tbl_daily_workers b," 
                                    + "tbl_staff_category c"
                                    + " WHERE "
                                    + "a.siteID="+siteID
                                    + " AND "        
                                    + " a.dailyWorkerID = b.dailyWorkerID"
                                    + " AND "
                                    + " b.staffCategoryID = c.staffCategoryID"
                                    + "";

                                    ResultSet rs3=obj.select(querySelect3);
                                    System.out.println("querySelect 3"+querySelect3);
                                    int count8=0;
                                    float totalActualWages=0.0F;
                                    float totalCommission=0.0F;
                                    float totalWages=0.0F;
                                    while(rs3.next())
                                    {
                                    count8++; 
                                    totalActualWages=totalActualWages+Float.parseFloat(rs3.getString("dailyWages"));
                                    totalCommission=totalCommission+Float.parseFloat(rs3.getString("commission"));                
                                    totalWages=totalWages+(totalActualWages+totalCommission);
                                    }   

                                    String querySelect4="select "
                                    + "a.*,"
                                    + "b.*,"    
                                    + "c.*"    
                                    + " from "
                                    + "tbl_assigned_vehicle a," 
                                    + "tbl_vehicle_details b," 
                                    + "tbl_vehicle_category c"
                                    + " WHERE "
                                    + "a.siteID="+siteID
                                    + " AND "        
                                    + " a.vehicleID = b.vehicleID"
                                    + " AND "
                                    + " b.vehicleCategoryID = c.vehicleCategoryID"
                                    + "";

                                    ResultSet rs4=obj.select(querySelect4);
                                    System.out.println("querySelect4   "+querySelect4);
                                    int count2=0;
                                    float totalActualPerKM=0.0F;
                                    float totalProfitShare=0.0F;
                                    float totalFare=0.0F;
                                    while(rs4.next())
                                    {
                                    count2++; 
                                    totalActualPerKM=totalActualPerKM+(   Float.parseFloat(rs4.getString("perKmCharge"))*Float.parseFloat(rs4.getString("totalDistance"))  );
                                    totalProfitShare=totalProfitShare+(    Float.parseFloat(rs4.getString("commission"))*Float.parseFloat(rs4.getString("totalDistance"))   );            
                                    totalFare=totalFare+(totalActualPerKM+totalProfitShare);                               
                                    }            

                                    String querySelect5="select a.*,"
                                    + "b.*"                                         
                                    + " from "
                                    + "tbl_expence_details a,"
                                    + "tbl_expence_category b"
                                    + " WHERE "
                                    + "a.siteID="+siteID
                                    + " AND "        
                                    + "  a.expenceCategoryID = b.expenceCategoryID";

                                    ResultSet rs5=obj.select(querySelect5);
                                    System.out.println("querySelect5   "+querySelect5);
                                    int count3=0;
                                    float totalExpenses=0.0F;               
                                    while(rs5.next())
                                    {
                                    count3++; 
                                    totalExpenses=totalExpenses+(   Float.parseFloat(rs5.getString("expenceAmount"))  );   
                                    }            

                                    String querySelect6="select "
                                    + "a.*"                                                  
                                    + " from "
                                    + "tbl_payments a"
                                    + " WHERE "
                                    + "a.siteID="+siteID
                                    ;

                                    ResultSet rs6=obj.select(querySelect6);
                                    System.out.println("querySelect6   "+querySelect6);
                                    int count5=0;
                                    float totalPayment=0.0F;               
                                    while(rs6.next())
                                    {
                                    count5++; 
                                    totalPayment=totalPayment+(   Float.parseFloat(rs6.getString("payedAmount"))  );
                                    }
                                    %>

                                        <table border="1"  style="width: 100%;">
                                            <tr style="background-color: #FF5733 ; text-shadow: 2px 2px 5px black;"> 
                                                <td colspan="2">
                                                    <center> 
                                                    <table  style="width: 600px;" border="1">
                                                        <tr>
                                                            <th colspan="2" style="background-color: #FF5733 ; text-shadow: 2px 2px 5px black;">
                                                               <center>  <div style="font-size: 20px;"> <font color="White "><h2>Site Payment Summary
                                                           </th>
                                                        </tr>
                                                        <tr > 
                                                            <td style="width: 650px; background-color: #A8D0E6 ; text-shadow: 2px 2px 5px white;">   
                                                               <div style="font-size: 20px;"> <font color="#374785 "> Total Service Charge For Item Move
                                                            </td>  
                                                            <td style="width: 350px; background-color: #24305E ; text-shadow: 2px 2px 5px Red;">
                                                                <div style="font-size: 20px;"> <font color="#27ae60 "> RS: <%=totalServiceCharge%>
                                                            </td>  
                                                        </tr> 
                                                        <tr> 
                                                            <td style="width: 650px; background-color: #A8D0E6 ; text-shadow: 2px 2px 5px white;">    
                                                               <div style="font-size: 20px;"> <font color="#374785 "> Total Actual Wages For Alloted Workers
                                                            </td>  
                                                            <td style="width: 350px; background-color: #24305E ; text-shadow: 2px 2px 5px Red;">
                                                                <div style="font-size: 20px;"> <font color="#27ae60 "> RS: <%=totalActualWages%>
                                                            </td>  
                                                        </tr> 
                                                         <tr> 
                                                            <td style="width: 650px; background-color: #A8D0E6 ; text-shadow: 2px 2px 5px white;">    
                                                               <div style="font-size: 20px;"> <font color="#374785 "> Total Commission
                                                            </td>  
                                                            <td style="width: 350px; background-color: #24305E ; text-shadow: 2px 2px 5px Red;">
                                                                <div style="font-size: 20px;"> <font color="#27ae60 "> RS: <%=totalCommission%>
                                                            </td>  
                                                        </tr> 
                                                        <tr> 
                                                            <td style="width: 650px; background-color: #A8D0E6 ; text-shadow: 2px 2px 5px white;">    
                                                               <div style="font-size: 20px;"> <font color="#374785 "> Total Wages For Alloted Workers
                                                            </td>  
                                                            <td style="width: 350px; background-color: #24305E ; text-shadow: 2px 2px 5px Red;">
                                                                <div style="font-size: 20px;"> <font color="#27ae60 "> RS: <%=totalWages%>
                                                            </td>  
                                                        </tr> 
                                                        <tr> 
                                                           <td style="width: 650px; background-color: #A8D0E6 ; text-shadow: 2px 2px 5px white;">    
                                                               <div style="font-size: 20px;"> <font color="#374785 "> Vehicle Charges and Expenses
                                                            </td>  
                                                            <td style="width: 350px; background-color: #24305E ; text-shadow: 2px 2px 5px Red;">
                                                                <div style="font-size: 20px;"> <font color="#27ae60 "> RS: <%=totalFare%>
                                                            </td>  
                                                        </tr> 
                                                        <tr> 
                                                            <td style="width: 650px; background-color: #A8D0E6 ; text-shadow: 2px 2px 5px white;">   
                                                               <div style="font-size: 20px;"> <font color="#374785 "> All Other Expenses
                                                            </td>  
                                                            <td style="width: 350px; background-color: #24305E ; text-shadow: 2px 2px 5px Red;">
                                                                <div style="font-size: 20px;"> <font color="#27ae60 "> RS: <%=totalExpenses%>
                                                            </td>  
                                                        </tr> 
                                                        <tr> 
                                                            <td style="width: 650px; background-color: #A8D0E6 ; text-shadow: 2px 2px 5px white;">    
                                                               <div style="font-size: 20px;"> <font color="#374785 "> Net Total Expenses
                                                            </td>  
                                                            <td style="width: 350px; background-color: #24305E ; text-shadow: 2px 2px 5px Red;">
                                                                <div style="font-size: 20px;"> <font color="#27ae60  "> RS: <%=(totalServiceCharge+totalWages+totalFare+totalExpenses)%>
                                                            </td>  
                                                        </tr> 

                                                        <tr>                                 
                                                            <td style="width: 650px; background-color: #A8D0E6 ; text-shadow: 2px 2px 5px white;">   
                                                               <div style="font-size: 20px;"> <font color=" #0b5345  "> Total Payments
                                                            </td>  
                                                             <td style="width: 350px; background-color:  #f4d03f  ; text-shadow: 2px 2px 5px red;">
                                                                <div style="font-size: 20px;"> <font color="#C70039 "> RS: <%=totalPayment%>
                                                            </td>  
                                                        </tr>     

                                                        <tr> 
                                                            <td style="width: 650px; background-color: #A8D0E6 ; text-shadow: 2px 2px 5px white;">   
                                                               <div style="font-size: 20px;"> <font color="#C70039 "> Payment Due
                                                            </td>  
                                                            <%
                                                              Float paymentDue=0.0F;
                                                              paymentDue=(  (totalServiceCharge+totalWages+totalFare+totalExpenses) - totalPayment) ;
                                                            %> 
                                                            <td style="width: 350px; background-color: #1c2833  ; text-shadow: 2px 2px 5px red;">
                                                                <div style="font-size: 20px;"> <font color="#F8E9A1 "> RS: <%=(  (totalServiceCharge+totalWages+totalFare+totalExpenses) - totalPayment) %>
                                                            </td>  
                                                        </tr> 

                                                        <tr>
                                                            <td style="width: 350px; background-color: #A8D0E6  ; text-shadow: 2px 2px 5px black;">
                                                                <div style="font-size: 20px;"> <font color="#F8E9A1 ">
                                                                   Enter Payment Amount
                                                            </td>
                                                            <td>
                                                            <center><input type="text" name="paymentAmount" required="" value="">  
                                                            </td>
                                                        </tr>   
                                                        <tr>                                        
                                                            <td colspan="2" >
                                                                <center> <input type="submit" value="Pay" name="B_Submit" />
                                                            </td>
                                                        </tr>
                                                    </table> 
                                                </td>           
                                            </tr>
                                        </table>                
                                    </td>
                                    
                                    <td style="vertical-align: top;padding-top: 0px;">            
                                        <table  >            
                                            <tr >                                  
                                                <th colspan="2">SITE & OWNER DETAILS </th>               
                                            </tr>
                                            <%
                                            String querySelect="SELECT "
                                            + "a.*,"
                                            + "b.*,"
                                            + "c.*,"  
                                            + "d.*," 
                                            + "e.*"        
                                            + " FROM "
                                            + "tbl_site_register a,"        
                                            + "tbl_buildingcategory b,"
                                            + "tbl_state c,"
                                            + "tbl_district d,"
                                            + "tbl_user_details e"
                                            + " WHERE "                                       
                                            + "a.buildingCategoryID =b.buildingCategoryID"
                                            + " AND "
                                            + "a.moveFromStateID=c.stateID"                                     
                                            + " AND "
                                            + "a.moveFromDistrictID=d.districtID"   
                                            + " AND "
                                            + "a.userID=e.userID"  
                                            + " AND "
                                            + "a.siteID="+siteID          
                                            + " AND "    
                                            + "a.status=3"        
                                            ;  
                                            ResultSet rs=obj.select(querySelect);
                                            System.out.println(" QquerySelect?????????????????? : "+querySelect);
                                            while(rs.next())
                                            {
                                            %>

                                            <tr>   
                                                <td>
                                                    <table>
                                                        <tr> 
                                                            <td>
                                                                <center><img src='..\User\SiteImages\<%=rs.getString("siteImage")%>' width="250" height="250" />
                                                            </td>
                                                        </tr>                           
                                                        <tr>
                                                            <td>    
                                                                <table>  

                                                                     <tr> 
                                                                        <td>
                                                                           <div style="font-size: 20px;"> <font color="#0847a8">Building Type  
                                                                        </td>
                                                                        <td>
                                                                            <div style="font-size: 20px;"> <font color="#0847a8">ID:<%=rs.getString("siteID")%> - <%=rs.getString("buildingCategoryName")%> 
                                                                        </td>
                                                                    </tr>
                                                                    <tr> 
                                                                        <td>
                                                                            <div style="font-size: 18px;"><font color="#0847a8"><b>Start Location</font>
                                                                        </td>
                                                                        <td>
                                                                            <div style="font-size: 18px;"><font color="#0847a8"><%=rs.getString("moveFromPlace")%></font> 
                                                                        </td>
                                                                    </tr>
                                                                    <tr> 
                                                                         <td> 
                                                                            <div style="font-size: 18px;"><font color="#0847a8">Destination</font>
                                                                        </td>
                                                                        <td>
                                                                            <div style="font-size: 18px;"><font color="#0847a8"><%=rs.getString("moveToPlace")%> 
                                                                        </td>
                                                                    </tr>

                                                                     <tr> 
                                                                        <td>
                                                                            <div style="font-size: 18px;"><font color="#0847a8">Distance 
                                                                        </td>
                                                                        <td>
                                                                            <div style="font-size: 18px;"><font color="#0847a8"><%=rs.getString("distance")%>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>                             
                                                    </table>
                                                </td> 
                                            </tr>          
                                            <%
                                            }
                                            %>
                                        </table>  
                                    </td>
                                </tr>  
                            </table>
                        </td>
                    </tr> 
                </table>    
                <%
                }
                %>
                
                
                
            </form>
            </body>  
            </td> 
        </tr>     
        <tr>
            <td colspan="2">

            </td>   
        </tr> 
    </table>
                        
<!-- FOOTER  STARTS-->            

</html>
</div>   
<%@include file="AdminHomeFooter.jsp" %>

    