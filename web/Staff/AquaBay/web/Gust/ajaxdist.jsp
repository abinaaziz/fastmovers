<%-- 
    Document   : ajaxdist.jsp
    Created on : Jan 27, 2017, 5:54:00 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj1" class="db.DBConnection"></jsp:useBean>
        <%
         if(request.getParameter("argsStateID")!=null)
         {
            String argsStateID=request.getParameter("argsStateID");
            String ajquery="select * from tbl_district where stateID="+argsStateID;
            obj1.select(ajquery);
            while(obj1.rs.next())
            {
                String districtID=obj1.rs.getString("districtID");
                String districtName=obj1.rs.getString("districtName");
        %>
                <option value="<%=districtID %>"><%=districtName%></option>
        <%
            }
         }
        %>
  