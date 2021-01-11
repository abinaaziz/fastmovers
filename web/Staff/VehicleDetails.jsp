<!-- HEADER  STARTS-->
<%@include file="StaffHomeHeader.jsp" %>

<div class="div_login">
             
    
<table class="Round_corner_Form_Base">
    <tr>
        <td rowspan="3">    
<!-- HEADER  ENDS-->     


<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
             
    </head>
    <body class="backgroungPicture4"> 
        <form action="VehicleDetailsProfilePictureUpload.jsp" enctype="multipart/form-data" method="post"> 
           
              <table class="Content_Table">
                <caption>
                    <h2> Vehicles</h2>
                </caption>
                <tr>                    
                    <td>Vehicle Category</td>
                    <td>
                        <select name="comboVehicleCategory"   >   
                            <option value="Nil">-------------Select-------------</option> 
                            <%  //VALUE ADDING TO COMBO BOX
                            String querySelect = "select * from tbl_vehicle_category"; 
                            ResultSet rs = obj.select(querySelect);
                            while (rs.next()) 
                            {
                            %>
                                <option value="<%=rs.getString("vehicleCategoryID") %>"> <%=rs.getString("vehicleCategoryName")%> </option>  
                            <%
                            }
                            %>
                        </select> 
                    </td>
                </tr>        
                <tr><td>Vehicle Number</td>            
                   <td> <input type="text" name="vehicleNumber" requird="required" >  </td></tr>
                
                <tr><td>Per Km Charge</td>            
                   <td> <input type="text" name="perKmCharge" requird="required" >  </td></tr>
                
                <tr><td>Commission</td>            
                   <td> <input type="text" name="Commission" requird="required" >  </td></tr>
               
                <tr><td>Company</td>
                   <td><input type="text" name="company" requird="">  

                   </td></tr> 

                <tr><td>Model Name</td>
                   <td>
                       <input type="text"name="modelName">
                           </td></tr>


                <tr><td>Image</td>
                   <td>
                        <input type="file" name="profilePicture" requird="">  </td></tr>  

                <tr>
                    <td>
                        <input type="reset" value="Reset" name="buttonReset" >
                    </td>
                    <td>
                <center> <input type="submit" value="Submit" name="buttonSubmit" >
                    </td>
              </tr>

           </table>
        </form>
    </body>
</html>
<!-- FOOTER  STARTS-->
        </td>

        <td>
            <!-- Small Slide  STARTS-->
            <%@include file="../TemplateStyleFiles/SmallSlideBar.jsp" %>
            <!-- Small Slide  ENDS-->
        </td>
    </tr>
    <tr>
        <td>
            <!-- Small Slide  STARTS-->
            <%@include file="../TemplateStyleFiles/SmallSlideBar.jsp" %>
            <!-- Small Slide  ENDS-->
        </td>
    </tr>
     <tr>
        <td>
            <!-- Small Slide  STARTS-->
            <%@include file="../TemplateStyleFiles/SmallSlideBar.jsp" %>
            <!-- Small Slide  ENDS-->
        </td>
    </tr>
</table>

</div>    
<%@include file="StaffHomeFooter.jsp" %>
<!-- FOOTER  ENDS-->
    