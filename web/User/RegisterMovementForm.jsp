<!-- HEADER  STARTS-->
<%@include file="UserHomeHeader.jsp" %>

<div class="div_login">
<table class="Round_corner_Form_Base" border='2'>
    <tr>
        <td rowspan="3">   
            <!DOCTYPE html>
            <html>
            <head>        
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>User Application</title>

            <script type="text/javascript" lang="javascript">
            function getDistrict(argsStateID)
            {
                var http;
                http=new XMLHttpRequest();
                http.onreadystatechange=function()
                {
                    if(http.readyState==4)
                    {
                        document.getElementById("moveFromDistrict").innerHTML=http.responseText;
                    }
                };
                http.open("GET","ajaxdist.jsp?argsStateID="+argsStateID,true);
                http.send();
            }
            function getDistrict2(argsStateID)
            {
                var http;
                http=new XMLHttpRequest();
                http.onreadystatechange=function()
                {
                    if(http.readyState==4)
                    {
                        document.getElementById("moveToDistrict").innerHTML=http.responseText;
                    }
                };
                http.open("GET","ajaxdist.jsp?argsStateID="+argsStateID,true);
                http.send();
            }
          
            </script>
            

            </head>
            <body class="backgroungPicture4">
           
                <form action="RegisterMovementPictureUpload.jsp" enctype="multipart/form-data" method="post">            
             <!-- CONTENT  STARTS-->
             
             <table class="Content_Table" border="2" style="width: 900px;" >
                <caption>
                    <h2> Register Site</h2>
                </caption>
                <tr>                    
                    <td colspan="4" style="background-color: #34495e">
                        <font color="white">Site Details</font>
                    </td>
                </tr>    
                <tr>                    
                    <td>Building Category</td>
                    <td>
                        <select name="comboBuildingCategory"   >   
                            <option value="Nil">-------------Select-------------</option> 
                            <%  //VALUE ADDING TO COMBO BOX
                            String querySelect = "select * from tbl_buildingcategory"; 
                            ResultSet rs = obj.select(querySelect);
                            while (rs.next()) 
                            {
                            %>
                                <option value="<%=rs.getString("buildingCategoryID") %>"> <%=rs.getString("buildingCategoryName")%> </option>  
                            <%
                            }
                            %>
                        </select>  

                    <td>Site Image</td>
                    <td>
                        <input type="file" name="siteImage" required="">  
                    </td>
                </tr>  
                <tr>                    
                    <td colspan="4" style="background-color: #34495e">
                        <font color="white">From And Destination  </font>
                    </td>
                </tr>   
                <tr>  
                    <td>
                        Moving From
                    </td>                                 
                    <td> 
                        <input type="text" name="moveFromPlace" requird="required" >  
                    </td>
                    <td>
                        Move To Place
                    </td>
                    <td>
                        <input type="text" name="moveToPlace" requird="" >  
                    </td>
                </tr>  
                <tr>                                                
                    <td>
                        Moving From Address
                    </td>
                    <td>
                            <textarea  name="moveFromAddress" requird="" ></textarea>  
                    </td>
                    <td>
                        Move To Address
                    </td>
                    <td>
                        <textarea  name="moveToAddress" requird="" ></textarea>  
                    </td>
                </tr>  
                <tr>        
                    <td>
                        State
                    </td>
                    <td>
                        <select name="moveFromState" onchange="getDistrict(this.value);" class="elmtSize" >   
                                <option value="Nil">-------------Select-------------</option> 
                                <%  //VALUE ADDING TO COMBO BOX
                                    String querySelect2 = "select * from tbl_state"; 
                                    ResultSet rs2 = obj.select(querySelect2);
                                    while (rs2.next()) 
                                    {
                                %>
                                        <option value="<%=rs2.getString("stateID") %>"> <%=rs2.getString("stateName")%> </option>  
                                <%
                                    }
                                %>
                        </select>   
                    </td>   
                     <td>
                        State
                    </td>
                    <td>
                        <select name="moveToState" onchange="getDistrict2(this.value);" class="elmtSize" >   
                                <option value="Nil">-------------Select-------------</option> 
                                <%  //VALUE ADDING TO COMBO BOX
                                    String querySelect3 = "select * from tbl_state"; 
                                    ResultSet rs3 = obj.select(querySelect3);
                                    while (rs3.next()) 
                                    {
                                %>
                                        <option value="<%=rs3.getString("stateID") %>"> <%=rs3.getString("stateName")%> </option>  
                                <%
                                    }
                                %>
                        </select>   
                    </td>
                </tr>  
                <tr> 
                    <td>
                        District
                    </td>
                    <td>
                        <select name="moveFromDistrict" id="moveFromDistrict" >                     
                            <option value="Nil">-------------Select-------------</option>                                 
                        </select>
                    </td>
                    <td>
                        District
                    </td>
                    <td>
                         <select name="moveToDistrict" id="moveToDistrict" >                     
                             <option value="Nil">-------------Select-------------</option>                                 
                         </select>
                    </td>
                </tr>  
                <tr>                    
                    <td colspan="4" style="background-color: #34495e">
                        <font color="white"> Expecting Date  </font>
                    </td>
                </tr>   
                <tr> 
                    <td>
                        Start Date
                    </td>                                
                    <td>
                        <input type="date" name="startDate" requird="" style="padding-top: 0px;">
                    </td>
                     <td>
                        Distance
                    </td>

                    <td>
                        <input type="text" name="distance" requird="">  
                   </td>
                </tr>  
                <tr>         
                    <td>
                        Finish Date
                    </td>
                    <td>
                        <input type="date" name="finishDate" requird="" style="padding-top: 0px;">
                    </td>
                    <td>
                        Road Type
                    </td>
                   <td>
                      <input type="text"name="roadType">
                   </td>
                </tr>  
                <tr>
                    <td colspan="2">
                    <center>   <input type="reset" value="Reset" name="buttonReset" >
                    </td>
                    <td colspan="2">
                    <center> <input type="submit" value="Submit" name="buttonSubmit" >
                    </td>
                </tr>
            </table>
                        
            <!-- FOOTER  STARTS-->            
            </form>
            </body>
            </html>
        </td>
    </tr>   
</table>
</div>   
<%@include file="UserHomeFooter.jsp" %>

    