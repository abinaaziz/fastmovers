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
            String ajquery="select * from tbl_daily_workers where staffCategoryID="+argsStateID;
            //System.out.print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+ajquery);
            obj1.select(ajquery);
            while(obj1.rs.next())
            {
                String dailyWorkerID=obj1.rs.getString("dailyWorkerID");
                String firstName=obj1.rs.getString("firstName");
                //System.out.print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+firstName);
        %>
                <option value="<%=dailyWorkerID %>">ID:<%=dailyWorkerID%>-<%=firstName%></option>
        <%
            }
         }
        %>
  