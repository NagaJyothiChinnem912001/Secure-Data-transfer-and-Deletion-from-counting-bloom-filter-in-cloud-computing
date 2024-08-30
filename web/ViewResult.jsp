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
        <li><a href="OwnerHome.jsp">Home</a></li>
          
        <li><a href="Upload.jsp">OutSource Data</a></li>
        <li><a href="ViewData.jsp">View Data</a></li>
         <li><a href="TransferReq.jsp">Transfer Request</a></li>
          <li><a href="Deletion.jsp">Deletion Request</a></li>
           <li class="active"><a href="ViewResult.jsp">View Result</a></li>
           <li><a href="Owner.jsp">Logout</a></li>
       
       
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
      <center><h3>View Result</h3></center>
    <div class="homepage">
        <%String id=(String)session.getAttribute("id");
String username=(String)session.getAttribute("username");
String email=(String)session.getAttribute("email");
           %>
           <table>
               <tr><td><a href="ViewResult.jsp?msg=transfer">View Transfer Result</a></td></tr>
                <tr><td><a href="ViewResult.jsp?msg=deletion">View Deletion Result</a></td></tr>
           </table>
        <%
        String msg=request.getParameter("msg");
        
        if(msg!=null){
            if(msg.equals("transfer")){
        String query="select * from trans_req where oid='"+id+"' and cloud='Cloud_B'and result='Transfered'";
        ResultSet r=Queries.getExecuteQuery(query);
        while(r.next()){
            String cloud=r.getString("cloud");
        String fid=r.getString("fid");
        String block=r.getString("block");
            %>
             <h4>File ID: <%=fid%></h4> 
             <h4>Block Of Data: <%=block%></h4> 
             <h4>Cloud Name: <%=cloud%></h4> 
            <h3><font color="red">Data Transfer Successfully From Cloud_A TO Cloud_B..!!</font></h3> 
            
            <%
        }
%>
<h3><a href="ViewResult.jsp">Back</a></h3> 
<%
}else if(msg.equals("deletion")){
String query="select * from del_req where oid='"+id+"' and cloud='Cloud_B' and result='Transfered'";
        ResultSet r=Queries.getExecuteQuery(query);
        while(r.next()){
            String cloud=r.getString("cloud");
        String fname=r.getString("fid");
        String block=r.getString("block");
            %>
             <h4>File ID: <%=fname%></h4> 
             <h4>Block Of Data: <%=block%></h4> 
             <h4>Cloud Name: <%=cloud%></h4> 
            <h3><font color="red">Data Deleted Successfully At Cloud_A..!!</font></h3> 
            
            <%
        }
%>
<h3><a href="ViewResult.jsp">Back</a></h3> 
<%}
}
        
        
        %>
        
        
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