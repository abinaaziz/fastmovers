<!-- HEADER  STARTS-->
<%@include file="AdminHomeHeader.jsp" %>


<div style="margin-top:150px; margin-left: 50px; margin-bottom: 50px;">
    
  
<!-- HEADER  ENDS-->  


<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="db.DBConnection" id="obj" ></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff Salary</title>
    </head>
    <body>
        <%
        
        String URLsalaryDetailsID="";
       
        String staffID = "";
        String salary = "";
        String allowdedCasualLeaves = "";
        String salaryDate = "";
        String description = "";
      
        if(request.getParameter("delete")!=null)  
        {    
            URLsalaryDetailsID=request.getParameter("salaryDetailsID");
            String queryDelete="delete from tbl_salary_details where salaryDetailsID="+URLsalaryDetailsID;
            boolean result=obj.executeCommand(queryDelete);
            if(result)
            {
                out.print("<script>alert('Deleted')</script>");
            }
            else
            {
                out.print("<script>alert('Not Deleted')</script>");
            }
            response.sendRedirect("SalaryDetails.jsp");
        }
        
        if (request.getParameter("edit") != null)
        {   
            URLsalaryDetailsID=request.getParameter("salaryDetailsID");
            String querySelect="select * from tbl_salary_details where salaryDetailsID="+URLsalaryDetailsID;
            System.out.print("querySelect eid="+querySelect);
            ResultSet rs=obj.select(querySelect);                
            if(rs.next())
            {
                staffID =rs.getString("staffID");
                salary =rs.getString("salary");
                allowdedCasualLeaves =rs.getString("allowdedCasualLeaves");
                salaryDate =rs.getString("salaryDate");
                description =rs.getString("description");
            } 
                
        }
        
        
        if (request.getParameter("B_Submit")!=null)
            {
                System.out.println("Q!!!");
                
                URLsalaryDetailsID=request.getParameter("salaryDetailsID");
                staffID =request.getParameter("comboStaffName");
                salary =request.getParameter("salary");
                allowdedCasualLeaves =request.getParameter("allowdedCasualLeaves");
                salaryDate =request.getParameter("salaryDate");
                description =request.getParameter("description");
                System.out.println("R!!!");
               
                
                if(request.getParameter("edit")!=null)
                {
                    System.out.println("H!!!");
                    String updateQuery="update tbl_salary_details set staffID='"+staffID+"',salary='"+salary+"',allowdedCasualLeaves='"+allowdedCasualLeaves+"',salaryDate='"+salaryDate+"',description='"+description+"' where salaryDetailsID='"+URLsalaryDetailsID+"'";
                    System.out.print("updateQuery:"+updateQuery);
                    boolean c=obj.executeCommand(updateQuery);
                    if(c)
                    {
                        out.print("<script> alert('updated')</script>");
                        response.sendRedirect("SalaryDetails.jsp");
                    }
                    else
                    {
                         out.print("<script> alert('not updated')</script>");
                    }
                }
                else
                {
                    System.out.println("R!!!");
                    String values1="'"+staffID
                    +"','"+salary
                    +"','"+allowdedCasualLeaves
                    +"','"+salaryDate
                    +"','"+description
                    +"'";
                    
                    System.out.println("Q!!!"+values1);
                    String columns= "staffID, salary, allowdedCasualLeaves,salaryDate,description";

                    String queryInsert="insert into tbl_salary_details("+columns+") values ("+values1+")";
                    System.out.println(queryInsert);
            
                    boolean b=obj.executeCommand(queryInsert);
                    if(b)
                    {
                        out.print("Inserted");
                        response.sendRedirect("SalaryDetails.jsp");
                    }
                    else
                    {
                        out.print("Not inserted");               
                    }
                }
            }
        %>
 
 <table class="Round_corner_Form_Base">
    <tr>
        <td> 
            
            <form method="post"> 
               <div align="center" >        
                   <table class="Content_Table" >

                       <caption>
                            Salary Details
                       </caption> 

                                <tr><td>Staff Name</td>
                                  <td>
                                     <select name="comboStaffName" >                      
                                           <%  //VALUE ADDING TO COMBO BOX
                                               String querySelect2 = "select * from tbl_staff_details "; 
                                               ResultSet rs2 = obj.select(querySelect2);
                                               System.out.print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+querySelect2);
                                              while (rs2.next()) 
                                               {                                                
                                           %>
                                               <option value="<%=rs2.getString("staffID")%>"     
                                               <%if(staffID.equals(rs2.getString("staffID")))
                                                {
                                               %>
                                                   selected="selected"
                                               <%}%> >

                                               <%=rs2.getString("staffID")%> / <%=rs2.getString("firstName")%> <%=rs2.getString("lastName")%></option>
                                               <%
                                               }
                                               %>


                                           </select> </td></tr>  

                              <tr><td>Salary</td><td>
                                      <input type="number" name="salary"  requird="" value="<%=salary%>"> 

                              <tr><td>Allowed Casual Leaves</td>
                                  <td><input type="number" name="allowdedCasualLeaves" placeholder="Per Month" requird="" value="<%=allowdedCasualLeaves%>" > 
                                  </td></tr> 

                              <tr><td>Salary Date</td>
                                  <td>
                                      <input type="date"name="salaryDate"  value="<%=salaryDate%>" style="padding-top: 0px;">
                                          </td></tr>

                               <tr><td>Description</td>
                                  <td>
                                       <textarea name="description" ><%=description%></textarea> </td></tr>

                                <tr>
                                   <td> 
                                       <input type="reset" value="Reset" name="buttonReset" >
                                   </td>
                                   <td >
                                           <input  type="submit" value="Submit" name="B_Submit" >
                                   </td>
                               </tr>
                   </table>
               </div>
                     
                       
        </td>
        <td style="vertical-align: middle">
               <!-- Small Slide  STARTS-->
               <%@include file="../TemplateStyleFiles/SmallSlideBar.jsp" %>
               <!-- Small Slide  ENDS-->
        </td>
     </tr>

     <tr>
         <td colspan="2">
     
            <div>         
                <table class="Dispaly_Table" >
                    <caption>
                        Salary Details
                    </caption>  

                        <tr>
                            <th>Salary Details ID</th>
                            <th>Staff Name</th>
                            <th>Salary </th>
                            <th>Casual Leaves</th>
                            <th>Salary Date</th>
                            <th>Description</th>
                            <th>EDIT</th>
                            <th>DELETE</th>
                        </tr>
                        <%

                           // String SSNstaffID2=session.getAttribute("staffID").toString(); 
                           // String querySelect="select * from tbl_salary_details where staffID='"+SSNstaffID2+"'";
                            String querySelect="select a.salaryDetailsID,"
                                    + "b.firstName,"
                                    + "b.lastName,"
                                    + "a.salary,"
                                    + "a.allowdedCasualLeaves,"
                                    + "a.salaryDate,"
                                    + "a.description"
                                    + " from tbl_salary_details a,"
                                    + "tbl_staff_details b"
                                    + " WHERE "
                                    + "a.staffID = b.staffID";

                            ResultSet rs=obj.select(querySelect);
                            //System.out.println("File upload file is strt invoking 2:-querySelect"+querySelect);

                            while(rs.next())
                            {
                        %>

                        <tr>
                            <td align="center"><%=rs.getString("salaryDetailsID")%></td>
                             <td><%=rs.getString("firstName")%> <%=rs.getString("lastName")%></td>
                            <td><%=rs.getString("salary")%></td>
                            <td><%=rs.getString("allowdedCasualLeaves")%></td>
                            <td><%=rs.getString("salaryDate")%></td>
                            <td><%=rs.getString("description")%></td>                                     

                            <td  style="width: 80px;"><a href="SalaryDetails.jsp?edit=1&salaryDetailsID=<%=rs.getString("salaryDetailsID")%>"><img src="../TemplateStyleFiles/EditIcon.png" height="30px" width="30px"></a></td>
                            <td  style="width: 80px;"><a href="SalaryDetails.jsp?delete=1&salaryDetailsID=<%=rs.getString("salaryDetailsID")%>"><img src="../TemplateStyleFiles/DeleteIcon.png" height="30px" width="30px"></a></td>
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
        </td>
    </tr>
</table>

</div>    

<%@include file="AdminHomeFooter.jsp" %>
<!-- FOOTER  ENDS-->
    