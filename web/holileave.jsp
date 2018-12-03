<%-- 
    Document   : gateleave
    Created on : Nov 21, 2018, 11:52:31 PM
    Author     : Abc
--%>

<%@page import="java.io.FileOutputStream"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
    body {
margin:0;
background-color:grey;}
    .rightdiv{
background-color:white;
/*background: linear-gradient(to bottom,  lightcyan 0%,#f6f6f6 100%);*/
float:right;
width:200px;
height:900px;
}
.lftdiv{
width:200PX;
height:900px;
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
    background: radial-gradient(#FFE4B5, white);
	height:460px;;
	width:650px;;
	margin:auto;
	border-radius:30px;
	box-shadow:5px 5px 5px black;
       
}
.headgate{
    height: 30px;
    width: 100%;
     background: linear-gradient(to right,  #9c9e9f 0%,red 100%);
     font-family: Courier new;
     font-size: 25px;
     color:white;
}
.tabform{
    align:center;
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
           Holiday Leave Pass:
       </div>
 <div class="gate">
       <form action="holileave" method="get">
           <table align="center" cellspacing="10">
               <tr><td>DATE</td><td> :</td><td><p>
                           <script> document.write(new Date().toLocaleDateString()); </script>
                       </p></td></tr>
               <tr><td>Name</td><td>:</td><td><input type="text" name="name" value="<%=session.getAttribute("cname").toString() %>" required></td></tr>
                <tr><td>ID</td><td>:</td><td><input type="text" name="id" value="<%=session.getAttribute("cid").toString() %>" required></td></tr>
               <tr><td>Student Number</td><td>:</td><td><input type="tel" name="smob" maxlength="10" value="<%=session.getAttribute("cmobile").toString() %>" required></td></tr>
               <tr><td>Father's Nane</td><td>:</td><td><input type="text" name="fathername" required></td></tr>
               <tr><td>Parents Number</td><td>:</td><td><input type="tel" name="parentmob" maxlength="10" required></td></tr>
               <tr><td>Leave Required From </td><td>:</td><td><input type="datetime-local" name="sdate"></td></tr>
               <tr><td>To </td><td>:</td><td><input type="datetime-local" name="edate"></td></tr>
               <tr><td>Address</td><td>:</td><td><textarea rows="4" cols="35" placeholder="write proper address" name="address" required></textarea></td></tr>
               <tr><td>Leave Required Reason </td><td>:</td><td><textarea rows="4" cols="35" placeholder="write valid reason" name="reason" required></textarea></td></tr>
               <tr><td></td><td><input type="reset" value="Reset">
  <input type="submit" value="Submit"></td><td></td></tr>         
           </table>
       </form>
   </div>
<div class="complaint">
    <P  align="center" style="font-family:Courier new;font-size:40px">YOUR REQUESTS</P>
    <table align="center"  width="70%">
        <tr style="background: linear-gradient(to right,  red 0%,white 100%);font-family: courier new;">
            <th>#</th>
            <th>NAME</th>
            <th>ID</th>
            <th>NUMBER</th>
            <th>APPLY DATE</th>          
            <th>HOLIDAY REASON</th>
            <th>STATUS</th>
        </tr>
         <% 
             String url="jdbc:mysql://localhost:3306/project?useSSL=false&verifyServerCertificate=false&allowMultiQueries=true";
            try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url,"root","qwerty@");
        String q = "Select * from holileave;";
        PreparedStatement ps = conn.prepareStatement(q);
        ResultSet rs = ps.executeQuery();
        FileOutputStream fout = null;
        int i=1;
        int j=1;
        while(rs.next()){
            
              String name = rs.getString(1);
              String id = rs.getString(2);
              String number = rs.getString(3);
              String date = rs.getString(6);
              String reason = rs.getString(9);
              %>
              <tr style="background: linear-gradient(to right,  red 0%,white 100%);font-family: courier new;">
            <td><%=j%></td>
            <td><%out.print(name);%></td>
            <td><%out.print(id);%></td>
            <td><%out.print(number);%></td>
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
