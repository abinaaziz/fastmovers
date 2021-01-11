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
                        document.getElementById("pondDistrict").innerHTML=http.responseText;
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
                        document.getElementById("district").innerHTML=http.responseText;
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
             
             <table class="Content_Table" border="0" style="width: 900px;" >
                <caption>
                    <h2> Get a Quote</h2>
                </caption>
                <tr>                    
                    <td colspan="2" style="background-color: #34495e">
                        <font color="white">Pond Description</font>
                    </td>
                </tr>    
                <tr>                    
                    <td>Pond Type</td>
                    <td>
                        <select name="comboPondCategory"   >   
                            <option value="Nil">-------------Select-------------</option> 
                            <%  //VALUE ADDING TO COMBO BOX
                            String querySelect = "select * from tbl_pondcategory"; 
                            ResultSet rs = obj.select(querySelect);
                            while (rs.next()) 
                            {
                            %>
                                <option value="<%=rs.getString("pondCategoryID") %>"> <%=rs.getString("pondCategoryName")%> </option>  
                            <%
                            }
                            %>
                        </select>  
                   
                </tr>  
                <tr>                    
                    <td>Pond Picture</td>
                    <td>
                        <input type="file" name="pondImage" requird="">  
                    </td>
                </tr>   
                <tr>  
                    <td>
                        Pond Aria (in Squire Feet)
                    </td>                                 
                    <td> 
                        <input type="text" name="pondAria" requird="required" >  
                    </td>
                </tr>  
                 <tr>  
                    <td>
                        Farm Bed Aria (in Squire Feet)
                    </td>
                   <td>
                      <input type="text"name="farmBedAria">
                   </td>
                </tr>  
                <tr>                    
                    <td colspan="2" style="background-color: #34495e">
                        <font color="white">Pond Location</font>
                    </td>
                </tr>   
                 <tr>  
                    <td>
                        Place
                    </td>

                    <td>
                        <input type="text" name="pondPlace" requird="">  
                   </td>
                   
                </tr>  
                
                <tr>                                                
                    <td>
                        Contact Address
                    </td>
                    <td>
                            <textarea  name="pondAddress" requird="" ></textarea>  
                    </td>
                   
                </tr>  
                <tr>        
                    <td>
                        State
                    </td>
                    <td>
                        <select name="pondState" onchange="getDistrict(this.value);" class="elmtSize" >   
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
                </tr>  
                <tr> 
                    <td>
                        District
                    </td>
                    <td>
                        <select name="pondDistrict" id="pondDistrict" >                     
                            <option value="Nil">-------------Select-------------</option>                                 
                        </select>
                    </td>
                </tr>  
                <tr>                    
                    <td colspan="2" style="background-color: #34495e">
                        <font color="white"> Installation Expect Date  </font>
                    </td>
                </tr>   
                <tr> 
                    <td>
                        Start Installation From
                    </td>                                
                    <td>
                        <input type="date" name="startDate" requird="" style="padding-top: 0px;">
                    </td>
                </tr>  
                <tr>         
                    <td>
                        Finish Installation At
                    </td>
                    <td>
                        <input type="date" name="finishDate" requird="" style="padding-top: 0px;">
                    </td>
                </tr>  
                <tr>
                    <td >
                    <center>   <input type="reset" value="Reset" name="buttonReset" >
                    </td>
                    <td >
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

    