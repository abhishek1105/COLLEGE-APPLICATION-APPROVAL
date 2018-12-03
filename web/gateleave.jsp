<%-- 
    Document   : gateleave
    Created on : Nov 21, 2018, 11:52:31 PM
    Author     : Abc
--%>

<%@page import="java.sql.Blob"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
    body {

background-color:grey;}
    .rightdiv{
background-color:white;
/*background: linear-gradient(to bottom,  lightcyan 0%,#f6f6f6 100%);*/
float:right;
width:200px;
height:600px;
}
.div1{
    background: radial-gradient(#FFE4B5, white);
	height:300px;;
	width:650px;;
	margin:auto;
	border-radius:30px;
	box-shadow:5px 5px 5px black;
       
}
.lftdiv{
width:200PX;
height:600px;
background-color:white;
float:left;
/*background: linear-gradient(to bottom,  lightcyan 0%,#f6f6f6 100%);*/
}
.navbar {  
  overflow: hidden;
/*  background-color: #333;*/
background: linear-gradient(to left,  #333 0%,#f6f6f6 100%);
  position: fixed;
  top: 0;
  width: 100%;
  border-bottom: 2px solid Lightcyan;
}

.navbar a {
  font-family:Lucida Console;
  float: right;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
  font-size: 20px;
}

.navbar a:hover{
  background: red;
  color: black;
  opacity: 0.5;
}

.butt {

background-color:blue;
float:right;
}

.navbar a.active {
  background-color: lightcyan;
  color: black;
}
.navbar a.active1 {
    background: linear-gradient(to right,  #9c9e9f 0%,#f6f6f6 100%);
  background-color: white;
  color: black;
}
.theory{
    
    height: 1000px;
        width:70%;
        background-color: white;
        margin-left: 100px;
}
.gate{
    height: 350px;
    width:100%;
     background: linear-gradient(to right,  #9c9e9f 0%,#f6f6f6 100%);
}
.headgate{
    height: 30px;
    width: 100%;
     background: linear-gradient(to right,  #9c9e9f 0%,red 100%);
     font-family: Courier new;
     font-size: 25px;
     color:white;
}

</style>

<title>College Application Approval</title>
</head>
<body>
<div class="navbar">
<div class="butt">
    <a href="LogOutServlet" >Log out</a></div>
<!--   <a href="CONTACT.jsp">Contact</a>
   <a href="STATUS.jsp">Status</a>
   <a href="ABOUTUS.jsp">About Us</a>-->
   <a href="HOMEPAGE.jsp" class="active">Home</a>  
   <a href="HOMEPAGE.jsp" class="active1" style="float:left;">College Appliation Approval</a></div>
<br><br><br>
<div class="lftdiv"></div>
<div class="rightdiv"></div>
  
       <div class="headgate">
           Gate Pass:
       </div>
       <div class="div1">
       <form action="gateleave" method="get">
           <table align="center" cellspacing="10">
               <tr><td>DATE</td><td> :</td><td><p>
                           <script> document.write(new Date().toLocaleDateString()); </script>
                       </p></td></tr>
               <tr><td>Name</td><td>:</td><td><input type="text" name="name" value="<%=session.getAttribute("cname").toString() %>" readonly></td></tr>
                <tr><td>Id</td><td>:</td><td><input type="text" name="fid" value="<%=session.getAttribute("cid").toString() %>" readonly></td></tr>
               <tr><td>Leave Required From </td><td>:</td><td><input type="datetime-local" name="sdate"></td></tr>
               <tr><td>To </td><td>:</td><td><input type="datetime-local" name="edate"></td></tr>
               <tr><td>Leave Required Reason </td>
                   <td>:</td><td><textarea rows="4" cols="35" placeholder="write valid reason" name="reason"></textarea></td></tr>
               <tr><td></td><td><input type="reset" value="Reset">
  <input type="submit" value="Submit"></td><td></td></tr>       
           </table>
       </form>
       </div>
  
<div class="complaint">
    <table align="center"  width="70%">
         <P  align="center" style="font-family:Courier new;font-size:40px">YOUR REQUESTS</P>
        <tr style="background: linear-gradient(to right,  red 0%,white 100%);font-family: courier new;">
            <th>#</th>
            <th>NAME</th>
            <th>ID</th>
            <th>LEAVE DATE</th>          
            <th>LEAVE REASON</th>
            <th>STATUS</th>
        </tr>
         <% 
             String url="jdbc:mysql://localhost:3306/project?useSSL=false&verifyServerCertificate=false&allowMultiQueries=true";
            try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url,"root","qwerty@");
        String q = "Select * from gateleave;";
        PreparedStatement ps = conn.prepareStatement(q);
        ResultSet rs = ps.executeQuery();
        FileOutputStream fout = null;
        int i=1;
        int j=1;
        while(rs.next()){
            
              String name = rs.getString(1);
              String id = rs.getString(2);
              String date = rs.getString(3);
              String reason = rs.getString(5);
              %>
              <tr style="background-color:white;font-family: courier new;">
            <td ><%=j%></td>
            <td><%out.print(name);%></td>
            <td><%out.print(id);%></td>
            <td><%out.print(date);%></td>
            <td><%out.print(reason);%></td>
        </tr>
                <%
              i++;
              j++;
            }
        fout.close();
          }
         catch(Exception e){
            System.out.print(e);
         }
        %>
    </table>
</div>
   
   </body>
   
   
   
</html>
