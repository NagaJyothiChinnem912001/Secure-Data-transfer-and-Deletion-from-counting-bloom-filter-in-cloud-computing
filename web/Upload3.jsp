<%-- 
    Document   : Upload3
    Created on : 30 Sep, 2020, 9:02:30 AM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String id=(String)session.getAttribute("id");
String username=(String)session.getAttribute("username");
String email=(String)session.getAttribute("email");



String fid=request.getParameter("fid");
String fname=request.getParameter("fname");
String skey=request.getParameter("skey");
String data=request.getParameter("data");
String block1=request.getParameter("block1");
String block2=request.getParameter("block2");
String cipher=request.getParameter("cipher");

String time1=request.getParameter("time1");
String time2=request.getParameter("time2");
try{
    String query="insert into file values('"+fid+"','"+id+"','"+username+"','"+fname+"','"+data+"','"+skey+"','"+cipher+"','"+block1+"','"+block2+"',now(),'Cloud_A','waiting')";
       
       int i=Queries.getExecuteUpdate(query);
       if(i>0){
           
           String f="insert into timestamp values('"+fname+"','"+fid+"','"+time1+"','"+time2+"')";
          Queries.getExecuteUpdate(f);
           
           
           response.sendRedirect("Upload.jsp?msg=success");
       }else{
           response.sendRedirect("Upload.jsp?msg=failed");
       }
    
}catch(Exception e){
  out.println(e);  
}


%>