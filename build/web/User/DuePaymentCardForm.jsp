
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<!-- HEADER  STARTS-->
<%@include file="UserHomeHeader.jsp" %>


<div class="div_login">
    
<table class="Round_corner_Form_Base">
    <tr>
        <td style="vertical-align: middle;">     
<!-- HEADER  ENDS-->   


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    
    </style>
    <script type="text/javascript">
        
	function validation(frm)
	{
		

		if((frm.card[0].checked==0)&&(frm.card[1].checked==0))
		{
		document.getElementById("divcard").innerHTML="Select Your Card Type";
		
		return false;
		}
		else
		{
			document.getElementById("divcard").innerHTML="";
		}
		if(frm.txtcardno.value=="")
		{
		document.getElementById("divcardno").innerHTML="Enter Your Card Number";
		
		return false;
		}
		else
		{
			document.getElementById("divcardno").innerHTML="";
		}
		if(frm.txtpin.value=="")
		{
		document.getElementById("divpin").innerHTML="Select Your Pin Number";
		
		return false;
		}
		else
		{
			document.getElementById("divpin").innerHTML="";
		}
		if(frm.CheckBox1.checked==false)
		{
		document.getElementById("divterms").innerHTML="Please accept the Terms & Conditions";
		
		return false;
		}
		else
		{
			document.getElementById("divterms").innerHTML="";
		}

		return true;
	}
	function valid()
	{
		var reg = /^[0-9]{14}$/;
  		var address = document.form1.txtcardno.value;
  	    if(reg.test(address) == false) 
  	    {
        alert("Enter 14 digit Card Number");
        return false;
        }
        else
        {
         alert('payment successful');
       
	}
    }
        function validpin()
	{
		var reg = /^[0-9]{4}$/;
  		var address = document.form1.txtpin.value;
  	    if(reg.test(address) == false) 
  	    {
        alert("Enter 4 digit PIN Number");
        return false;
        }
	}


	
    </script>
    
    <%
    String SSNuserID=session.getAttribute("userID").toString(); 
    String  URLsiteID=request.getParameter("siteID");  
    String  URLpayAmt=request.getParameter("payAmt");
    DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
    String currentDate = df.format(new Date());
    String bookingDate = "";
     System.out.print(">>>>>>> DATA TO ORDER HEAD insertQuery1 :"+URLpayAmt);
      
    if(request.getParameter("Continue")!=null)  
    {        
        String queryInsert="insert into tbl_payments(siteID,payedAmount,payedDate)"
        + "values('"+URLsiteID+"','"+URLpayAmt+"','"+currentDate+"')";
        System.out.print(">>>>>>> DATA TO ORDER HEAD insertQuery1 :"+queryInsert);
        obj.executeCommand(queryInsert);
        
        
//        String queryUpadate="update tbl_site_register set  status=2 WHERE siteID="+URLsiteID;              
//        obj.executeCommand(queryUpadate);
//        System.out.println(queryUpadate);
        response.sendRedirect("UserHomePage.jsp");
    }
    %>
    
</head>
<body>
    <form id="form1" action="" name="form1" method="post" onsubmit="valid();" >
    <table >
        <tr>
            <td class="style3">
                Choose Your Card Type</td>
            <td>
                <input type="radio" ID="card" Text="Visa" name="card"  Width="50px" CssClass="style5" />&nbsp; 
                <img src="../TemplateStyleFiles/VisaCard.JPG" height="30" width="40" />
                <input type="radio" ID="card" Text="Visa"  Width="50px" CssClass="style5" name="card" />&nbsp; 
                <img src="../TemplateStyleFiles/MasterCard.JPG" height="30" width="40" />
                </td>
                <td><div id="divcard" style="color:#F00"></div></td>
        </tr>
        <tr>
            <td class="style3">
    <div>
    
        Enter Your Card Number</div>
                </td>
            <td>
                <input name="txtcardno" type="text" size="25" onblur="valid();" value="12345678978945" />
            </td>
            <td><div id="divcardno" style="color:#F00"></div></td>
        </tr>
        <tr>
            <td class="style3">
                Enter 4 Digit Confirmation PIN</td>
            <td>
               <input name="txtpin" type="password" size="25" onblur="validpin();" value="1234"/>
            </td>
             <td><div id="divpin" style="color:#F00"></div></td>
        </tr>
        <tr>
            <td class="style2">&nbsp;
            </td>
            <td>
                <b>
               <input type="CheckBox" ID="CheckBox1" name="CheckBox1"  />&nbsp;I Accept the Terms &amp; Conditions</b>
            </td>
            <td>
              <div style="color:#F00" id="divterms">  </div>
            </td>
        </tr>
       
        <tr>
          
            <td class="style2">&nbsp;
                </td>
            <td>
                <input type="submit" ID="Continue" value="Continue"  name="Continue" onclick="return validation(form1)"/>
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

<%@include file="UserHomeFooter.jsp" %>
<!-- FOOTER 