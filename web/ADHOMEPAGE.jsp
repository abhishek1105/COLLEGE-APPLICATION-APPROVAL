

<%@page import="java.io.FileOutputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>

<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
    table{
        width:95%;
        text-align: center;
        font-size: 20px;
    }
   
body {
margin:0;
background-color:grey;}
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

</style>

<title>College Application Approval</title>
</head>
<body>
<div class="navbar">
<div class="butt">
    <a href="LogOutServlet" >Log out</a></div>
    <a href="#">Welcome, <%=      
            session.getAttribute("cname").toString()  
%></a>
   <a href="ADHOMEPAGE.jsp" class="active">Home</a>  
   <a href="ADHOMEPAGE.jsp" class="active1" style="float:left;border-radius:15px;">College Application Approval</a>
</div>
<br><br><br>
     <P  align="center" style="font-family:Courier new;font-size:40px">STUDENTS APPLICTIONS</P>
    
    <div class="reap">
       <P  align="center" style="font-family:Courier new;font-size:40px"> REAPPEAR & REVALUATION APPLICATIONS</p>
        <table align="center"  width="70%">
        
        <tr style="background: linear-gradient(to right,  red 0%,white 100%);font-family: courier new;">
            <th>#</th>
            <th>NAME</th>
            <th>ID</th>
            <th>FATHER NAME</th>
             <th>APPLICATION TYPE</th>
            <th>BRANCH</th>          
            <th>SEMESTER</th>
             <th>SUBJECT</th>
            
               
            <th>ACTION</th>
        </tr>
         <% 
             String url2="jdbc:mysql://localhost:3306/project?useSSL=false&verifyServerCertificate=false&allowMultiQueries=true";
            try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url2,"root","qwerty@");
        String q = "Select * from reappear;";
        PreparedStatement ps = conn.prepareStatement(q);
        ResultSet rs = ps.executeQuery();
        FileOutputStream fout = null;
        int i=1;
        int j=1;
        while(rs.next()){
            
              String name = rs.getString(1);
              String id = rs.getString(2);
               String father = rs.getString(3);
              String type= rs.getString(4);
              String branch= rs.getString(5);
              String sem= rs.getString(6);
              String sub= rs.getString(7);
             
              %>
              <tr style="background: radial-gradient(yellow, white);">
            <td ><%=j%></td>
            <td><%out.print(name);%></td>
            <td><%out.print(id);%></td>
            <td><%out.print(father);%></td>
            <td><%out.print(type);%></td>
            <td><%out.print(branch);%></td>
             <td><%out.print(sem);%></td>
              <td><%out.print(sub);%></td>
                 <td><input type="radio" value="approve" name="radio1">APPROVE
            <input type="radio" value="reject" name="radio1">REJECT</td>
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
    
    <div class="gate">
        <p align="center" style="font-family:Courier new;font-size:40px">GATE LEAVE APPLICATIONS</p>
        <table align="center"  width="70%">
        
        <tr style="background: linear-gradient(to right,  red 0%,white 100%);font-family: courier new;">
            <th>#</th>
            <th>NAME</th>
            <th>ID</th>
            <th>FROM DATE</th>          
            <th>TO DATE</th>
             <th>REASON</th>
            <th>ACTION</th>
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
              String sdate = rs.getString(3);
              String edate = rs.getString(4);
              String reason = rs.getString(5);
              %>
              <tr style="background: radial-gradient(yellow, white);">
                  
               <td ><%=j%></td>
            <td><%out.print(name);%></td>
            <td><%out.print(id);%></td>
            <td><%out.print(sdate);%></td>
            <td><%out.print(edate);%></td>
            <td><%out.print(reason);%></td>
            <td><input type="radio" value="approve" name="radio2">APPROVE
            <input type="radio" value="reject" name="radio2">REJECT</td>
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
    <div class="holi">
         <p align="center" style="font-family:Courier new;font-size:40px">HOLIDAY LEAVE APPLICATIONS</p>    
        <table align="center"  width="70%">
        <tr style="background: linear-gradient(to right,  red 0%,white 100%);font-family: courier new;">
            <th>#</th>
            <th>NAME</th>
            <th>ID</th>
            <th>NUMBER</th>
                <th>FATHER NAME</th> 
                    <th>PARENTTS NUMBER</th> 
            <th>FROM DATE</th> 
            <th>TO DATE</th> 
            <th>ADDRESS</th> 
            <th>HOLIDAY REASON</th>
            <th>ACTION</th>
        </tr>
         <% 
             String url1="jdbc:mysql://localhost:3306/project?useSSL=false&verifyServerCertificate=false&allowMultiQueries=true";
            try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url1,"root","qwerty@");
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
              String father = rs.getString(4);
              String fnumber = rs.getString(5);
              String sdate = rs.getString(6);
              String edate = rs.getString(6);
              String address = rs.getString(8);
              String reason = rs.getString(9);
              %>
              <tr style="background: radial-gradient(yellow, white);">
            <td><%=j%></td>
            <td><%out.print(name);%></td>
            <td><%out.print(id);%></td>
            <td><%out.print(number);%></td>
            <td><%out.print(father);%></td>
            <td><%out.print(fnumber);%></td>
            <td><%out.print(sdate);%></td>
            <td><%out.print(edate);%></td>
            <td><%out.print(address);%></td>
            <td><%out.print(reason);%></td>
               <td><input type="radio" value="approve" name="radio3">APPROVE
            <input type="radio" value="reject" name="radio3">REJECT</td>
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