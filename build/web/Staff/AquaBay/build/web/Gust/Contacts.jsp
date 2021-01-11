
<!-- HEADER  STARTS-->
<%@include file="GuestHomeHeader.jsp" %>
<body class="backgroungPicture4">
    
<div class="div_login">

<div class="div_Heading" >
    <p class="align_center_p"> Contact Us </p>
</div>
              
    
<table class="Round_corner_Form_Base" style="width: 900px;">
    <tr>
        <td rowspan="2">    
<!-- HEADER  ENDS-->  

    <% 
        if(request.getParameter("B_Submit")!=null) 
        {
            String contactName=request.getParameter("contactName");
            String email=request.getParameter("email");
            String message=request.getParameter("message");
            String queryInsert="insert into tbl_contacts(contactName,email,message)values('"+contactName+"','"+email+"','"+message+"')";
            obj.executeCommand(queryInsert); //Reload the same page or refresh the same page
            response.sendRedirect("GuestHomePage.jsp");
        }
    %>
    
    <!-- === BEGIN CONTENT === -->

                    <!-- Main Content -->
                    <div class="headline" >
                        <h2>Contact Us</h2>
                    </div >
                    <div style="text-align: justify; text-justify: inter-word; width: 365px;">
                        <p>
                            Please Contact if you have any doubt or any requirement. Our staff is always ready to help you in any time.
                            Enter your email address and enter your requirement in message box and send it to us. We will contact you later.
                            our replay message will come to your email address as soon as fast. 
                        </p>
                    </div>
                    <br>
                    <!-- Contact Form -->
                    <form>
                        <label>Name</label>
                        <div class="row margin-bottom-20">
                            <div class="col-md-6 col-md-offset-0">
                                <input  name="contactName" type="text"  style="width: 350px;">
                            </div>
                        </div>
                        <label>Email
                            <span class="color-red">*</span>
                        </label>
                        <div class="row margin-bottom-20">
                            <div class="col-md-6 col-md-offset-0">
                                <input  required="" type="email" name="email" style="width: 350px;">
                            </div>
                        </div>
                        <label>Message</label>
                        <div class="row margin-bottom-20">
                            <div class="col-md-8 col-md-offset-0">
                                <textarea name="message"  rows="8" style="height: 100px; width: 350px;"></textarea>
                            </div>
                        </div>
                        <p>
                            <input  type="submit" value="Submit" name="B_Submit" style="width: 350px;" >
                        </p>
                    </form>
                    <!-- End Contact Form -->
                    <!-- End Main Content -->
              

    
<!-- FOOTER  STARTS-->
        </td>

        <td >
            <!-- Small Slide  STARTS-->
            <%@include file="../TemplateStyleFiles/SmallSlideBar.jsp" %>
            <!-- Small Slide  ENDS-->
        </td>
    </tr>
    <tr>
        <td >
            <!-- Small Slide  STARTS-->
            <%@include file="../TemplateStyleFiles/SmallSlideBar.jsp" %>
            <!-- Small Slide  ENDS-->
        </td>
    </tr>
</table>

</div>    
</body>
<%@include file="GuestHomeFooter.jsp" %>
<!-- FOOTER  ENDS-->