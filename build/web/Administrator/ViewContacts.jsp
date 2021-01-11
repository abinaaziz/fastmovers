<!-- HEADER  STARTS-->
<%@include file="AdminHomeHeader.jsp" %>

<div class="div_login">


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
    
     <% 
        
    String GetURLVal1="";
    System.out.println("delete");
    if(request.getParameter("delete")!=null)  
    {
        GetURLVal1=request.getParameter("URLVal1"); 
        String queryDelete="delete from tbl_contacts where contactID="+GetURLVal1;
        obj.executeCommand(queryDelete);
        response.sendRedirect("ViewContacts.jsp");
    }
    
    if(request.getParameter("edit")!=null)
    {
        GetURLVal1=request.getParameter("URLVal1"); 
        String queryUpadate="update tbl_contacts set status='1' where contactID="+GetURLVal1;
        obj.executeCommand(queryUpadate);
        
        response.sendRedirect("ViewContacts.jsp");
    }
   
    %>
    
    <body>
    
     <div align="center" style="padding-top: 10px;" >         
         
                            <table class="Dispaly_Table" border="1">
                                <caption>
                                    <h2> ENQUIRIES  </h2>
                                </caption> 
                                
                                    <tr>
                                        <th>SL-NO</th>
                                        <th>CONTACT NAME</th>
                                        <th>E MAIL ADDRESS</th>
                                        <th>MESSAGE FROM USERS</th>
                                        <th>STATUS</th>
                                        <th>REPLAY</th>
                                        <th>DELETE</th>
                                    </tr>
                                <%
                                    String contactID = "";
                                    String contactName = "";
                                    String email= "";
                                    String message= "";
                                    String status= "";
                                    
                                    String querySelect1 = "SELECT "
                                    + "a.contactID, "
                                    + "a.contactName, "
                                    + "a.email, "
                                    + "a.message, "
                                    + "a.status "
                                  
                                    + " FROM "
                                         
                                    + "tbl_contacts a"
                                 
                                    + " ORDER BY "
                                    + " a.contactID";
                                    
                                    
                                    System.out.print(querySelect1);
                            
                                    int k=0;
                                    String enquireStatus=""; 
                                    ResultSet rs=obj.select(querySelect1);
                                    while(rs.next())
                                    {
                                        k++;
                                        contactID  =rs.getString("contactID");
                                        contactName  =rs.getString("contactName");
                                        email  =rs.getString("email");
                                        message =rs.getString("message");
                                        status =rs.getString("status");
                                        if(status.equals("0"))
                                        {
                                            enquireStatus="Please Replay";
                                        }
                                        else if(status.equals("1"))
                                        {
                                            enquireStatus="Replay Send";
                                        }
                                %>
                                
                                
                                    <tr>
                                        <td>
                                           <%=k%>
                                        </td>
                                        <td style="white-space: nowrap;">
                                            <%=contactName%>
                                        </td>
                                        <td>
                                           <%=email%>
                                        </td>
                                        <td>
                                            <%=message%>
                                        </td>
                                        <td style="white-space: nowrap;">
                                            <%=enquireStatus%>
                                        </td>
                                        <td style="width: 80px;">
                                            <a href="ViewContacts.jsp?edit=1&URLVal1=<%=contactID%>&URLVal2=<%=contactName%>"><img src="../TemplateStyleFiles/EditIcon.png" height="30px" width="30px"/></a>
                                        </td>
                                        <td style="width: 80px;">
                                            <a href="ViewContacts.jsp?delete=1&URLVal1=<%=contactID%>"><img src="../TemplateStyleFiles/DeleteIcon.png" height="30px" width="30px"/></a>
                                        </td>
                                    </tr>
                                    
                               

                                <%
                                   }
                                %>
                             
                               </table>
        </table>
        </div>
    </form>
    </body>
</html>

<!-- FOOTER  STARTS-->
       <!-- FOOTER  STARTS-->
        </td>
        
    </tr>
</table>

</div>    

<%@include file="AdminHomeFooter.jsp" %>
<!-- FOOTER  ENDS-->