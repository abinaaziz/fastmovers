<!-- HEADER  STARTS-->
<%@include file="AdminHomeHeader.jsp" %>

<div style="margin-top:150px; margin-left: 50px; margin-bottom: 50px;">
  
<table class="Round_corner_Form_Base">
    <tr>
        <td style="vertical-align: middle;">     
<!-- HEADER  ENDS-->  

<jsp:useBean class="db.DBConnection" id="obj" ></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <%
            String did=request.getParameter("did");
            String eid=request.getParameter("eid");
            
            String varDistrictName="";
            String varStateID="";
            String varState="";
             
            if (eid!=null)
            {
                String selectQuery="select * from tbl_district where districtID="+eid;
                ResultSet rs=obj.select(selectQuery);
                if(rs.next())
                {
                    varDistrictName=rs.getString("districtName");
                    varStateID=rs.getString("stateID");
                }
            }
            if(did!=null)
            {
                String del="delete from tbl_district where districtID='"+did+"'";
                obj.executeCommand(del);
            }
            
            if (request.getParameter("btnsubmit")!=null)
            {
                varDistrictName=request.getParameter("txtDistrictName");                
                varState=request.getParameter("comboState");
                String hid=request.getParameter("hid");
                if(!hid.equals("null"))
                {
                    String updateQuery="update tbl_district set districtName='"+varDistrictName+"',stateID='"+varState+"' where districtID='"+hid+"'";
                    System.out.print("updateQuery:"+updateQuery);
                    boolean c=obj.executeCommand(updateQuery);
                    if(c)
                    {
                        out.print("<script> alert('updated')</script>");
                        response.sendRedirect("DistrictCreation.jsp");
                    }
                    else
                    {
                         out.print("<script> alert('not updated')</script>");
                    }
                }
                else
                {
                    String ins="insert into tbl_district(stateID,districtName)values('"+varState+"','"+varDistrictName+"')";
                    out.print(ins);
                    boolean b=obj.executeCommand(ins);
                    if(b)
                    {
                        out.print("inserted");
                        response.sendRedirect("DistrictCreation.jsp");
                    }
                    else
                    {
                        out.print("Not inserted");               
                    }
                }
        }
        %>
            
        <form name="Form1" method="POST"> 
            
        <table class="one" >
        <div align="center" >        
            <table class="Content_Table">
                <caption>
                    <h2>District Creation</h2>
                </caption> 
                
                    <td>
                        State
                    </td>
                    <td>
                        <select name="comboState" >
                            <option name="sel>">-------------Select-------------</option>
                            <%String sel="select * from tbl_state";
                            ResultSet rs=obj.select(sel);
                            while (rs.next())
                            {                                                                                            
                            %>
                            <option value="<%=rs.getString("stateID")%>" <%if(varStateID.equals(rs.getString("stateID"))){%> selected="select"<%}%> >

                                <%=rs.getString("stateName")%></option> 
                            <%}%>                            
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        District
                    </td>
                    <td>
                        <input type="text" name="txtDistrictName" value="<%=varDistrictName%>" required="" >                        
                    </td>
                </tr>
                <tr>
                    <td >
                        <input type="hidden" name="hid" value="<%=eid%>">  
                        <input type="reset" name="btnreset" value="Reset">   
                    </td>
                    <td >
                <center><input type="submit" name="btnsubmit" value="Submit">
                                                                                          
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
                         <h2> District Details
                     </caption>  
                
                
                             <tr>
                                    <th>STATE</th>
                                    <th>DISTRICT</th>
                                    <th>EDIT</th>
                                    <th>DELETE</th>
                                </tr>
                           
                            
                                <%
                                String sele="select * from tbl_district d,tbl_state s where d.stateID=s.stateID";
                                ResultSet rs1=obj.select(sele);
                                while(rs1.next())
                                {
                                    %>
                                <tr>
                                    <td><%=rs1.getString("stateName")%></td>
                                    <td><%=rs1.getString("districtName")%></td>                                   
                                    <td style="width: 80px;"><a href="DistrictCreation.jsp?eid=<%=rs1.getString("districtID")%>"><img src="../TemplateStyleFiles/EditIcon.png" height="30px" width="30px"/></a> </td>
                                    <td style="width: 80px;"><a href="DistrictCreation.jsp?did=<%=rs1.getString("districtID")%>"><img src="../TemplateStyleFiles/DeleteIcon.png" height="30px" width="30px"/></a> </td>
                                </tr>
                                <%}%>
                        </table>
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