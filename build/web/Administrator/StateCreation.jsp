<!-- HEADER  STARTS-->
<%@include file="AdminHomeHeader.jsp" %>

<div style="margin-top:150px; margin-left: 50px; margin-bottom: 50px;">
           
    
<table class="Round_corner_Form_Base">
    <tr>
        <td style="vertical-align: middle;">     
<!-- HEADER  ENDS-->    

<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.DBConnection" id="obj" ></jsp:useBean>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <% //This JSP Block only invokes when value reached from URL that is: When EDIT or DELETE or SUBMEI Button Click 
        
    String GetURLVal1="";
    String GetURLVal2="";   
    
    if(request.getParameter("B_Submit")!=null)  //Submit Button Code -Checking the url passed argument named "edit" is null on not.
    {
        String TValue1=request.getParameter("T1");
        GetURLVal1=request.getParameter("URLVal1"); 
        if(request.getParameter("edit")!=null)
        {
            
            String queryUpadate="update tbl_state set stateName='"+TValue1+"' where stateID="+GetURLVal1;
            obj.executeCommand(queryUpadate);
        
        }
        else
        {
            String queryInsert="insert into tbl_state(stateName)values('"+TValue1+"')";
            obj.executeCommand(queryInsert); //Reload the same page or refresh the same page
        }
        response.sendRedirect("StateCreation.jsp");
    }
    
    if(request.getParameter("delete")!=null)  //Delete Button Code
    {
        GetURLVal1=request.getParameter("URLVal1"); 
        String queryDelete="delete from tbl_state where stateID="+GetURLVal1;
        obj.executeCommand(queryDelete);
        response.sendRedirect("StateCreation.jsp");
    }
    
    if(request.getParameter("edit")!=null)//Edit Button Code After Editing Submit Button Code executes Agin
    {
        GetURLVal1=request.getParameter("URLVal1"); 
        GetURLVal2=request.getParameter("URLVal2"); 
        
    }
   
    %>
    
    <form name="Form1" method="POST"> 
            
        <table class="one" >
        <div align="center" >        
            <table class="Content_Table" border="1">
                <caption
                     style="font-family:verdana;font-size: 30px;color:black">

                    <h2> state creation</h2>
                    
                </caption>
                <tr>
                    <td>State Name</td>
                    <td><input type="text" name="T1" value="<%=GetURLVal2%>" required /></td>
                </tr>
                <tr>
                    
                    <td >
                        <input type="reset" name="btnreset" value="Reset">    
                    </td>
                    <td >
                <center> <input type="submit" value="Submit" name="B_Submit" />
                    </td>
                </tr>
                
                
                
                
            </table>
        </div>
        </td>
        
        <td style="vertical-align: top;">
            <!-- Small Slide  STARTS-->
            <%@include file="../TemplateStyleFiles/SmallSlideBar.jsp" %>
            <!-- Small Slide  ENDS-->
        </td>
       
    </tr>
    
    <tr>
        <td>
            <div align="center" >         
                <table class="Dispaly_Table">

                     <caption>
                         <h2>State Details</h2>
                     </caption>  




                                    <tr>
                                        <th>STATE</th>
                                        <th>EDIT</th>
                                        <th>DELETE</th>
                                    </tr>
                                    <%
                                        String V1="";
                                        String V2="";   
                                        String querySelect="select * from tbl_state";
                                        ResultSet rs=obj.select(querySelect);
                                        while(rs.next())
                                        {
                                            V1=rs.getString("stateID");
                                            V2=rs.getString("stateName");
                                    %>

                                    <tr>
                                        <td><% out.print(V2); %></td>
                                        <td style="width: 80px;"><a href="StateCreation.jsp?edit=1&URLVal1=<% out.print(V1); %>&URLVal2=<% out.print(V2);%>"><img src="../TemplateStyleFiles/EditIcon.png" height="30px" width="30px"/></a></td>
                                        <td style="width: 80px;"><a href="StateCreation.jsp?delete=1&URLVal1=<% out.print(V1); %>"><img src="../TemplateStyleFiles/DeleteIcon.png" height="30px" width="30px"/></a></td>
                                    </tr>

                                    <%
                                       }
                                    %>




                </table>
            </div>              
        
            </form>
            </body>
            </html>


        
<!-- FOOTER  STARTS-->
       <!-- FOOTER  STARTS-->
        </td>
        <td>
            <!-- Small Slide  STARTS-->
            <%@include file="../TemplateStyleFiles/SmallSlideBar.jsp" %>
            <!-- Small Slide  ENDS-->
        </td>
    </tr>
</table>

</div>    

<%@include file="AdminHomeFooter.jsp" %>
<!-- FOOTER  ENDS-->