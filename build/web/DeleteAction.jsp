<%-- 
    Document   : DeleteAction
    Created on : 30 Sep, 2020, 11:57:36 AM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String oid=request.getParameter("oid");
String fid=request.getParameter("fid");
String block=request.getParameter("block");

try{
    String query="UPDATE file SET "+block+" = Null where fid='"+fid+"'and owner='"+oid+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        
String qu="update del_req set cloud='Cloud_B',date=now()";
Queries.getExecuteUpdate(qu);
        %>
    <script type="text/javascript">
        window.alert("Delete Result Sent To Cloud_B");
        window.location="VDeletionReq.jsp";
    </script>
    <%  
    }else{
      %>
    <script type="text/javascript">
        window.alert("Delete Result Sendin Failed");
        window.location="VDeletionReq.jsp";
    </script>
    <%    
    }
    
}catch(Exception e){
    out.println(e);
}


%>