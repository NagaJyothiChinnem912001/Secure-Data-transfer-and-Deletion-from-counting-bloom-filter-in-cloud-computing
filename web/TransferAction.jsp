<%-- 
    Document   : TransferAction
    Created on : 29 Sep, 2020, 8:16:53 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String id=request.getParameter("id");
String fid=request.getParameter("fid");
String block=request.getParameter("block");

try{
    
    String qur="select * from file where fid='"+fid+"'";
    ResultSet r=Queries.getExecuteQuery(qur);
    String block_data=null;
    while(r.next()){
        block_data=r.getString(block);
    }
    
    String query="update trans_req set status='"+block_data+"',cloud='Cloud_B',date=now() where id='"+id+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Data Transfered Succesfully..!!");
            window.location="VTransferReq.jsp";
        </script>
        
        <%
    }else{
%>
        <script type="text/javascript">
            window.alert("Data Transfered Failed..!!");
            window.location="VTransferReq.jsp";
        </script>
        
        <%
}
    
}catch(Exception e)
{
 out.println(e);   
}



%>