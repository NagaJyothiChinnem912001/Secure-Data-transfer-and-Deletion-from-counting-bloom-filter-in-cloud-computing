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
        <li><a href="AdminHome.jsp">Home</a></li>
          
        <li><a href="ViewOwnerDetails.jsp">View Owner Details</a></li>
        <li><a href="ViewFilesDel.jsp">View Files</a></li>
       <li class="active"><a href="ViewTimeStamp.jsp">Time Stamp</a></li>
       
           <li><a href="Admin.jsp">Logout</a></li>
       
       
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
      <center><h3>All Files Details</h3></center>
    <div class="homepage">
        <center>
            <center>
                <table>
                    <tr>
                        
                        <th>File Name</th>
                        <th>Block Name</th>
                        <th>View Graph</th>
                        
                        
                    </tr>
                    
                    <tr>
                    <form action="ViewGraph.jsp" method="post">
                          
                              <td> Select File Name <select name="fid" required="">
                                <option></option>
                    <%
                    try{
                    String query="select * from file";
                    ResultSet r=Queries.getExecuteQuery(query);
                    while(r.next()){
                     
                      %>
                      
                      <option value="<%=r.getString("fid")%>"><%=r.getString("fname")%></option>
                         
                        <% }
%>
                               </select></tD>
                         <td> Select Block <select name="block" required="">
                                <option></option>     
                                 <option value="Block1">Block1</option>   
                                 <option value="Block2">Block2</option>
                             </select>
                         </td>
                               <td><input type="submit" value="View in Graph"></td>
                               </form>
                    </tr>
                    
<%
                    
                    }catch(Exception e){
                        out.println(e);
}%>
                </table>
        </center>
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