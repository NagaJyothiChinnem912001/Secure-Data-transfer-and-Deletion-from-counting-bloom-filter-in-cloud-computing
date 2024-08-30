<%-- 
    Document   : Owner
    Created on : 29 Sep, 2020, 5:20:31 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>Secure Data Transfer</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.jcarousel.setup.js"></script>
</head>
<body id="top">
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <h1><a href="index.html">Secure Data</a></h1>
      <p>Transfer and Deletion from Counting Bloom Filter in Cloud Computing</p>
    </div>
    <div id="topnav">
      <ul>
       <li><a href="CloudHomeB.jsp">Home</a></li>
          
        <li><a href="VTransferedFiles.jsp">View Transfered Files</a></li>
        <li class="active"><a href="VDeletionRes.jsp">View Deletion Request</a></li>
       
           <li><a href="Cloud.jsp">Logout</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="featured_slide">
    <div id="featured_content">
      <ul>
        <li><img src="images/demo/image1.jpg" alt="" />
          <div class="floater">
            <h2>About This Project !</h2>
            <p>With the rapid development of cloud
storage, an increasing number of data owners prefer to
outsource their data to the cloud server, which can greatly
reduce the local storage overhead. Because different cloud
service providers offer distinct quality of data storage
service, e.g., security, reliability, access speed and prices,</p>
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </div>
        </li>
        <li><img src="images/demo/Capture.PNG" alt="" />
          <div class="floater">
            <h2></h2>
            <p>cloud data transfer has become a fundamental requirement
of the data owner to change the cloud service providers.
Hence, how to securely migrate the data from one cloud
to another and permanently delete the transferred data
from the original cloud becomes a primary concern of
data owners.</p>
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </div>
        </li>
        <li><img src="images/demo/image1.jpg" alt="" />
          <div class="floater">
            <h2></h2>
            <p>To solve this problem, we construct a new
counting Bloom filter-based scheme in this paper. The
proposed scheme not only can achieve secure data transfer
but also can realize permanent data deletion. </p>
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </div>
        </li>
      </ul>
    </div>
    <a href="javascript:void(0);" id="featured-item-prev"><img src="layout/images/prev.png" alt="" /></a> <a href="javascript:void(0);" id="featured-item-next"><img src="layout/images/next.png" alt="" /></a> </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3" style="margin-bottom:100px;">
  <div id="container">
      <center><h3>Deletion Result</h3></center>
    <div class="homepage">
        <%
String user=(String)session.getAttribute("user");

        
        
   String oid=request.getParameter("oid");
   String fid=request.getParameter("fid");
   if(oid!=null){
     %>
     <table>
         <tr>
             <th>Name</th>
             <th>Email</th>
             <th>Mobile</th>
             <th>Address</th>
         </tr>  
         <%
         try{
             String qu="select * from owner where id='"+oid+"'";
             ResultSet r=Queries.getExecuteQuery(qu);
             while(r.next()){
                 %>
                 <tr>
                     <td><%=r.getString("name")%></td>
                      <td><%=r.getString("email")%></td>
                       <td><%=r.getString("mobile")%></td>
                        <td><%=r.getString("address")%></td>
                         <td><a href="VDeletionRes.jsp">Back</a></td> 
                 </tr>  
                 
                 <%
             }
         }catch(Exception e){
             out.println(e);
         }
         
         
         %>
     </table>
     <%
   }%>
        <center>
            <table>
                <tr>
                    <th>File ID</th>
                     <th>Owner ID</th>
                     <th>File Block</th>
                      
                       
                       <th>Transfer Result</th>
                         
                </tr>
                <%try{
                    String query="select * from del_req where cloud='Cloud_B'";
                    ResultSet r=Queries.getExecuteQuery(query);
                    while(r.next()){
                      %>
                      
                      <tr>
                           <td><%=r.getString("fid")%></td>
                          <td><a href="VDeletionRes.jsp?oid=<%=r.getString("oid")%>"><%=r.getString("oid")%></a></td>
            
                             <td><%=r.getString("block")%></td>
                           <%if(r.getString("result").equals("Transfered")){%>
                           <td>Deletion Result Transfered</td>  
                  <%}else{
%>
 <td><a href="VDelResult.jsp?id=<%=r.getString("id")%>">Transfer Deletion Result</a></td>
<%
}%>
                                      </tr>  
                   <% }
                
                
                
                
                
                }catch(Exception e){
                    out.println(e);
}%>
                
                
            </table>
        </center>
      <br class="clear" />
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col4">

</div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="copyright">
    <p class="fl_left">Secure Data Transfer and Deletion from Counting Bloom Filter in Cloud Computing</p>
    <p class="fl_right"></p>
    <br class="clear" />
  </div>
</div>
</body>
</html>