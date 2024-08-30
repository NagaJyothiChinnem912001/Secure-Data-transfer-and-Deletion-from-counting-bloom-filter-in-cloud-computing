<%-- 
    Document   : CloudAction
    Created on : 29 Sep, 2020, 7:34:01 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
   String uname=request.getParameter("uname");
   String pwd=request.getParameter("pwd"); 
   
   String query="select * from cloud where username='"+uname+"'and password='"+pwd+"'";
   ResultSet r=Queries.getExecuteQuery(query);
   if(r.next()){
       if(uname.equals("Cloud_A")){
           session.setAttribute("user",uname);
    %>
    <script type="text/javascript">
        window.alert("Cloud A Login Successfully..!!");
        window.location="CloudHomeA.jsp";
    </script>
    <%
        }else{
 session.setAttribute("user",uname);
%>
    <script type="text/javascript">
        window.alert("Cloud B Login Successfully..!!");
        window.location="CloudHomeB.jsp";
    </script>
    <%
}
   }else{
%>
    <script type="text/javascript">
        window.alert("Cloud Login Failed..!!");
        window.location="Cloud.jsp";
    </script>
    <%
}
    
}catch(Exception e){
   out.println(e); 
}
%>