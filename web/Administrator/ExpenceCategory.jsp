
<!-- HEADER  STARTS-->
<%@include file="AdminHomeHeader.jsp" %>

<div class="div_login">

<div class="div_Heading" >
    <p class="align_center_p"></p>
</div>
              
    
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
        <title></title>
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
            
            String queryUpadate="update tbl_expence_category set expenceCategoryName='"+TValue1+"' where expenceCategoryID="+GetURLVal1;
            obj.executeCommand(queryUpadate);
        
        }
        else
        {
            
           
            String querySelectSC="select * from tbl_expence_category";
            ResultSet rsSC=obj.select(querySelectSC);
            int flag=0;
            while(rsSC.next())
            {
                flag++;
            }
            System.out.println(flag);
            if(flag>0)
            {
            String queryInsert="insert into tbl_expence_category(expenceCategoryName)values('"+TValue1+"')";
            obj.executeCommand(queryInsert);             
            }
            else
            {
                //inserting Service
                String queryInsertSC="insert into tbl_expence_category(expenceCategoryName)values('Service Charge')";
                obj.executeCommand(queryInsertSC);
                
                String queryInsert="insert into tbl_expence_category(expenceCategoryName)values('"+TValue1+"')";
                obj.executeCommand(queryInsert);
            }
        }
        response.sendRedirect("ExpenceCategory.jsp");
    }
    
    if(request.getParameter("delete")!=null)  //Delete Button Code
    {
        GetURLVal1=request.getParameter("URLVal1"); 
        String queryDelete="delete from tbl_expence_category where expenceCategoryID="+GetURLVal1;
        obj.executeCommand(queryDelete);
        response.sendRedirect("ExpenceCategory.jsp");
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
            <table class="Content_Table">
                <caption>
                  <h2> Expense Category</h2>
                </caption> 
             
                <tr>
                    <td>Expense Category</td>
                    <td><input type="text" name="T1" value="<%=GetURLVal2%>" required="" /></td>
                </tr>
              
                <tr>
                    <td></td>
                    <td> <input class="btn btn-primary"type="submit" value="Submit" name="B_Submit" /></td>
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
                <table class="Dispaly_TableAdmin">
                  <caption>
                  <h2> Expense Categories</h2>
                </caption> 
                                <tr>
                                    <th>Category</th>
                                    <th>EDIT</th>
                                    <th>DELETE</th>
                                </tr>
                                <%
                                    String V1="";
                                    String V2="";   
                                    String querySelect="select * from tbl_expence_category";
                                    ResultSet rs=obj.select(querySelect);
                                    while(rs.next())
                                    {
                                        V1=rs.getString("expenceCategoryID");
                                        V2=rs.getString("expenceCategoryName");
                                %>
                                
                                <tr>
                                    <td><% out.print(V2); %></td>
                                    <%
                                    if( V2.equalsIgnoreCase("Service Charge") )
                                    {
                                    %>  
                                    <td  style="width: 80px;">
                                        <img src="../TemplateStyleFiles/EditIcon.png" height="30px" width="30px"></a>
                                    </td>
                                    <td  style="width: 80px;">
                                        <img src="../TemplateStyleFiles/DeleteIcon.png" height="30px" width="30px"></a>
                                    </td>
                                    <%
                                    }
                                    else
                                    {
                                    %>
                                    <td  style="width: 80px;">
                                        <a href="ExpenceCategory.jsp?edit=1&URLVal1=<% out.print(V1); %>&URLVal2=<% out.print(V2);%>"><img src="../TemplateStyleFiles/EditIcon.png" height="30px" width="30px"></a>
                                    </td>
                                    <td  style="width: 80px;">
                                        <a href="ExpenceCategory.jsp?delete=1&URLVal1=<% out.print(V1); %>"><img src="../TemplateStyleFiles/DeleteIcon.png" height="30px" width="30px"></a>
                                    </td>                                    
                                    <%
                                    }
                                    %>
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
           
        </td>
    </tr>
</table>

</div>  
<%@include file="AdminHomeFooter.jsp" %>
<!-- FOOTER  ENDS-->