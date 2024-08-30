<%-- 
    Document   : TransferReqAction
    Created on : 29 Sep, 2020, 7:55:32 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

String fid=request.getParameter("fid");
String oid=request.getParameter("oid");
String block=request.getParameter("block");


try{
    String qu="select count(*) from trans_req where fid='"+fid+"'and oid='"+oid+"'";
    int c=0;
    ResultSet r=Queries.getExecuteQuery(qu);
    while(r.next()){
        c=r.getInt(1);
    }
    if(c==0){
    String query="insert into trans_req values(null,'"+fid+"','"+oid+"','"+block+"','Cloud_A','waiting','waiting','waiting')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
    %>
    <script type="text/javascript">
        window.alert("Transfer Request Sent To Cloud_A");
        window.location="TransferReq.jsp";
    </script>
    <%    
    }else{
%>
    <script type="text/javascript">
        window.alert("Transfer Request Failed");
        window.location="TransferReq.jsp";
    </script>
    <%   
}
}else
{
%>
    <script type="text/javascript">
        window.alert("Transfer Request Alread Sent");
        window.location="TransferReq.jsp";
    </script>
    <% 
}
    
}catch(Exception e){
   out.println(e); 
}




%>