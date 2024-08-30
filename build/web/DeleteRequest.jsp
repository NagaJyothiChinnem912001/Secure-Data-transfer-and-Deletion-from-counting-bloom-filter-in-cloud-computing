<%-- 
    Document   : DeleteRequest
    Created on : 30 Sep, 2020, 10:58:27 AM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String id=request.getParameter("id");
String block=request.getParameter("block");
String fid=request.getParameter("fid");

try{
    String q="select count(*) from del_req where fid='"+fid+"'and block='"+block+"'";
    int h=0;
    ResultSet r=Queries.getExecuteQuery(q);
    while(r.next()){
        h=r.getInt(1);
    }
    if(h==0){
    String query="insert into del_req values(null,'"+fid+"','"+id+"','"+block+"','Cloud_A',now(),'waiting')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        %>
    <script type="text/javascript">
        window.alert("Delete Request Sent To Cloud_A");
        window.location="Deletion.jsp";
    </script>
    <%  
    }else{
%>
    <script type="text/javascript">
        window.alert("Delete Request Sending Failed");
        window.location="Deletion.jsp";
    </script>
    <%  
}
}else{
%>
    <script type="text/javascript">
        window.alert("Delete Request Already Sent");
        window.location="Deletion.jsp";
    </script>
    <%  
}
    
}catch(Exception e){
 out.println(e);
}



%>