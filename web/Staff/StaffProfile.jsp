
<!-- HEADER  STARTS-->
<%@include file="StaffHomeHeader.jsp" %>


<div style="margin-top:150px; margin-left: 50px; margin-bottom: 50px;">
<table class="Round_corner_Form_Base">
    <tr>
        <td rowspan="4">   
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop Owner Profile</title>
    </head>
    <body class="backgroungPicture1">
        <%
        String SSNstaffID=session.getAttribute("staffID").toString();    
        String firstName = "";
        String lastName= "";
        String address= "";
        String postbox= "";
        String place= "";
        String pincode= "";
        String district= "";
        String state= "";
        String gender= "";
        String contactNumber= "";
        String mobileNumber= "";
        String email= "";
        String qualification= "";
        String dateOfBirth= "";
        String maritalStatus= "";
        String userName= "";
        String password= "";
        String recoveryQuestion= "";
        String answer= "";
        String staffCategoryID= "";
        String profilePicture= "";
        
        if (SSNstaffID != null) 
        {
        String querySelect1 = "select * from tbl_staff_details where staffID='"+SSNstaffID+"'";
        ResultSet rs1 = obj.select(querySelect1);
        while (rs1.next()) 
        {
            firstName=rs1.getString("firstName");            
            lastName =rs1.getString("lastName");
            address=rs1.getString("address");
            postbox=rs1.getString("postbox");
            place=rs1.getString("place");
            
            pincode=rs1.getString("pincode");
            district=rs1.getString("district");
            state=rs1.getString("state");
            gender=rs1.getString("gender");
            contactNumber=rs1.getString("contactNumber");
            
            mobileNumber=rs1.getString("mobileNumber");
            email=rs1.getString("email");
            qualification=rs1.getString("qualification");
            dateOfBirth=rs1.getString("dateOfBirth");
            maritalStatus=rs1.getString("maritalStatus");
            
            userName=rs1.getString("userName");
            password=rs1.getString("password");
            recoveryQuestion=rs1.getString("recoveryQuestion");
            answer=rs1.getString("answer");
            staffCategoryID=rs1.getString("staffCategoryID");
            profilePicture=rs1.getString("profilePicture");
            }
        }
        
        if (request.getParameter("buttonSubmit")!=null)
        {
            firstName =request.getParameter("firstName");
            lastName =request.getParameter("lastName");
            address=request.getParameter("address");
            postbox=request.getParameter("postbox");
            place=request.getParameter("place");
            
            pincode=request.getParameter("pincode");
            district=request.getParameter("district");
            state=request.getParameter("state");
            gender=request.getParameter("gender");
            contactNumber=request.getParameter("contactNumber");
            
            mobileNumber=request.getParameter("mobileNumber");
            email=request.getParameter("email");
            qualification=request.getParameter("qualification");
            dateOfBirth=request.getParameter("dateOfBirth");
            maritalStatus=request.getParameter("maritalStatus");
            
            userName=request.getParameter("userName");
            password=request.getParameter("password");
            recoveryQuestion=request.getParameter("recoveryQuestion");
            answer=request.getParameter("answer");
            staffCategoryID=request.getParameter("staffCategoryID");
            profilePicture=request.getParameter("profilePicture");
                


            String values2="firstName='"+firstName
            + "',lastName='"+ lastName
            + "',address='" +address
            + "',postbox='" +postbox
            + "',place='" +place
            + "',pincode='" +pincode
            + "',district='" +district
            + "',state='" +state
            + "',gender='" +gender
            + "',contactNumber='" +contactNumber
            + "',mobileNumber='" +mobileNumber
            + "',email='" +email
            + "',qualification='" +qualification
            + "',dateOfBirth='" +dateOfBirth
            + "',maritalStatus='" +maritalStatus
            + "',userName='" +userName
            + "',password='" +password
            + "',recoveryQuestion='" +recoveryQuestion
            + "',answer='" +answer
            + "',staffCategoryID='" +staffCategoryID
            + "',profilePicture='" +profilePicture;

            String queryUpadate = "update tbl_staff_details set "+values2+ "' where staffID=" + SSNstaffID;  //EDIT
            //out.print(queryUpadate);
            obj.executeCommand(queryUpadate);        
        }
        %>
        
    
    <form name="Form1" method="POST"> 
        <div align="center" >        
            <table class="Content_Table" >
                
                <caption>
                    Profile
                </caption> 
                
                <tr>
                    <td colspan="2" style="text-align:center; vertical-align:middle;"> 
                        <img src='ProfilePictures\<%=profilePicture%>' width="100" height="100" />
                    </td>
                </tr>

               <tr><td>FIRST NAME</td>            
                   <td> <input type="text" name="firstName" requird="required" value="<%=firstName%>">  </td></tr>

               <tr><td>LAST NAME</td>
                   <td><input type="text" name="lastName" requird="" value="<%=lastName%>">  </td></tr>  
               
               <tr><td>ADDRESS</td><td>
                         <textarea name="address" requird="" ><%=address%></textarea>  </td></tr> 
                         
               <tr><td>POST OFFICE</td>
                   <td><input type="text" name="postbox" requird="" value="<%=postbox%>">  

                   </td></tr> 

               <tr><td>PLACE</td>
                   <td>
                       <input type="text"name="place" value="<%=place%>">
                           </td></tr>

               <tr><td>PIN CODE</td>
                   <td>
                          <input type="number" name="pincode" requird="" value="<%=pincode%>">  </td></tr>   

               
               <tr><td>STATE</td>
                   <td>
                          <select name="state" >
                             <option>Select</option>
                               <%
                               String selectQuery2="select * from tbl_state";
                               ResultSet rs2=obj.select(selectQuery2);
                               while (rs2.next())
                               {                                                                                                                        
                               %>
                               <option value="<%=rs2.getString("stateID")%>" <%if(state.equals(rs2.getString("stateID"))){%> selected="select"<%}%> >
                                <%=rs2.getString("stateName")%>
                               </option> 
                            <%}%>      
                           </select> 
                   </td></tr>
               
               <tr><td>DIVISION</td>
                   <td>
                          <select name="district" >
                             <option>Select</option>
                               <%
                               String selectQuery1="select * from tbl_district";
                               ResultSet rs=obj.select(selectQuery1);
                               while (rs.next())
                               {                                                                                                                        
                               %>
                               <option value="<%=rs.getString("districtID")%>" <%if(district.equals(rs.getString("districtID"))){%> selected="select"<%}%> >
                                <%=rs.getString("districtName")%>
                               </option> 
                               
                               <%}%>
                           </select> 
                   </td></tr>

 
              
               <tr>               
                   <td>GENDER</td>
                   <td>            
                       <input type="text" name="gender" required="" value="<%=gender%>">
                   </td></tr>

               <tr><td>CONTACT NUMBER</td>
                   <td>
                          <input type="number" name="contactNumber" requird="" value="<%=contactNumber%>">  </td></tr>  
               <tr><td>MOBILE NUMBER</td>
                   <td>
                          <input type="number" name="mobileNumber" requird="" value="<%=mobileNumber%>">  </td></tr>  

               <tr><td>EMAIL ID</td>
                   <td>
                          <input type="email" name="email"  requird="" value="<%=email%>">  </td></tr> 

               <tr><td>QUALIFICATION</td>
                   <td>
                   <input type="text" name="qualification" value="<%=qualification%>">  </td></tr>   
                
               <tr><td>DATE OF BIRTH</td>
                   <td>
                       <input type="date" name="dateOfBirth" requird="" value="<%=dateOfBirth%>" style="padding-top: 0px;">
                   </td></tr>

               <tr>
                   <td>MARITAL</td>
                   <td>
                       <input type="text" name="maritalStatus" value="<%=maritalStatus%>"> </td></tr>
           
               <tr><td>USERNAME</td>
                   <td>
                        <input type="text" name="userName" requird="" value="<%=userName%>">  </td></tr> 

               <tr><td>PASSWORD</td>
                   <td>
                        <input type="password" name="password" requird="" value="<%=password%>">  </td></tr> 
                              
               <tr><td>RECOVERY QUESTION</td>
                   <td>
                        <select name="recoveryQuestion" >
                            <option>Select</option>
                            <option>Favourite Color</option>
                            <option>Favourite Place</option>
                            <option>Nick Name</option>
                        </select>
                        </td></tr> 
               
                <tr><td>ANSWER</td>
                   <td>
                        <input type="text" name="answer" requird="" value="<%=answer%>" >  </td></tr>
                
                <tr><td>CATEGORY</td>
                    <td>
                       <select name="staffCategoryID" >                      
                                <%  
                                    String querySelect = "select * from tbl_staff_category"; //EDIT
                                    ResultSet rs3 = obj.select(querySelect);
                                    
                                    while (rs3.next()) 
                                    {
                                %>
                                        <option value="<%=rs3.getString("staffCategoryID")%>"><%=rs3.getString("staffCategoryName")%> </option>
                                <%
                                    }
                                %>
                                
                            </select>
                    </td></tr>
                
               <tr><td>PHOTO</td>
                   <td>
                       <input type="file" name="profilePicture" requird="true" value="ProfilePictures\<%=profilePicture%>" >  </td></tr>  

               <tr><td colspan="2" align="center">
                        <center>   <input  type="submit" value="Submit" name="buttonSubmit" >
                        <input type="reset" value="Reset" name="buttonReset" ></center>
                        </td></tr>

           </table>
            
        </form>
    </body>
</html>


<!-- FOOTER  STARTS-->
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
<tr>        
         <td>
            <!-- Small Slide  STARTS-->
             <img src="..\TemplateStyleFiles\ContactUs.jpg"   width="400px" height="435px">
            <!-- Small Slide  ENDS-->
        </td>
    </tr>
</table>

</div>    

<%@include file="StaffHomeFooter.jsp" %>
<!-- FOOTER  ENDS-->
    