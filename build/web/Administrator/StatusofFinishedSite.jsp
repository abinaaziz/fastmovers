<%@include file="AdminHomeHeader.jsp" %>

<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.DBConnection" id="obj" ></jsp:useBean>    
<div class="div_login">
<div class="div_Heading" >
<p class="align_center_p"> </p>
</div>     
    
<style>
table.T1
{
             
}
.T1 th
{
  
}

.T1 tr
{
  

}
.T1 td
{

   text-shadow: 2px 2px 5px Yellow;

}
.T1 td:hover 
{
   background-color: #ffd133;
    color: #3da1e3;
}

.T1 tr:hover 
{
   background-color: #ffd133;
   color: #3da1e3;
}

</style>    
    
<table class="Round_corner_Form_Base">
    <tr>
        <td>  
            
            <!DOCTYPE html>
            <html>
            <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title> </title>
            </head>
            <body>     
            <form method="post"> 
            <div align="center" style="padding-top:  50px; font-family: sans-serif; font-size: larger; ">
            
            <table border="5" style=" border-collapse: collapse; width: 1000px;  overflow: scroll;">
                <caption>
                    <h2>Site Status</h2>
                </caption> 
                <th colspan="2">
                    <center>  <div style="font-size: 20px;"> <font color="red">Site Details
                </th>

                <%
                String SSNstaffID=session.getAttribute("staffID").toString();   
                String URLsiteID=request.getParameter("siteID");
                String URLfromDate=request.getParameter("fromDate");
                String URLtoDate=request.getParameter("toDate");
                
                String siteID="";
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
                + "a.siteID="+URLsiteID
                + " AND "        
                + "a.buildingCategoryID =b.buildingCategoryID"
                + " AND "
                + "a.moveFromStateID=c.stateID"                                     
                + " AND "
                + "a.moveFromDistrictID=d.districtID"   
                + " AND "
                + "a.userID=e.userID"   
                + " AND "    
                + "a.status=3"        
                ;  
                ResultSet rs=obj.select(querySelect);
                System.out.println(" QquerySelect : "+querySelect);
                while(rs.next())
                {
                siteID=rs.getString("siteID");                
                %>
                <tr >
                    <td>
                        <center><img src='..\User\SiteImages\<%=rs.getString("siteImage")%>' width="150" height="150" />
                    </td>
                    <td >
                        <table>
                            <tr> 
                                
                                <td>
                                    <table border="1" style="width: 850px;"> 
                                        <tr> 
                                            <td style="width: 425px;">
                                                <div style="font-size: 20px;"> <font color="#0847a8">Building Type:  
                                            </td>
                                            <td>
                                                <div style="font-size: 20px;"> <font color="#0847a8"><%=rs.getString("buildingCategoryName")%> 
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
                                            <td><div style="font-size: 20px;"> <font color="#0847a8">Distance </td>
                                            <td><div style="font-size: 20px;"> <font color="#0847a8"><%=rs.getString("distance")%></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>                                               
                        </table>
                    </td>  
                </tr>
                <tr>
                    <th colspan="2">
                        <center>  <div style="font-size: 20px;"> <font color="red">Owner Details
                    </th>
                </tr>                
                <tr>
                    <td style="text-align:center; vertical-align:middle;"> 
                        <img src='..\User\ProfilePictures\<%=rs.getString("profilePicture")%>' width="150" height="150" />
                    </td>  
                    <td style="text-align:center; vertical-align:middle;"> <center>
                        <table border="1" style="width: 850px;"> 
                            <tr> 
                                <td style="width: 425px;"> <div style="font-size: 20px;"> <font color="#0847a8">Name   </td>
                                 <td> <div style="font-size: 20px;"> <font color="#0847a8"><%=rs.getString("firstName")%> <%=rs.getString("lastName")%></td>
                            </tr>
                            <tr> 
                                <td> <div style="font-size: 20px;"> <font color="#0847a8">Contact Number  </td>
                                <td> <div style="font-size: 20px;"> <font color="#0847a8"><%=rs.getString("contactNumber")%>, <%=rs.getString("mobileNumber")%> </td>
                            </tr>
                            <tr> 
                                <td> <div style="font-size: 20px;"> <font color="#0847a8">E-Mail </td>
                                <td> <div style="font-size: 20px;"> <font color="#0847a8">s<%=rs.getString("email")%></td>
                            </tr>
                             <tr> 
                                <td><div style="font-size: 20px;"> <font color="#0847a8">Registered Date </td> 
                                <td><div style="font-size: 20px;"> <font color="#0847a8"><%=rs.getString("currentDate")%> </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                
                
                
                <tr>
                    <th colspan="2">
                        <center>  <div style="font-size: 20px;"> <font color="red">Items And Charge
                    </th>
                </tr>
                <% 
                String querySelect0="select "
                + "a.*,"
                + "b.*"                                                  
                + " from "
                + "tbl_item a,"
                + "tbl_thingscategory b"
                + " WHERE "
                + "a.siteID="+URLsiteID
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
                %>
                <tr>
                    <td colspan="4">
                        <center>
                        <table border="1" style="width: 1000px">    
                        </center>   
                            <%
                            if(count0==1)
                            {
                            %>
                            <tr>
                               <th>ID</th>                                   
                                <th>Item Details</th>                                
                                <th>Mass And Weight</th>  
                                <th>Service Charge</th>  
                            </tr>
                            <%
                            }              
                            %>
                            <tr>
                                <td align="center" style="width: 50px; vertical-align: middle">
                                    <%=count0%>
                               </td>                                    
                               <td style="width: 300px">
                                   <table>
                                       <tr>
                                           <td style="align-content: center;">
                                               Item ID:  <%=rs0.getString("itemID")%>
                                            </td>
                                       </tr>
                                       <tr>
                                           <td style="align-content: center;">
                                               Item Name:  <%=rs0.getString("thingsName")%>
                                            </td>
                                       </tr>
                                        <tr>
                                           <td style="align-content: center;">
                                               Category:   <%=rs0.getString("thingsCategoryName")%>
                                            </td>
                                       </tr>
                                   </table>   
                               </td>
                               <td style="width: 300px">
                                   <table>
                                       <tr>
                                           <td style="align-content: center;">
                                               Weight :  <%=rs0.getString("weight")%>
                                            </td>
                                       </tr>
                                       <tr>
                                           <td style="align-content: center;">
                                               Mass :  <%=rs0.getString("mass")%>
                                            </td>
                                       </tr>
                                   </table>   
                               </td>
                                                                   
                               <td style="width: 500px; vertical-align: middle; ">
                                    <table border="1">
                                         <tr>
                                            <td style="align-content: center; width:250px; vertical-align: middle;">
                                               <div style="font-size: 20px;"> <font color="#0847a8">Count
                                             </td>
                                             <td style="align-content: center; width:250px; vertical-align: middle;">
                                               <div style="font-size: 20px;"> <font color="#0847a8"> <%=rs0.getString("count")%> Nos
                                             </td>
                                        </tr>
                                        <tr>
                                            <td style="align-content: center; width:250px; vertical-align: middle;">
                                                <div style="font-size: 20px;"> <font color="#0847a8">Service Charge 
                                            </td>
                                            <td style="align-content: center; width:250px; vertical-align: middle;">
                                               <div style="font-size: 20px;"> <font color="#0847a8"> RS:  <%=rs0.getString("thingsServiceCharge")%>
                                            </td>
                                        </tr>
                                        <tr>
                                        
                                        <tr>
                                            <td style="align-content: center; width:250px; vertical-align: middle;">
                                                <div style="font-size: 20px;"> <font color="#09919c"> Sub Total:
                                            </td>
                                            <td style="align-content: center; width:250px; vertical-align: middle;">
                                                <div style="font-size: 20px;"> <font color="#09919c">RS: <%=(  Float.parseFloat(rs0.getString("count"))*Float.parseFloat(rs0.getString("thingsServiceCharge")) )%>
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
                <tr> 
                    <td colspan="2">
                    <center> <table style="width: 1000px;" >
                            <tr> 
                                <td style="width: 350px; align-content: flex-end">   
                                   
                                </td>  
                                <td >   
                                   <div style="font-size: 20px;"> <font color="#C70039 "> Total Service  Charge
                                </td>  
                                <td style="width: 400px; align-content: flex-end">
                                    <div style="font-size: 20px;"> <font color="#C70039 "> RS: <%=totalServiceCharge%>
                                </td>  
                            </tr>                             
                        </table> 
                    </td>           
                </tr>
                
                <th colspan="2">
                    <center>  <div style="font-size: 20px;"> <font color="red">Assigned Workers
                </th>
                
                <% 
                String querySelect3="select "
                + "a.*,"
                + "b.*,"    
                + "c.*"    
                + " from "
                + "tbl_assigned_worker a," 
                + "tbl_daily_workers b," 
                + "tbl_staff_category c"
                + " WHERE "
                + "a.siteID="+URLsiteID
                + " AND "        
                + " a.dailyWorkerID = b.dailyWorkerID"
                + " AND "
                + " b.staffCategoryID = c.staffCategoryID"
                + "";

                ResultSet rs3=obj.select(querySelect3);
                System.out.println("querySelect 3"+querySelect3);
                int count=0;
                float totalActualWages=0.0F;
                float totalCommission=0.0F;
                float totalWages=0.0F;
                while(rs3.next())
                {
                count++; 
                totalActualWages=totalActualWages+Float.parseFloat(rs3.getString("dailyWages"));
                totalCommission=totalCommission+Float.parseFloat(rs3.getString("commission"));                
                totalWages=totalWages+(totalActualWages+totalCommission);
                
                %>
                <tr>
                    <td colspan="4">
                        <center>
                        <table border="1" style="width: 1000px">    
                        </center>   
                
                            <%
                            if(count==1)
                            {
                            %>
                            <tr>
                               <th>No</th>     
                               <th>Worker</th>
                                <th>Name</th>
                                <th>Address Details</th>  
                                <th>Wages</th>  
                            </tr>
                            <%
                            }              
                            %>
                            <tr>
                                <td align="center" style="width: 30px; vertical-align: middle">
                                <%=count%>
                                </td>  
                                <td  style="text-align:center; vertical-align:middle;"> 
                                    <img src='..\Staff\DailyWorkers\<%=rs3.getString("b.profilePicture")%>' width="100" height="100" />
                                </td>
                                <td>
                                    <table>
                                        <tr>
                                            <td style="align-content: center; ">
                                                ID:  <%=rs3.getString("dailyWorkerID")%>/ <%=rs3.getString("firstName")%> 
                                             </td>
                                        </tr>
                                         <tr>
                                            <td style="align-content: center; ">
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
                                            <td style="align-content: center; ">
                                                Contact Number:  <%=rs3.getString("contactNumber")%>
                                             </td>
                                        </tr>
                                         <tr>
                                            <td style="align-content: center; ">
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
                                <td style="vertical-align: middle;">
                                    <table >
                                        <tr>
                                            <td style="align-content: center; width:250px; vertical-align: middle;">
                                                <div style="font-size: 20px;"> <font color="#0847a8">Daily Wages:  RS: <%=rs3.getString("dailyWages")%>
                                             </td>
                                        </tr>
                                         <tr>
                                            <td style="align-content: center; width:250px; vertical-align: middle;">
                                               <div style="font-size: 20px;"> <font color="#0847a8">Commission:  RS: <%=rs3.getString("commission")%>
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
                
                <tr> 
                    <td colspan="2">
                        <table style="width: 1000px;">
                            <tr> 
                                <td style="width: 600px; align-content: flex-end">   
                                   
                                </td>  
                                <td >   
                                   <div style="font-size: 20px;"> <font color="#FF5733 "> Total Actual Wages
                                </td>  
                                <td >
                                    <div style="font-size: 20px;"> <font color="#FF5733 ">  RS:  <%=totalActualWages%>
                                </td>  
                            </tr>    
                            <tr> 
                                <td style="width: 600px; align-content: flex-end">   
                                </td>  
                                <td >   
                                  <div style="font-size: 20px;"> <font color="#FF5733 "> Total Commission
                                </td>  
                                <td >
                                    <div style="font-size: 20px;"> <font color="#FF5733 ">  RS:  <%=totalCommission%>
                                </td>  
                            </tr>    
                            <tr> 
                                <td style="width: 600px; align-content: flex-end">   
                                   
                                </td>  
                                <td >   
                                   <div style="font-size: 20px;"> <font color="#C70039"> Total Wages
                                </td>  
                                <td >
                                     <div style="font-size: 20px;"> <font color="#C70039"> RS:  <%=totalWages%>
                                </td>  
                            </tr>    
                        </table> 
                    </td>           
                </tr>
                <tr>
                    <th colspan="2">
                        <center>  <div style="font-size: 20px;"> <font color="red">Assigned Vehicles
                    </th>
                </tr>
                <% 
                String querySelect4="select "
                + "a.*,"
                + "b.*,"    
                + "c.*"    
                + " from "
                + "tbl_assigned_vehicle a," 
                + "tbl_vehicle_details b," 
                + "tbl_vehicle_category c"
                + " WHERE "
                + "a.siteID="+URLsiteID
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
                
                %>
                <tr>
                    <td colspan="4">
                        <center>
                        <table border="1" style="width: 1000px">    
                        </center> 
                            <%
                            if(count2==1)
                            {
                            %>
                            <tr>
                               <th>No</th>     
                               <th>Vehicle</th>
                               <th>Vehicle Details</th>
                               <th>Fare Details</th>                                
                            </tr>
                            <%
                            }              
                            %>
                            <tr>
                                <td align="center" style="width: 50px; vertical-align: middle">
                                <%=count2%>
                                </td>  
                                <td  style="width: 100px; text-align:center; vertical-align:middle;"> 
                                  <img src='..\Staff\Vehicles\<%=rs4.getString("b.profilePicture")%>' width="100" height="100" />
                                </td>
                                <td style="width: 400px">
                                    <table>
                                        <tr>
                                            <td style="align-content: center; width:350px;">
                                                ID:  <%=rs4.getString("vehicleID")%>
                                             </td>
                                        </tr>
                                        <tr>
                                            <td style="align-content: center; width:350px;">
                                                 <%=rs4.getString("vehicleNumber")%> 
                                             </td>
                                        </tr>
                                         <tr>
                                            <td style="align-content: center; width:350px;">
                                                Type:  <%=rs4.getString("vehicleCategoryName")%>
                                             </td>
                                        </tr>
                                        <tr>
                                            <td style="align-content: center">
                                               Company: <%=rs4.getString("company")%> <%=rs4.getString("modelName")%>
                                            </td>    
                                        </tr>    
                                         <tr>
                                            <td style="align-content: center">
                                                Assigned Date: <%=rs4.getString("workedDate")%>
                                            </td>    
                                        </tr>
                                    </table>   
                                </td>
                               
                                <td style="width: 450px; vertical-align: middle; ">
                                    <table border="1">
                                         <tr>
                                            <td style="align-content: center; width:225px; vertical-align: middle;">
                                               <div style="font-size: 20px;"> <font color="#0847a8">Commission
                                             </td>
                                             <td style="align-content: center; width:225px; vertical-align: middle;">
                                               <div style="font-size: 20px;"> <font color="#0847a8"> RS:<%=rs4.getString("commission")%>
                                             </td>
                                        </tr>
                                        <tr>
                                            <td style="align-content: center; width:225px; vertical-align: middle;">
                                                <div style="font-size: 20px;"> <font color="#0847a8">Per Km Charge 
                                            </td>
                                            <td style="align-content: center; width:225px; vertical-align: middle;">
                                               <div style="font-size: 20px;"> <font color="#0847a8"> RS: <%=rs4.getString("perKmCharge")%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="align-content: center; width:225px; vertical-align: middle;">
                                               <div style="font-size: 20px;"> <font color="#0847a8">Total Distance 
                                            </td>
                                            <td style="align-content: center; width:225px; vertical-align: middle;">
                                               <div style="font-size: 20px;"> <font color="#0847a8"> RS: <%=rs4.getString("totalDistance")%>
                                            </td>
                                        </tr>
                                       
                                        <tr>
                                            <td style="align-content: center; width:225px; vertical-align: middle;">
                                                <div style="font-size: 20px;"> <font color="#09919c">Total Trip Charge:
                                            </td>
                                            <td style="align-content: center; width:225px; vertical-align: middle;">
                                                <div style="font-size: 20px;"> <font color="#09919c">RS: <%=(  Float.parseFloat(rs4.getString("perKmCharge"))*Float.parseFloat(rs4.getString("totalDistance")) )%>
                                            </td>
                                        </tr>
                                        
                                        
                                         <tr>
                                            <td style="align-content: center; width:225px; vertical-align: middle;">
                                               <div style="font-size: 20px;"> <font color="#09919c">Total Commission
                                            </td>
                                            <td style="align-content: center; width:225px; vertical-align: middle;">
                                               <div style="font-size: 20px;"> <font color="#09919c">RS: <%=Float.parseFloat(rs4.getString("commission"))*Float.parseFloat(rs4.getString("totalDistance"))%>
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
                
                <tr> 
                    <td colspan="2">
                        <table style="width: 1000px;">
                            <tr> 
                                <td style="width: 600px; align-content: flex-end">   
                                   
                                </td>  
                                <td >   
                                   <div style="font-size: 20px;"> <font color="#FF5733 "> Total Actual Fare
                                </td>  
                                <td >
                                    <div style="font-size: 20px;"> <font color="#FF5733 ">  RS:  <%=totalActualPerKM%>
                                </td>  
                            </tr>  
                            <tr> 
                                <td style="width: 600px; align-content: flex-end">   
                                </td>  
                                <td >   
                                  <div style="font-size: 20px;"> <font color="#FF5733 "> Net Commission
                                </td>  
                                <td >
                                    <div style="font-size: 20px;"> <font color="#FF5733 ">  RS:  <%=totalProfitShare%>
                                </td>  
                            </tr>    
                            <tr> 
                                <td style="width: 600px; align-content: flex-end">   
                                   
                                </td>  
                                <td >   
                                   <div style="font-size: 20px;"> <font color="#C70039"> Total Fare
                                </td>  
                                <td >
                                     <div style="font-size: 20px;"> <font color="#C70039"> RS:  <%=totalFare%>
                                </td>  
                            </tr>    
                        </table> 
                    </td>           
                </tr>
                
                <tr>
                    <th colspan="2">
                        <center>  <div style="font-size: 20px;"> <font color="red">Voucher Entries
                    </th>
                </tr>
                <% 
                String querySelect5="select a.*,"
                + "b.*"                                         
                + " from "
                + "tbl_expence_details a,"
                + "tbl_expence_category b"
                + " WHERE "
                + "a.siteID="+URLsiteID
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
                %>
                <tr>
                    <td colspan="4">
                        <center>
                        <table border="1" style="width: 1000px">    
                        </center>   
                            <%
                            if(count3==1)
                            {
                            %>
                            <tr>
                               <th>ID</th>                                   
                                <th>Expense Details</th>
                                <th>Other Details</th>  
                                <th>Amount</th>  
                            </tr>
                            <%
                            }              
                            %>
                            <tr>
                                <td align="center" style="width: 50px; vertical-align: middle">
                                    <%=count3%>
                               </td>                                    
                               <td style="width: 300px">
                                   <table>
                                       <tr>
                                           <td style="align-content: center;">
                                               Expense ID:  <%=rs5.getString("expenceID")%>
                                            </td>
                                       </tr>
                                       <tr>
                                           <td style="align-content: center;">
                                               Expense:  <%=rs5.getString("expenceName")%>
                                            </td>
                                       </tr>
                                       <tr>
                                           <td style="align-content: center">
                                               Type: <%=rs5.getString("expenceCategoryName")%>
                                           </td>    
                                       </tr>

                                   </table>   
                               </td>
                               <td style="width: 450px">
                                   <table>
                                       <tr>
                                           <td style="align-content: center">
                                               Date: <%=rs5.getString("expenceDate")%>
                                           </td>    
                                       </tr> 
                                        <tr>
                                           <td style="align-content: center">
                                               Responsible For: <%=rs5.getString("expenceMadeBy")%>
                                           </td>    
                                       </tr>
                                        <tr>
                                           <td style="align-content: center">
                                               Description:<%=rs5.getString("discription")%>
                                           </td>    
                                       </tr>

                                   </table>    

                               </td>                                     
                               <td style=" width: 200px; vertical-align: middle">
                                   <div style="font-size: 20px;"> <font color="#FF5733">  RS:  <%=rs5.getString("expenceAmount")%>
                               </td>
                            </tr>
                        </table>
                    </td>
                </tr>                    
                <%
                }    
                %>
                <tr> 
                    <td colspan="2">
                    <center> <table style="width: 1000px;" >
                            <tr> 
                                <td style="width: 500px; align-content: flex-end">   
                                   
                                </td>  
                                <td >   
                                   <div style="font-size: 20px;"> <font color="#C70039 "> Total Other Expenses
                                </td>  
                                <td style="width: 200px; align-content: flex-end">
                                    <div style="font-size: 20px;"> <font color="#C70039 "> RS: <%=totalExpenses%>
                                </td>  
                            </tr>                             
                        </table> 
                    </td>           
                </tr>
                
                
                
                <tr>
                    <th colspan="2">
                        <center>  <div style="font-size: 20px;"> <font color="red">Payments
                    </th>
                </tr>
                <% 
                String querySelect6="select "
                + "a.*"                                                  
                + " from "
                + "tbl_payments a"
                + " WHERE "
                + "a.siteID="+URLsiteID
                ;
                
                        
                ResultSet rs6=obj.select(querySelect6);
                System.out.println("querySelect6   "+querySelect6);
                int count5=0;
                float totalPayment=0.0F;               
                while(rs6.next())
                {
                count5++; 
                totalPayment=totalPayment+(   Float.parseFloat(rs6.getString("payedAmount"))  );
                %>
                <tr>
                    <td colspan="4">
                        <center>
                        <table border="1" style="width: 1000px">    
                        </center>   
                            <%
                            if(count5==1)
                            {
                            %>
                            <tr>
                               <th>ID</th>                                   
                                <th>Payment Details</th>                                
                                <th>Payed Amount</th>  
                            </tr>
                            <%
                            }              
                            %>
                            <tr>
                                <td align="center" style="width: 50px; vertical-align: middle">
                                    <%=count5%>
                               </td>                                    
                               <td style="width: 300px">
                                   <table>
                                       <tr>
                                           <td style="align-content: center;">
                                               Payment ID:  <%=rs6.getString("paymentID")%>
                                            </td>
                                       </tr>
                                       <tr>
                                           <td style="align-content: center;">
                                               Payed Date  <%=rs6.getString("payedDate")%>
                                            </td>
                                       </tr>
                                   </table>   
                               </td>
                               </td>                                     
                               <td style=" width: 200px; vertical-align: middle">
                                   <div style="font-size: 20px;"> <font color="#FF5733">  RS:  <%=rs6.getString("payedAmount")%>
                               </td>
                            </tr>
                        </table>
                    </td>
                </tr>                    
                <%
                }    
                %>
                <tr> 
                    <td colspan="2">
                    <center> <table style="width: 1000px;" >
                            <tr> 
                                <td style="width: 400px; align-content: flex-end">   
                                   
                                </td>  
                                <td >   
                                   <div style="font-size: 20px;"> <font color="#C70039 "> Total Payments
                                </td>  
                                <td style="width: 350px; align-content: flex-end">
                                    <div style="font-size: 20px;"> <font color="#C70039 "> RS: <%=totalPayment%>
                                </td>  
                            </tr>                             
                        </table> 
                    </td>           
                </tr>
                <tr>
                     <th colspan="2" style="">
                        <center>  <div style="font-size: 20px;"> <font color="White "><h2>
                    </th>
                </tr>
                <tr>
                     <th colspan="2" style="background-color: #FF5733 ; text-shadow: 2px 2px 5px black;">
                        <center>  <div style="font-size: 20px;"> <font color="White "><h2>Final Summary
                    </th>
                </tr>
                
                <tr style="background-color: #FF5733 ; text-shadow: 2px 2px 5px black;"> 
                    <td colspan="2">
                    <center> <table  style="width: 1000px;" border="1">
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
                        </table> 
                    </td>           
                </tr>
                
                <tr> 
                    <td colspan=2 style="width: 650px; background-color:  #28b463  ; text-shadow: 2px 2px 5px white;">   
                        <div style="font-size: 25px;"> <font color=" #6e2c00"><center> The Work Finished at <%=rs.getString("finishedDate")%> successfully . 
                    </td>                                                              
                </tr>
                <tr>           
                    <td colspan="2">
                <center> <a href="StatusBetweenTwoDate.jsp?siteID=<%=URLsiteID%>&fromDate=<%=URLfromDate%>&toDate=<%=URLtoDate%>" > <img src='../TemplateStyleFiles/BackButton.png' width="160" height="70" /></a>
                    </td>  
                </tr>
                
                <%
                }
                %>
            </table>
                       
            
                            
            </div>              
            </form>
            </body>
            </html>        
        </td>
    </tr>
</table>
</div>    
<%@include file="AdminHomeFooter.jsp" %>
