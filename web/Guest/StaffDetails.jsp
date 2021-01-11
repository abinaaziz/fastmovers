<!-- HEADER  STARTS-->
<%@include file="GuestHomeHeader.jsp" %>

<div class="div_login">

<div class="div_Heading" >
    <p class="align_center_p"> Staff Details </p>
</div>
              
    
<table class="Round_corner_Form_Base">
    <tr>
        <td rowspan="2">    
<!-- HEADER  ENDS-->    

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Member Application</title>
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
            
            function validate(){
                var pass = document.getElementById("pass").value;
                var repass = document.getElementById("repass").value;
                if(pass == repass){
                    alert("Success");
                    return true;
                }
                else{
                    alert("Passwords are not same");
                    return false;
                }
            }

    </script>
    </head>
    <body>
        <form action="StaffProfilePictureUpload.jsp" enctype="multipart/form-data" method="post">
            
            <table class="Content_Table">
                <caption>
                    <h2> Staff Details</h2>
                </caption>
               <tr><td>FIRST NAME</td>            
                   <td> <input type="text"  name="firstName" required="" >  </td></tr>

               <tr><td>LAST NAME</td>
                   <td><input type="text" name="lastName" required="" >  </td></tr>  
               
               <tr><td>ADDRESS</td><td>
                         <textarea  name="address" required="" ></textarea>  </td></tr> 
                         
               <tr><td>POST OFFICE</td>
                   <td><input type="text" name="postbox" required="">  

                   </td></tr> 

               <tr><td>PLACE</td>
                   <td>
                       <input type="text"name="place" required="">
                           </td></tr>

               <tr><td>PIN CODE</td>
                   <td>
                          <input type="number"  name="pincode" required=""
                           oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
      maxlength = "6">  </td></tr>  

               <tr><td>STATE</td>
                   <td>
                          <select  name="comboState" onchange="getDistrict(this.value);" >   
                                <option value="">--------Select--------</option> 
                                <%  //VALUE ADDING TO COMBO BOX
                                    String querySelect = "select * from tbl_state"; 
                                    ResultSet rs = obj.select(querySelect);
                                    while (rs.next()) 
                                    {
                                %>
                                        <option value="<%=rs.getString("stateID") %>"> <%=rs.getString("stateName")%> </option>  
                                <%
                                    }
                                %>
                        </select>   
                   </td></tr>

 
               <tr><td>DISTRICT</td>
                   <td>
                          <select  name="comboDistrict" id="comboDistrict" >                     
                            <option value="">--------Select--------</option>                                 
                        </select>
                   </td></tr>
              
               <tr>               
                   <td>GENDER</td>
                   <td>            
                   <input type="radio" name="gender" required="" value="Male"> Male
                   <input type="radio" name="gender" required="" value="Female" required="" > Female</td></tr>

               <tr><td>CONTACT NUMBER</td>
                   <td>
                          <input type="number" name="contactNumber" required="" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
    maxlength = "10" min="10"> </td></tr>  
                <tr><td>MOBILE NUMBER</td>
                   <td>
                          <input type="number" name="mobileNumber" required="" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
    maxlength = "10" min="10">  </td></tr>  


               <tr><td>EMAIL ID</td>
                   <td>
                          <input type="email" name="email" value="email" required="">  </td></tr> 

               <tr><td>QUALIFICATION</td>
                   <td>
                   <input type="text" name="qualification" >  </td></tr>   
                
               <tr><td>DATE OF BIRTH</td>
                   <td>
                       <input type="date" name="dateOfBirth" required="">
                   </td></tr>

               <tr>
                   <td>MARITAL</td>
                   <td>
                       <input type="radio" name="maritalStatus" value="Single">Single
                       <input type="radio" name="maritalStatus" value="Married">Married</td></tr>
           
               <tr><td>USERNAME</td>
                   <td>
                        <input type="text" name="userName" required="">  </td></tr> 

               <tr><td>PASSWORD</td>
                   <td>
                        <input type="password" name="password" required="">  </td></tr> 
               
                <tr><td>RE ENTER PASSWORD</td>
                   <td>
                        <input type="password" name="password2" required="">  </td></tr>   
                
               <tr><td>RECOVERY QUESTION</td>
                   <td>
                        <select   name="recoveryQuestion" >
                            <option>Select</option>
                            <option>Favourite Color</option>
                            <option>Favourite Place</option>
                            <option>Nick Name</option>
                        </select>
                        </td></tr> 
               
                <tr><td>ANSWER</td>
                   <td>
                        <input type="text" name="answer" required="">  </td></tr>
                
                <tr><td>CATEGORY</td>
                    <td>
                       <select  name="staffCategoryID">                      
                            <%  //VALUE ADDING TO COMBO BOX
                            String querySelect2 = "select * from tbl_staff_category"; 
                            ResultSet rs3 = obj.select(querySelect2);
                            while (rs3.next()) 
                            {
                            %>
                                <option value="<%=rs3.getString("staffCategoryID")%>">  <%=rs3.getString("staffCategoryName")%> </option>
                            <%
                            }
                            %>
                                
                        </select>
                    </td></tr>
                
               <tr><td>PHOTO</td>
                    
                    <td>
                        <input  type="file" name="profilePicture" requird="" /> 
                   </td>
               </tr>   
              <tr><td >
                        <input type="reset" value="Reset" name="buttonReset" >
                     </td>
                    <td >
                      <center>   <input type="submit" value="Submit" name="buttonSubmit" >
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
            
            <!-- Small Slide  ENDS-->
        </td>
    </tr>
    <tr>
        <td>
            <!-- Small Slide  STARTS-->
           
            <!-- Small Slide  ENDS-->
        </td>
    </tr>
</table>

</div>    

<%@include file="GuestHomeFooter.jsp" %>
<!-- FOOTER  ENDS-->