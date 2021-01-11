<%@include file="UserHomeHeader.jsp" %>
<div class="div_login">
<div class="div_Heading" >
<p class="align_center_p"></p>
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
            <%
            String URLpondID=request.getParameter("pondID");
            if (request.getParameter("B_Finish")!=null)
            {
                String queryUpadate="update tbl_pond_register set status=1"
                +" where "
                + "pondID="+URLpondID;
                obj.executeCommand(queryUpadate);
                response.sendRedirect("StaffHomePage.jsp"); 
            }
            %>
            <body>     
            <form method="post"> 
            <div align="center" style="padding-top:  50px; font-family: sans-serif; font-size: larger; " > 
            <table  class="Content_Table" style=" border-collapse: collapse; width: 1000px;  overflow: scroll;">
                <tr>            
                    <td>   
                        <table class="Content_Table" style=" width: 1000px;"   >
                        <caption>
                            <h2 > <div style="font-size: 20px;"> <font color=" #ffffff  ">Aquaponic Pond Details </h2>
                        </caption>  
                            <tr>
                                <th style="padding: 10px;">Pond</th>
                                <th style="padding: 10px;"> Details</th>
                            </tr>  

                            <%
                            //String SSNstaffID=session.getAttribute("staffID").toString(); 
                            float aproximateTotalExpence=0.0F;
                            float pondAria=0.0F;
                            float farmBedAria=0.0F;
                            String querySelect="SELECT "
                            + "a.*,"
                            + "b.*,"
                            + "c.*,"  
                            + "d.*," 
                            + "e.*"        
                            + " FROM "
                            + "tbl_pond_register a,"        
                            + "tbl_pondcategory b,"
                            + "tbl_state c,"
                            + "tbl_district d,"
                            + "tbl_user_details e"
                            + " WHERE "                                       
                            + "a.pondCategoryID =b.pondCategoryID"
                            + " AND "
                            + "a.pondID ="+URLpondID
                            + " AND "        
                            + "a.StateID=c.stateID"                                     
                            + " AND "
                            + "a.DistrictID=d.districtID"   
                            + " AND "
                            + "a.userID=e.userID"   
                            + " AND "    
                            + "a.status=2"        
                            ;  
                            ResultSet rs=obj.select(querySelect);
                            System.out.println(" QquerySelect : "+querySelect);
                            int count=0;
                            while(rs.next())
                            {
                            count++;  
                            pondAria=rs.getFloat("pondAria");
                            farmBedAria=rs.getFloat("farmBedAria");
                            %>
                            <tr >
                                <td>  
                                    <table class="Content_Table2" style=" width: 280px;"> 
                                        <tr> 
                                            <td  align="center">
                                                <center><img src='..\User\PondImages\<%=rs.getString("pondImage")%>' width="280" height="280" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <table class="Content_Table" style=" width: 720px;">
                                        <tr> 
                                            <td>    
                                                <table style=" width: 720px;"> 
                                                    <tr> 
                                                        <td>Pond ID  </td>
                                                        <td><%=rs.getString("pondID")%> </td>
                                                    </tr>
                                                    <tr> 
                                                        <td>Pond Type  </td>
                                                        <td><%=rs.getString("pondCategoryName")%></td>
                                                    </tr>
                                                    <tr> 
                                                        <td>Pond Aria   </td>
                                                         <td><%=rs.getString("pondAria")%></td>
                                                    </tr>
                                                    <tr> 
                                                        <td>Farm Bed Aria </td>
                                                        <td><%=rs.getString("farmBedAria")%></td>
                                                    </tr>

                                                    <tr> 
                                                        <td>Pond Place   </td>
                                                         <td><%=rs.getString("pondPlace")%></td>
                                                    </tr>
                                                    <tr> 
                                                        <td>Pond Address  </td>
                                                        <td><%=rs.getString("pondAddress")%>, <%=rs.getString("districtName")%>(DT), <%=rs.getString("stateName")%></td>
                                                    </tr>
                                                    <tr> 
                                                        <td>Start Date  </td>
                                                         <td><%=rs.getString("startDate")%></td>
                                                    </tr>
                                                    <tr> 
                                                        <td>Finish Date </td>
                                                        <td><%=rs.getString("finishDate")%></td>
                                                    </tr>
                                                    <tr> 
                                                        <td style="text-align:center; vertical-align:middle;"> 
                                                            <img src='..\User\ProfilePictures\<%=rs.getString("profilePicture")%>' width="100" height="100" />
                                                        </td>
                                                        <td>  
                                                            <table> 
                                                                <tr> 
                                                                    <td>Name   </td>
                                                                     <td><%=rs.getString("firstName")%> <%=rs.getString("lastName")%></td>
                                                                </tr>
                                                                <tr> 
                                                                    <td>Contact Number  </td>
                                                                    <td><%=rs.getString("contactNumber")%>, <%=rs.getString("mobileNumber")%> </td>
                                                                </tr>
                                                                <tr> 
                                                                    <td>E-Mail </td>
                                                                    <td><%=rs.getString("email")%></td>
                                                                </tr>
                                                                 <tr> 
                                                                    <td>Registered Date </td> 
                                                                    <td><%=rs.getString("currentDate")%> </td>
                                                                </tr>

                                                            </table>
                                                        </td>
                                                    </tr>      
                                                </table>
                                            </td>
                                        </tr> 
                                    </table>                  
                                </td>    
                            <%
                            }
                            %>
                        </table>                       
                    </td>
                </tr>
                
                <tr>            
                    <td>   
                        <table  class="Content_Table" style=" width: 1000px;">
                        <caption>
                        <h2 > <div style="font-size: 20px;"> <font color=" #ffffff  ">Pond Construction</h2>
                        </caption>  
                            <tr>
                                <th style="padding: 10px;">ID</th>
                                <th style="padding: 10px;">Pond Mechanism </th>
                                <th style="padding: 10px;">Cost</th>
                                <th style="padding: 10px;">Total Cost</th>
                            </tr>  
                            <%      
                            String querySelect2="SELECT "
                            + "a.*,"
                            + "b.*,"
                            + "c.*,"   
                            + "d.*"           
                            + " FROM "
                            + "tbl_assigned_pond_mechanism a,"        
                            + "tbl_pond_mechanism_details b,"
                            + "tbl_secondary_layer_details c," 
                            + "tbl_farmbed_mechanism_details d"        
                            + " WHERE "                                       
                            + "a.pondMechanismID =b.pondMechanismID"
                            + " AND "
                            + "a.secondaryLayerID =c.secondaryLayerID"
                            + " AND "   
                            + "a.farmbedMechanismID =d.farmbedMechanismID"
                            + " AND "        
                            + "a.pondID ="+URLpondID                             
                            ;  
                            ResultSet rs2=obj.select(querySelect2);
                            System.out.println(" QquerySelect : "+querySelect2);
                            float costOfMakingMechanism=0.0F;
                            float costOfMakingSecondaryLayer=0.0F;
                            float costOfMakingfarmbedMechanism=0.0F;
                            float totalpondMechanismCost=0.0F;
                            int count2=0;
                            while(rs2.next())
                            {
                            count2++;  
                            costOfMakingMechanism=rs2.getFloat("b.costOfMakingMechanism");
                            costOfMakingSecondaryLayer=rs2.getFloat("c.costOfMakingSecondaryLayer");
                            costOfMakingfarmbedMechanism=rs2.getFloat("d.costOfMakingMechanism");
                            totalpondMechanismCost= (costOfMakingMechanism*pondAria)+(costOfMakingSecondaryLayer*pondAria )+(costOfMakingfarmbedMechanism*farmBedAria );
                            %>
                            <tr >
                                <td align="center"><%=rs2.getString("pondMechanismID")%> </td>
                                <td>
                                    <table class="Content_Table2" style=" width: 600px;"> 
                                        <tr> 
                                            <td style=" width: 400px;">Pond Mechanism Name  </td>
                                            <td><%=rs2.getString("pondMechanismName")%></td>
                                        </tr>
                                        <tr> 
                                            <td >Description </td>
                                            <td><%=rs2.getString("discription")%></td>
                                        </tr>
                                    </table>           
                                </td>   
                                <td>
                                   Rs: <%=rs2.getString("costOfMakingMechanism")%>
                                </td> 
                                <td>
                                   Rs: <%=costOfMakingMechanism*pondAria%>
                                </td>
                            </tr> 
                            <tr >
                                <td align="center"><%=rs2.getString("secondaryLayerID")%></td>
                                <td>
                                    <table class="Content_Table2" style=" width: 600px;"> 
                                        <tr> 
                                            <td style=" width: 400px;">Secondary Layer Name  </td>
                                            <td><%=rs2.getString("secondaryLayerName")%></td>
                                        </tr>
                                        <tr> 
                                            <td>Description </td>
                                            <td><%=rs2.getString("discription")%></td>
                                        </tr>
                                    </table>           
                                </td>   
                                <td>
                                    Rs: <%=rs2.getString("costOfMakingSecondaryLayer")%>
                                </td> 
                                <td>
                                    Rs: <%=costOfMakingSecondaryLayer*pondAria%>
                                </td>
                            </tr> 
                            <tr >
                                <td align="center"><%=rs2.getString("farmbedMechanismID")%></td>
                                <td>
                                    <table class="Content_Table2" style=" width: 600px;">                                         
                                        <tr> 
                                            <td style=" width: 400px;">Farm Bed Mechanism Name  </td>
                                            <td><%=rs2.getString("farmbedMechanismName")%></td>
                                        </tr>
                                        <tr> 
                                            <td>Description </td>
                                            <td><%=rs2.getString("discription")%></td>
                                        </tr>
                                    </table>           
                                </td>  
                                <td>
                                    Rs: <%=rs2.getString("costOfMakingSecondaryLayer")%>
                                </td> 
                                <td>
                                    Rs: <%=costOfMakingSecondaryLayer*pondAria%>
                                </td>
                            </tr> 
                            <%
                            }
                            %>
                             <tr>
                                <td colspan="1" style="vertical-align: middle; ">
                                    
                                </td> 
                                <td colspan="2" style="vertical-align: middle; align:right ">
                                    <div style="font-size: 20px;a" > <font color="Red ">Total Mechanism Cost
                                </td> 
                                <td style="align-content: center; vertical-align: middle;">
                                <div align="right" style="font-size: 20px;"> <font color="Red "> Rs: <%=totalpondMechanismCost%>
                                </td> 
                            </tr>
                        </table>                       
                    </td>
                </tr>
                
                
                <tr>            
                    <td>   
                        <table border="1" class="Content_Table" style=" border-collapse: collapse; width: 1000px;  overflow: scroll;">
                            <caption>
                            <h2 > <div style="font-size: 20px;"> <font color=" #ffffff  ">Aquaponic Filter System </h2>
                            </caption>   
                            <tr style="height: 35px; background-color: #000; color: #d43f3a; padding: 5px;">
                                <th style="padding: 10px;">ID</th>
                                <th style="padding: 10px;">Filter System</th>
                                <th style="padding: 10px;">Cost</th>
                                <th style="padding: 10px;">Total Cost</th>
                            </tr>  

                            <%
                            String querySelect3="select "
                            + "a.*,"
                            + "b.*,"    
                            + "c.*"    
                            + " from "
                            + "tbl_assigned_filter_details a," 
                            + "tbl_filter_details b," 
                            + "tbl_filter_category c"
                            + " WHERE "
                            + " a.pondID ="+URLpondID                                           
                            + " AND "
                            + " a.filterID = b.filterID"                                            
                            + " AND "
                            + " b.filterCategoryID = c.filterCategoryID"
                            + "";

                            ResultSet rs3=obj.select(querySelect3);
                            int count3=0;
                            float actualRate=0.0F;
                            float sellingRate=0.0F;
                            float totalFilterCost=0.0F;
                            while(rs3.next())
                            {
                            actualRate=rs3.getFloat("b.actualRate");  
                            sellingRate=rs3.getFloat("b.sellingRate");  
                            totalFilterCost=totalFilterCost+( sellingRate*Float.parseFloat(rs3.getString("countOfFilters")) );
                            count3++;    
                            %>
                            <tr >
                                <td align="center"><%=count3%></td>
                                <td>
                                    <table class="Content_Table2">
                                        <tr>
                                            <td style="align-content: center; width:350px;">
                                                ID:  <%=rs3.getString("filterID")%>
                                             </td>
                                        </tr>
                                        <tr>
                                            <td style="align-content: center">
                                               Filter Name:  <%=rs3.getString("filterName")%> 
                                            </td>    
                                        </tr>

                                        <tr>
                                            <td style="align-content: center">
                                               Capacity: <%=rs3.getString("capasity")%>
                                            </td>    
                                        </tr>
                                    </table>   
                                </td>
                                 <td>
                                    <table class="Content_Table2">
                                         <tr>
                                            <td style="align-content: center; width:350px;">
                                                Actual Rate  Rs: <%=rs3.getString("actualRate")%>
                                             </td>
                                        </tr>
                                        <tr>
                                            <td style="align-content: center">
                                               Selling Rate Rs: <%=rs3.getString("sellingRate")%>
                                            </td>    
                                        </tr>
                                         <tr>
                                            <td style="align-content: center; width:350px;">
                                                No of Filters: <%=rs3.getString("countOfFilters")%>
                                             </td>
                                        </tr>

                                    </table>   
                                </td>    
                                <td style="align-content: center; vertical-align: middle;">
                                     Rs: <%=Float.parseFloat(rs3.getString("countOfFilters"))*Float.parseFloat(rs3.getString("sellingRate"))%>
                                </td>  
                            </tr> 
                            <%
                            }
                            %>
                            <tr>
                                <td colspan="2" style="vertical-align: middle;">
                                    
                                </td> 
                                <td colspan="" style="vertical-align: middle;">
                                    <div style="font-size: 20px;"> <font color="Red "> Total Filter Cost
                                </td> 
                                <td style="align-content: center; vertical-align: middle;">
                                    <div style="font-size: 20px;"> <font color="Red "> Rs: <%=totalFilterCost%>
                                </td> 
                            </tr>
                        </table>                       
                    </td>
                </tr>
                
                
                <tr>            
                    <td>   
                        <table border="1" class="Content_Table" style=" border-collapse: collapse; width: 1000px;  overflow: scroll;">
                        <caption>
                        <h2 > <div style="font-size: 20px;"> <font color=" #ffffff  ">Water Test Kits</h2>
                        </caption>    
                            <tr style="height: 35px; background-color: #000; color: #d43f3a; padding: 5px;">
                                <th style="padding: 10px;">ID</th>
                                <th style="padding: 10px;">Test Kit Details</th>
                                <th style="padding: 10px;">Price</th>
                                <th style="padding: 10px;">Total Price</th>
                            </tr>  

                            <%                           
                            String querySelect4="select "
                            + "a.*,"
                            + "b.*" 
                            + " from "
                            + "tbl_assigned_testkit_details a," 
                            + "tbl_testkit_details b" 
                            + " WHERE "
                            + " a.pondID ="+URLpondID                                           
                            + " AND "
                            + " a.testkitID = b.testkitID"     
                            + "";
                            ResultSet rs4=obj.select(querySelect4);
                            int count4=0;
                            float totalTstkitCost=0.0F;
                            while(rs4.next())
                            {
                            totalTstkitCost=totalFilterCost+( Float.parseFloat(rs4.getString("countOfTestkits"))*Float.parseFloat(rs4.getString("sellingRate")) );
                            count4++;    
                            %>
                            <tr >
                                <td align="center"><%=count4%></td>
                                <td>
                                    <table class="Content_Table2 ">
                                        <tr>
                                            <td style="align-content: center; width:350px;">
                                                Kit ID:  <%=rs4.getString("testkitID")%>
                                             </td>
                                        </tr>
                                        <tr>
                                            <td style="align-content: center">
                                               Test Kit Name:  <%=rs4.getString("testkitName")%> 
                                            </td>    
                                        </tr>

                                        <tr>
                                            <td style="align-content: center">
                                               Quantity: <%=rs4.getString("quantity")%>
                                            </td>    
                                        </tr>
                                    </table>   
                                </td>
                                 <td>
                                     <table class="Content_Table2">
                                         <tr>
                                            <td style="align-content: center; width:350px;">
                                                Actual Rate Rs: <%=rs4.getString("actualRate")%>
                                             </td>
                                        </tr>
                                        <tr>
                                            <td style="align-content: center">
                                               Selling Rate Rs: <%=rs4.getString("sellingRate")%>
                                            </td>    
                                        </tr>
                                         <tr>
                                            <td style="align-content: center; width:350px;">
                                                No of Test Kits: <%=rs4.getString("countOfTestkits")%>
                                             </td>
                                        </tr>

                                    </table>   
                                </td>    
                                <td style="align-content: center; vertical-align: middle;">
                                     Rs: <%=Float.parseFloat(rs4.getString("countOfTestkits"))*Float.parseFloat(rs4.getString("sellingRate"))%>
                                </td>  
                            </tr> 
                            <%
                            }
                            %>
                            <tr>
                                <td colspan="2" style="vertical-align: middle;">
                                    
                                </td> 
                                <td colspan="" style="vertical-align: middle;">
                                    <div style="font-size: 20px;"> <font color="Red "> Total Test Kit Cost
                                </td> 
                                <td style="align-content: center; vertical-align: middle;">
                                    <div style="font-size: 20px;"> <font color="Red "> Rs: <%=totalTstkitCost%>
                                </td> 
                            </tr>
                        </table>                       
                    </td>
                </tr>
                                 
                <tr>            
                    <td>   
                        <table border="1" class="Content_Table" style=" border-collapse: collapse; width: 1000px;  overflow: scroll;">
                        <caption>
                        <h2 > <div style="font-size: 20px;"> <font color=" #ffffff  ">Fish Seed Implementation</h2>
                        </caption> 
                            <tr style="height: 35px; background-color: #000; color: #d43f3a; padding: 5px;">
                                <th style="padding: 10px;">ID</th>
                                <th style="padding: 10px;">Fish Seed</th>
                                <th style="padding: 10px;">Price</th>
                                <th style="padding: 10px;">Total Price</th>
                            </tr>  
                            <%
                            String querySelect5="select "
                            + "a.*,"
                            + "b.*" 
                            + " from "
                            + "tbl_assigned_fish_details a," 
                            + "tbl_fish_details b" 
                            + " WHERE "
                            + " a.pondID ="+URLpondID                                           
                            + " AND "
                            + " a.fishID = b.fishID"     
                            + "";
                            ResultSet rs5=obj.select(querySelect5);
                            int count5=0;
                            float totalFishSeedCost=0.0F;
              
                            while(rs5.next())
                            {
                            totalFishSeedCost=totalFishSeedCost+( Float.parseFloat(rs5.getString("countOfFishs"))*Float.parseFloat(rs5.getString("sellingRate")) );
                            count5++;    
                            %>
                            <tr >
                                <td align="center"><%=count5%></td>
                                <td>
                                    <table class="Content_Table2">
                                        <tr>
                                            <td style="align-content: center; width:350px;">
                                                ID:  <%=rs5.getString("fishID")%>
                                             </td>
                                        </tr>
                                        <tr>
                                            <td style="align-content: center">
                                               Fish Name:  <%=rs5.getString("fishName")%> 
                                            </td>    
                                        </tr>

                                        <tr>
                                            <td style="align-content: center">
                                               Fish Size: <%=rs5.getString("seedSize")%>
                                            </td>    
                                        </tr>
                                    </table>   
                                </td>
                                 <td>
                                    <table class="Content_Table2">
                                         <tr>
                                            <td style="align-content: center; width:350px;">
                                                Actual Rate  Rs: <%=rs5.getString("actualRate")%>
                                             </td>
                                        </tr>
                                        <tr>
                                            <td style="align-content: center">
                                               Selling Rate Rs: <%=rs5.getString("sellingRate")%>
                                            </td>    
                                        </tr>
                                         <tr>
                                            <td style="align-content: center; width:350px;">
                                                No of Fish Seed: <%=rs5.getString("countOfFishs")%>
                                             </td>
                                        </tr>

                                    </table>   
                                </td>    
                                <td style="align-content: center; vertical-align: middle;">
                                     Rs: <%=Float.parseFloat(rs5.getString("countOfFishs"))*Float.parseFloat(rs5.getString("sellingRate"))%>
                                </td>  
                            </tr> 
                            <%
                            }
                            %>
                            <tr>
                                <td colspan="2" style="vertical-align: middle;">
                                    
                                </td> 
                                <td colspan="" style="vertical-align: middle;">
                                    <div style="font-size: 20px;"> <font color="Red "> Total Fish Seed Price
                                </td> 
                                <td style="align-content: center; vertical-align: middle;">
                                    <div style="font-size: 20px;"> <font color="Red "> Rs: <%=totalFishSeedCost%>
                                </td> 
                            </tr>
                        </table>                       
                    </td>
                </tr>
                                 
                <tr>            
                    <td>   
                        <table border="1" class="Content_Table" style=" border-collapse: collapse; width: 1000px;  overflow: scroll;">
                        <caption>
                        <h2 > <div style="font-size: 20px;"> <font color=" #ffffff  ">Startup Fish Feed</h2>
                        </caption> 
                            <tr style="height: 35px; background-color: #000; color: #d43f3a; padding: 5px;">
                                <th style="padding: 10px;">ID</th>
                                <th style="padding: 10px;">Fish Feed Narration</th>
                                <th style="padding: 10px;">Price</th>
                                <th style="padding: 10px;">Total Price</th>
                            </tr>  

                            <%
                            String querySelect6="select "
                            + "a.*,"
                            + "b.*" 
                            + " from "
                            + "tbl_assigned_feed_details a," 
                            + "tbl_feed_details b" 
                            + " WHERE "
                            + " a.pondID ="+URLpondID                                           
                            + " AND "
                            + " a.feedID = b.feedID"     
                            + "";
                            ResultSet rs6=obj.select(querySelect6);
                            int count6=0;
                            float totalFeedCost=0.0F;
                            while(rs6.next())
                            {
                            totalFeedCost=totalFeedCost+( Float.parseFloat(rs6.getString("quantityOfFeed"))*Float.parseFloat(rs6.getString("sellingRate")) );
                            count6++;    
                            %>
                            <tr >
                                <td align="center"><%=count6%></td>
                                <td>
                                        <table class="Content_Table2">
                                            <tr>
                                                <td style="align-content: center; width:350px;">
                                                    ID:  <%=rs6.getString("feedID")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center">
                                                   Feed Name:  <%=rs6.getString("feedName")%> 
                                                </td>    
                                            </tr>
                                            
                                            <tr>
                                                <td style="align-content: center">
                                                   Capacity: <%=rs6.getString("weight")%>
                                                </td>    
                                            </tr>
                                        </table>   
                                    </td>
                                     <td>
                                        <table class="Content_Table2">
                                             <tr>
                                                <td style="align-content: center; width:350px;">
                                                    Actual Rate  Rs: <%=rs6.getString("actualRate")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center">
                                                   Selling Rate Rs: <%=rs6.getString("sellingRate")%>
                                                </td>    
                                            </tr>
                                             <tr>
                                                <td style="align-content: center; width:350px;">
                                                    No of Feeds: <%=rs6.getString("quantityOfFeed")%>
                                                 </td>
                                            </tr>
                                           
                                        </table>   
                                    </td>    
                                    <td style="align-content: center; vertical-align: middle;">
                                         Rs: <%=Float.parseFloat(rs6.getString("quantityOfFeed"))*Float.parseFloat(rs6.getString("sellingRate"))%>
                                    </td>  
                            </tr> 
                            <%
                            }
                            %>
                            <tr>
                                <td colspan="2" style="vertical-align: middle;">
                                    
                                </td> 
                                <td colspan="" style="vertical-align: middle;">
                                    <div style="font-size: 20px;"> <font color="Red "> Total Feed Price
                                </td> 
                                <td style="align-content: center; vertical-align: middle;">
                                    <div style="font-size: 20px;"> <font color="Red "> Rs: <%=totalFeedCost%>
                                </td> 
                            </tr>
                        </table>                       
                    </td>
                </tr>
                                                
                <tr>            
                    <td>   
                        <table border="1" class="Content_Table" style=" border-collapse: collapse; width: 1000px;  overflow: scroll;">
                        <caption>
                        <h2 > <div style="font-size: 20px;"> <font color=" #ffffff  ">Other System Charges</h2>
                        </caption>   
                            <tr style="height: 35px; background-color: #000; color: #d43f3a; padding: 5px;">
                                <th style="padding: 10px;">ID</th>
                                <th style="padding: 10px;">System Charges</th>
                                <th style="padding: 10px;">Amount</th>
                                <th style="padding: 10px;">Total</th>
                            </tr>  

                            <%
                            String querySelect7="select "
                            + "a.*"                                
                            + " from "
                            + "tbl_assigned_otherrequirements_details a"                               
                            + " WHERE "
                            + " a.pondID ="+URLpondID       
                            ;
                            ResultSet rs7=obj.select(querySelect7);
                            int count7=0;
                            float totalOtherRequirementsCost=0.0F;
                            while(rs7.next())
                            {
                            totalOtherRequirementsCost=totalOtherRequirementsCost+( Float.parseFloat(rs7.getString("quantityOfOtherRequirements"))*Float.parseFloat(rs7.getString("otherRequirementsUserCost")) );
                            count7++;    
                            %>
                            <tr >
                                <td align="center"><%=count7%></td>
                                
                                    <td>
                                        <table class="Content_Table2">
                                            <tr>
                                                <td style="align-content: center; width:750px;">
                                                    ID:  <%=rs7.getString("assignedOtherRequirementsID")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center">
                                                   Other Requirement Name:  <%=rs7.getString("otherRequirementsName")%> 
                                                </td>    
                                            </tr>
                                             <tr>
                                                <td style="align-content: center">
                                                   Description <%=rs7.getString("discription")%>
                                                </td>    
                                            </tr>
                                        </table>   
                                    </td>
                                    
                                    <td style="align-content: center">
                                        <table class="Content_Table2">
                                            <tr>
                                                <td style="align-content: center; width:750px;">
                                                    Actual Cost  Rs:<%=rs7.getString("otherRequirementsActualCost")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center">
                                                   Selling Cost Rs:<%=rs7.getString("otherRequirementsUserCost")%>
                                                </td>    
                                            </tr>
                                             <tr>
                                                <td style="align-content: center">
                                                   Implemented Quantity <%=rs7.getString("quantityOfOtherRequirements")%>
                                                </td>    
                                            </tr>
                                        </table>   
                                        
                                    </td>  
                                    <td style="align-content: center; vertical-align: middle;">
                                         Rs: <%=Float.parseFloat(rs7.getString("quantityOfOtherRequirements"))*Float.parseFloat(rs7.getString("otherRequirementsUserCost"))%>
                                    </td>
                            </tr>                             
                            <%
                            }
                            %>
                            <tr>
                                <td colspan="2" style="vertical-align: middle;">
                                    
                                </td> 
                                <td colspan="" style="vertical-align: middle;">
                                    <div style="font-size: 20px;"> <font color="Red "> Total Requirement Cost
                                </td> 
                                <td style="align-content: center; vertical-align: middle;">
                                    <div style="font-size: 20px;"> <font color="Red "> Rs: <%=totalOtherRequirementsCost%>
                                </td> 
                            </tr>
                        </table>                       
                    </td>
                </tr>
                                             
                <tr>            
                    <td>   
                        <table border="1" class="Content_Table" style=" border-collapse: collapse; width: 1000px;  overflow: scroll;">
                        <caption>
                        <h2 > <div style="font-size: 20px;"> <font color=" #ffffff  ">Other Expenses</h2>
                        </caption>   
                            <tr style="height: 35px; background-color: #000; color: #d43f3a; padding: 5px;">
                                <th style="padding: 10px;">ID</th>
                                <th style="padding: 10px;">Expense Details</th>
                                <th style="padding: 10px;">Amount</th>
                                <th style="padding: 10px;">Total</th>
                            </tr>  

                            <%
                            String querySelect8="select a.*,"
                            + "b.*"                                         
                            + " from "
                            + "tbl_expence_details a,"
                            + "tbl_expence_category b"
                            + " WHERE "
                            + "a.pondID="+URLpondID
                            + " AND "        
                            + "a.expenceCategoryID = b.expenceCategoryID";
                            
                            ResultSet rs8=obj.select(querySelect8);
                            int count8=0;
                            float totalExpenses=0.0F;
                            while(rs8.next())
                            {
                            totalExpenses=totalExpenses+( Float.parseFloat(rs8.getString("expenceAmount"))+Float.parseFloat(rs8.getString("serviceCharge")) );
                            count8++;    
                            %>
                            <tr >
                                <td align="center"><%=count8%></td>
                                
                                    <td>
                                        <table class="Content_Table2">
                                            <tr>
                                                <td style="align-content: center; width:750px;">
                                                    ID:  <%=rs8.getString("expenceID")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center">
                                                   Expense Name:  <%=rs8.getString("expenceName")%> 
                                                </td>    
                                            </tr>
                                            <tr>
                                                <td style="align-content: center">
                                                   Expense Made By <%=rs8.getString("expenceMadeBy")%>
                                                </td>    
                                            </tr>
                                            
                                        </table>   
                                    </td>
                                    
                                    <td style="align-content: center">
                                        <table class="Content_Table2">
                                            <tr>
                                                <td style="align-content: center">
                                                   Expense Date <%=rs8.getString("expenceDate")%>
                                                </td>    
                                            </tr>
                                            <tr>
                                                <td style="align-content: center; width:750px;">
                                                    Expense Amount  Rs:<%=rs8.getString("expenceAmount")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center">
                                                   Service Charge Rs:<%=rs8.getString("serviceCharge")%>
                                                </td>    
                                            </tr>
                                            
                                        </table>   
                                        
                                    </td>  
                                    <td style="align-content: center; vertical-align: middle;">
                                         Rs: <%=Float.parseFloat(rs8.getString("expenceAmount"))+Float.parseFloat(rs8.getString("serviceCharge"))%>
                                    </td>
                            </tr>                             
                            <%
                            }
                            %>
                            <tr>
                                <td colspan="2" style="vertical-align: middle;">
                                    
                                </td> 
                                <td colspan="" style="vertical-align: middle;">
                                    <div style="font-size: 20px;"> <font color="Red "> Total Expenses
                                </td> 
                                <td style="align-content: center; vertical-align: middle;">
                                    <div style="font-size: 20px;"> <font color="Red "> Rs: <%=totalExpenses%>
                                </td> 
                            </tr>
                        </table>                       
                    </td>
                </tr>
                
                                             
                <tr>            
                    <td>   
                        <table border="1" class="Content_Table" style=" border-collapse: collapse; width: 1000px;  overflow: scroll;">
                        <caption>
                        <h2 > <div style="font-size: 20px;"> <font color=" #ffffff  ">Total Payments</h2>
                        </caption>   
                            <tr style="height: 35px; background-color: #000; color: #d43f3a; padding: 5px;">
                                <th style="padding: 10px;">ID</th>
                                <th style="padding: 10px;">Payments Details</th>
                                <th style="padding: 10px;">Payed</th>
                            </tr>  

                            <%
                            String querySelect9="select "
                            + "a.*"                                                  
                            + " from "
                            + "tbl_payments a"
                            + " WHERE "
                            + "a.pondID="+URLpondID
                            ;
                            ResultSet rs9=obj.select(querySelect9);
                            System.out.println("querySelect6   "+querySelect9);
                            int count9=0;
                            float totalPayment=0.0F;               
                            while(rs9.next())
                            {
                            count9++; 
                            totalPayment=totalPayment+(   Float.parseFloat(rs9.getString("payedAmount"))  );
                            %>
                            
                            <tr >
                                <td align="center"><%=count9%></td>
                                
                                <td colspan="2">
                                        <table class="Content_Table2">
                                            <tr>
                                                <td style="align-content: center; width:750px;">
                                                    ID:  <%=rs9.getString("paymentID")%>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td style="align-content: center">
                                                   Payed Date:  <%=rs9.getString("payedDate")%> 
                                                </td>    
                                            </tr>
                                        </table>   
                                    </td>
                                    
                                    <td style="align-content: center; vertical-align: middle;">
                                         Rs: <%=Float.parseFloat(rs9.getString("payedAmount"))%>
                                    </td>
                            </tr>                             
                            <%
                            }
                            %>
                            <tr>
                               
                                <td colspan="2" style="vertical-align: middle;">
                                </td>     
                                </td> 
                                <td colspan="" style="vertical-align: middle;">
                                    <div style="font-size: 20px;"> <font color="Red "> Total Payments
                                </td> 
                                <td style="align-content: center; vertical-align: middle;">
                                    <div style="font-size: 20px;"> <font color="Red "> Rs: <%=totalPayment%>
                                </td> 
                            </tr>
                        </table>                       
                    </td>
                </tr>
                
                 <tr>            
                    <td>   
                        <table border="1" class="Content_Table" style=" border-collapse: collapse; width: 1000px;  overflow: scroll;">
                            <%
                                aproximateTotalExpence=(totalpondMechanismCost+totalFilterCost+totalTstkitCost+totalFishSeedCost+totalFeedCost+totalOtherRequirementsCost+totalExpenses)-totalPayment;
                            %>
                            <caption>
                            <h2 > <div style="font-size: 20px;"> <font color=" #ffffff  ">SUMMARY</h2>
                            </caption> 
                            
                            <tr> 
                                <td style="align-content: center; width:850px; background-color:   #28b463;text-shadow: 0px 0px 0px black;">
                                    <div style="font-size: 20px;"> <font color="    #1c2833 "> Total pond Mechanism Construction Cost
                                </td>
                                <td style="align-content: center; background-color:#28b463;text-shadow: 0px 0px 0px black;   ">
                                    <div style="font-size: 20px;"> <font color="red" > Rs: <%=totalpondMechanismCost%>
                                </td>  
                           </tr>
                            
                            <tr> 
                                <td style="align-content: center; width:850px; background-color:   #28b463;text-shadow: 0px 0px 0px black;">
                                    <div style="font-size: 20px;"> <font color="    #1c2833 "> Total Water Filtration Implementation Charge
                                </td>
                                <td style="align-content: center; background-color:#28b463;text-shadow: 0px 0px 0px black;   ">
                                    <div style="font-size: 20px;"> <font color="red" > Rs: <%=totalFilterCost%>
                                </td>  
                           </tr>
                            
                           
                            <tr> 
                                <td style="align-content: center; width:850px; background-color:   #28b463;text-shadow: 0px 0px 0px black;">
                                    <div style="font-size: 20px;"> <font color="    #1c2833 "> Total Water Test Kit Applied Cost
                                </td>
                                <td style="align-content: center; background-color:#28b463;text-shadow: 0px 0px 0px black;   ">
                                    <div style="font-size: 20px;"> <font color="red" > Rs: <%=totalTstkitCost%>
                                </td>  
                           </tr>
                           
                           
                            <tr> 
                                <td style="align-content: center; width:850px; background-color:   #28b463;text-shadow: 0px 0px 0px black;">
                                    <div style="font-size: 20px;"> <font color="    #1c2833 "> Total Fish Seed Expense
                                </td>
                                <td style="align-content: center; background-color:#28b463;text-shadow: 0px 0px 0px black;   ">
                                    <div style="font-size: 20px;"> <font color="red" > Rs: <%=totalFishSeedCost%>
                                </td>  
                           </tr>
                           
                           <tr> 
                                <td style="align-content: center; width:850px; background-color:   #28b463;text-shadow: 0px 0px 0px black;">
                                    <div style="font-size: 20px;"> <font color="    #1c2833 "> Startup Fish Feed Cost
                                </td>
                                <td style="align-content: center; background-color:#28b463;text-shadow: 0px 0px 0px black;   ">
                                    <div style="font-size: 20px;"> <font color="red" > Rs: <%=totalFeedCost%>
                                </td>  
                           </tr>
                           
                           <tr> 
                                <td style="align-content: center; width:850px; background-color:   #28b463;text-shadow: 0px 0px 0px black;">
                                    <div style="font-size: 20px;"> <font color="    #1c2833 "> Other System Implementation Cost
                                </td>
                                <td style="align-content: center; background-color:#28b463;text-shadow: 0px 0px 0px black;   ">
                                    <div style="font-size: 20px;"> <font color="red" > Rs: <%=totalOtherRequirementsCost%>
                                </td>  
                           </tr>
                           
                           <tr> 
                                <td style="align-content: center; width:850px; background-color:   #28b463;text-shadow: 0px 0px 0px black;">
                                    <div style="font-size: 20px;"> <font color="    #1c2833 "> Other Expenses Made For Construction
                                </td>
                                <td style="align-content: center; background-color:#28b463;text-shadow: 0px 0px 0px black;   ">
                                    <div style="font-size: 20px;"> <font color="red" > Rs: <%=totalExpenses%>
                                </td>  
                           </tr>
                           <tr> 
                                <td style="align-content: center; width:850px; background-color:#e67e22;text-shadow: 0px 0px 0px black;">
                                    <div style="font-size: 20px;"> <font color=" #283747"> Current Net Total Pond Construction Cost
                                </td>
                                <td style="align-content: center; background-color:#e67e22;text-shadow: 0px 0px 0px black;   ">
                                    <div style="font-size: 20px;"> <font color="#283747" > Rs: <%=aproximateTotalExpence+totalPayment%>
                                </td>  
                           </tr>
                           
                           <tr> 
                                <td style="align-content: center; width:850px; background-color:   #28b463;text-shadow: 0px 0px 0px black;">
                                    <div style="font-size: 20px;"> <font color="    #1c2833 "> Total Payments Done By Owner
                                </td>
                                <td style="align-content: center; background-color:#28b463;text-shadow: 0px 0px 0px black;   ">
                                    <div style="font-size: 20px;"> <font color="Yellow" > Rs: <%=totalPayment%>
                                </td>  
                           </tr>
                           
                           <tr> 
                                <td style="align-content: center; width:850px; background-color:#e67e22;text-shadow: 0px 0px 0px black;">
                                    <div style="font-size: 20px;"> <font color=" #283747">Balance Due
                                </td>
                                <td style="align-content: center; background-color:#e67e22;text-shadow: 0px 0px 0px black;   ">
                                    <div style="font-size: 20px;"> <font color="#283747" > Rs: <%=aproximateTotalExpence%>
                                </td>  
                           </tr>
                           
                        </table>                       
                    </td>
                </tr>
                
               
                
            </table>    
                            
            </div>              
            </form>
            </body>
            </html>        
        </td>
    </tr>
</table>
</div>    
<%@include file="UserHomeFooter.jsp" %>
