<%-- 
    Document   : AdminAction
    Created on : 30 Sep, 2020, 12:27:11 PM
    Author     : KishanVenky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String username=request.getParameter("uname");
String password=request.getParameter("pwd");

try{
    if(username.equals("Admin")&&password.equals("Admin")){
       response.sendRedirect("AdminHome.jsp"); 
    }
    else{
        response.sendRedirect("Admin.jsp"); 
    }
    
}catch(Exception e){
   out.println(e); 
}




%>