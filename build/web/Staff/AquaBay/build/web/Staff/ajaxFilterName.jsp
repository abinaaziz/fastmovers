<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj1" class="db.DBConnection"></jsp:useBean>
        <%
         if(request.getParameter("argsStateID")!=null)
         {
            String argsStateID=request.getParameter("argsStateID");
            String ajquery="select * from tbl_filter_details where filterCategoryID="+argsStateID;
            //System.out.print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+ajquery);
            obj1.select(ajquery);
            while(obj1.rs.next())
            {
                String filterID=obj1.rs.getString("filterID");
                String filterName=obj1.rs.getString("filterName");
                //System.out.print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+firstName);
        %>
                <option value="<%=filterID %>">ID:<%=filterID%>-<%=filterName%></option>
        <%
            }
         }
        %>
  