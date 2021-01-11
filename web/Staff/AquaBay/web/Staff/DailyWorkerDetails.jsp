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
 
        
            <script type="text/javascript" lang="javascript">
                function getDistrict(argsStateID)
                {
                    var http;
                    http=new XMLHttpRequest();
                    http.onreadystatechange=function()
                    {
                        if(http.readyState==4)
                        {
                            document.getElementById("comboDistrict").innerHTML=http.responseText;
                        }
                    };
                    http.open("GET","ajaxdist.jsp?argsStateID="+argsStateID,true);
                    http.send();
                }
            </script>
     
    </head>
    <body class="backgroungPicture4"> 
        <form action="DailyWorkerDetailsProfilePictureUpload.jsp" enctype="multipart/form-data" method="post"> 
           
              <table class="Content_Table">
                <caption>
                    <h2> Daily Workers</h2>
                </caption>
                <tr>                    
                    <td>Daily Worker Category</td>
                    <td>
                        <select name="comboDailyWorkerCategory"   >   
                            <option value="Nil">-------------Select-------------</option> 
                            <%  //VALUE ADDING TO COMBO BOX
                            String querySelect = "select * from tbl_staff_category"; 
                            ResultSet rs = obj.select(querySelect);
                            while (rs.next()) 
                            {
                            %>
                                <option value="<%=rs.getString("staffCategoryID") %>"> <%=rs.getString("staffCategoryName")%> </option>  
                            <%
                            }
                            %>
                        </select> 
                    </td>
                </tr>        
                <tr><td>FIRST NAME</td>            
                   <td> <input type="text" name="firstName" requird="required" >  </td></tr>
                
                <tr><td>DAILY WAGES</td>            
                   <td> <input type="text" name="dailyWages" requird="required" >  </td></tr>
                
                <tr><td>COMMISSION</td>            
                   <td> <input type="text" name="Commission" requird="required" >  </td></tr>
                
                <tr><td>ADDRESS</td><td>
                        <textarea  name="address" requird="" ></textarea>  </td></tr> 
                         
                <tr><td>POST OFFICE</td>
                   <td><input type="text" name="postbox" requird="">  

                   </td></tr> 

                <tr><td>PLACE</td>
                   <td>
                       <input type="text"name="place">
                           </td></tr>

                <tr><td>PIN CODE</td>
                   <td>
                          <input type="number" name="pincode" requird="">  </td></tr> 
                
                <tr><td>AADAR NUMBER</td>
                   <td>
                   <input type="text" name="aadarNumber" >  </td></tr>  
                
                <tr><td>CONTACT NUMBER</td>
                   <td>
                          <input type="number" name="contactNumber" requird="">  </td></tr>  
                <tr><td>MOBILE NUMBER</td>
                   <td>
                          <input type="number" name="mobileNumber" requird="">  </td></tr>  

                <tr><td>EMAIL ID</td>
                   <td>
                          <input type="email" name="email" value="" requird="">  </td></tr> 

                <tr><td>PHOTO</td>
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
       <!-- FOOTER  STARTS-->
        </td>
        
    </tr>
</table>
</div>    

<%@include file="StaffHomeFooter.jsp" %>
<!-- FOOTER  ENDS-->