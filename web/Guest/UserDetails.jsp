<!-- HEADER  STARTS-->
<%@include file="GuestHomeHeader.jsp" %>

<div class="div_login">
             
    
<table class="Round_corner_Form_Base">
    <tr>
        <td rowspan="3">    
<!-- HEADER  ENDS-->     


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
                            document.getElementById("comboDistrict").innerHTML=http.responseText;
                        }
                    };
                    http.open("GET","ajaxdist.jsp?argsStateID="+argsStateID,true);
                    http.send();
                }
            </script>
     
    </head>
    <body class="backgroungPicture4">
        <%
         /*   
        String firstName = "";
        String lastName= "";
        String address= "";
        String postbox= "";
        String place= "";
        String pincode= "";
        String state= "";
        String district= "";        
        String gender= "";
        String contactNumber= "";
        String mobileNumber= "";
        String email= "";
        String qualification= "";
        String dateOfBirth= "";
        String maritalStatus= "";
        String userName= "";
        String password= "";
        String reEnterPassword= "";
        String recoveryQuestion= "";
        String answer= "";        
        String profilePicture= "";
        String values1="";
        String queryInsert="";
        if (request.getParameter("buttonSubmit")!=null)
        {
            firstName =request.getParameter("firstName");
            lastName =request.getParameter("lastName");
            address=request.getParameter("address");
            postbox=request.getParameter("postbox");
            place=request.getParameter("place");
            
            pincode=request.getParameter("pincode");
            state=request.getParameter("state");
            district=request.getParameter("district");            
            gender=request.getParameter("gender");
            contactNumber=request.getParameter("contactNumber");
            
            mobileNumber=request.getParameter("mobileNumber");
            email=request.getParameter("email");
            qualification=request.getParameter("qualification");
            dateOfBirth=request.getParameter("dateOfBirth");
            maritalStatus=request.getParameter("maritalStatus");
            
            userName=request.getParameter("userName");
            password=request.getParameter("password");
            reEnterPassword=request.getParameter("password2");
            recoveryQuestion=request.getParameter("recoveryQuestion");
            answer=request.getParameter("answer");         
            profilePicture=request.getParameter("profilePicture");
                


            values1="'"+firstName
            +"','"+lastName
            +"','"+address
            +"','"+postbox
            +"','"+place
           
            +"','"+pincode
            +"','"+state
            +"','"+district
            +"','"+gender
            +"','"+contactNumber
           
            +"','"+mobileNumber
            +"','"+email
            +"','"+qualification
            +"','"+dateOfBirth
            +"','"+maritalStatus
           
            +"','"+userName
            +"','"+password
            +"','"+recoveryQuestion
            +"','"+answer           
            +"','"+profilePicture
           +"'";
        
           
        String columns="firstName,lastName,address,postbox,place,
            pincode,state,district,gender,contactNumber,
            mobileNumber,email,qualification,dateOfBirth,maritalStatus,
            userName,password,recoveryQuestion,answer,profilePicture";  
        queryInsert="insert into tbl_user_details("+columns+") values ("+values1+")";
        //System.out.print(queryInsert);
        //obj.executeCommand(queryInsert);        
        }
*/
        %>
        
        <form action="UserDetailsProfilePictureUpload.jsp" enctype="multipart/form-data" method="post"> 
           
              <table class="Content_Table">
                <caption>
                    <h2> User Details</h2>
                </caption>
                  
                <tr><td>FIRST NAME</td>            
                   <td> <input type="text" name="firstName" requird="required" >  </td></tr>

                <tr><td>LAST NAME</td>
                   <td><input type="text" name="lastName" requird="" >  </td></tr>  
               
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
                          <input type="number"  name="pincode" required=""
                           oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
      maxlength = "6">  </td></tr> 
 
                <tr><td>STATE</td>
                   <td>
                        <select name="comboState" onchange="getDistrict(this.value);" class="elmtSize" >   
                                <option value="Nil">-------------Select-------------</option> 
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
                        <select name="comboDistrict" id="comboDistrict" >                     
                            <option value="Nil">-------------Select-------------</option>                                 
                        </select>
                   </td>
                </tr>

                <tr>               
                   <td>GENDER</td>
                   <td>            
                   <input type="radio" name="gender"  value="male"> Male
                   <input type="radio" name="gender"  value="female" required=""> Female</td></tr>

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
                          <input type="email" name="email" value="" requird="">  </td></tr> 

                <tr><td>QUALIFICATION</td>
                   <td>
                   <input type="text" name="qualification" >  </td></tr>   
                
                <tr><td>DATE OF BIRTH</td>
                   <td>
                       <input type="date" name="dateOfBirth" requird="" style="padding-top: 0px;">
                   </td></tr>

                <tr>
                   <td>MARITAL</td>
                   <td>
                       <input type="radio" name="maritalStatus" value="single">Single
                       <input type="radio" name="maritalStatus" value="married" >Married</td></tr>
           
                <tr><td>USERNAME</td>
                   <td>
                        <input type="text" name="userName" requird="">  </td></tr> 

                <tr><td>PASSWORD</td>
                   <td>
                        <input type="password" name="password" requird="">  </td></tr> 
                
                <tr><td>RE ENTER PASSWORD</td>
                   <td>
                        <input type="password" name="password2" required="">  </td></tr>   
                              
                <tr><td>RECOVERY QUESTION</td>
                   <td>
                        <select name="recoveryQuestion">
                            <option>-------------Select-------------</option>
                            <option>Favourite Color</option>
                            <option>Favourite Place</option>
                            <option>Nick Name</option>
                        </select>
                        </td></tr> 
               
                <tr><td>ANSWER</td>
                   <td>
                        <input type="text" name="answer" requird="">  </td></tr>               
                
                
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

<%@include file="GuestHomeFooter.jsp" %>
<!-- FOOTER  ENDS-->
    