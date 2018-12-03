
<%@page import="java.io.FileOutputStream"%>
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
margin:0;
background-color:grey;}
    .rightdiv{
background-color:white;
/*background: linear-gradient(to bottom,  lightcyan 0%,#f6f6f6 100%);*/
float:right;
width:200px;
height:600px;
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
.mdiv{
    height: 600px;
    width:100%;
     background: radial-gradient(red, black);
}
.headgate{
    height: 30px;
    width: 100%;
     background: linear-gradient(to right,  #9c9e9f 0%,red 100%);
     font-family: Courier new;
     font-size: 25px;
     color:white;
}


.button {
    font-family: Courier new;
    width: 35%;
     padding: 15px 25px;
  font-size: 30px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {
    
    background-color: #3e8e41;
}

.button:active {
  background-color: lightgreen;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
.button1 {
    font-family: Courier new;
    width: 100%;
     padding: 15px 25px;
  font-size: 30px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button1:hover {background-color: #3e8e41}

.button1:active {
background-color: lightgreen;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
.reap{
   margin:auto; 
    background: radial-gradient(#FFE4B5, white);
    height: 400px;
    width: 40%;
    border-radius: 30px;
}
fieldset{
  
    width:90%;
    color:white;
   border:5px solid black;
    border-radius:10px;
    font-family: Courier new;
}
.sign{
	text-align:center;
	font-family:Courier New;
	font-size:30px;
	color:#444
	}
</style>

<title>College Application Approval | REAPPEAR</title>
</head>
<body>
<div class="navbar">
<div class="butt">
    <a href="LogOutServlet" >Log out</a></div>
<!--   <a href="CONTACT.jsp">Contact</a>
   <a href="STATUS.jsp">Status</a>
   <a href="ABOUTUS.jsp">About Us</a>-->
   <a href="HOMEPAGE.jsp" class="active">Home</a>  
   <a href="HOMEPAGE.jsp" class="active1" style="float:left;">College Application Approval</a></div>
<br><br><br>
<div class="lftdiv"></div>
<div class="rightdiv"></div>
<div class="mdiv">
     

    <div class="reap">
        <form action="reapServlet" method="get">
           
              
            <table cellspacing="10" align="center">
                <tr>
                    <th class="sign" colspan="3">REAPPEAR & REVALUATION</th>
                </tr>
                <tr><td>DATE</td><td>:</td><td name="date" value="date"> <script> document.write(new Date().toLocaleDateString()); </script></td></tr>
                <tr><td>NAME</td><td>:</td><td><input type="text" name="sname" value="<%=session.getAttribute("cname").toString() %>" readonly></td></tr>
                <tr><td>ID</td><td>:</td><td><input type="text" name="id" value="<%=session.getAttribute("cid").toString() %>" readonly></td></tr>
                <tr><td>FATHERS NAME</td><td>:</td><td><input type="text" name="fname" value=""></td></tr>
                <tr><td>APPLICATION TYPE</td><td>:</td><td>
                        <input type="radio" name="reap" value="reappear" >REAPPEAR
                        <input type="radio" name="reap" value="revaluation">REVALUATION
                    </td></tr>
                <tr><td>BRANCH</td><td>:</td><td><input type="text" name="branch" values="branch"></td></tr>
                <tr><td>SEMESTER</td><td>:</td><td><select name="sem" id="mySelect" onchange="myfunc(this)">
                            <option value="0">----------------</option>
                            <option value="1">1ST/YEAR</option>
                            <option value="2">2ND/YEAR</option>
                            <option value="3">3RD/YEAR</option>
                            <option value="4">4TH/YEAR</option>
                        </select></td></tr>
                <script>
                    var c1 = ["PHYSICS","CHEMISTRY","BEE","MATHS 1","ED","DISCRETE"];
                    var c2 = ["HTML","C","NETWORKING","BEE","NMST","DBMS"];
                    var c3 = ["JAVA","JAVA DS","SOFTWARE ENGINEERING","C++","OPERATING SYSTEM","ADBMS"];
                    var x=[c1,c2,c3];
                    function myfunc(s) {
                        var cities = document.getElementById("subj");
                        if (s.value > 0) {
                            var v = "";
                            for (var i = 0; i < x[s.value - 1].length; i++) {
                                v += "<option value='" + x[s.value - 1][i] + "'>" + x[s.value - 1][i] + "</option>";
                            }
                            cities.innerHTML = v;
                        } else {
                            cities.innerHTML = "";
                        }
                    }
                                </script>
                <tr><td>SUBJECT</td><td>:</td><td>
                        <select name="subject" id="subj">
                        </select>
                    </td></tr>
                <tr><td></td><td></td><td></td></tr>
                <tr><td></td><td><input type="reset"></td><td><input type="submit" value="SUBMIT"></td></tr>
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
             <th>APPLICATION TYPE</th>
            <th>BRANCH</th>          
            <th>SEMESTER</th>
             <th>SUBJECT</th>
            
               
            <th>STATUS</th>
        </tr>
         <% 
             String url="jdbc:mysql://localhost:3306/project?useSSL=false&verifyServerCertificate=false&allowMultiQueries=true";
            try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url,"root","qwerty@");
        String q = "Select * from reappear;";
        PreparedStatement ps = conn.prepareStatement(q);
        ResultSet rs = ps.executeQuery();
        FileOutputStream fout = null;
        int i=1;
        int j=1;
        while(rs.next()){
            
              String name = rs.getString(1);
              String id = rs.getString(2);
              String type= rs.getString(4);
              String branch= rs.getString(5);
              String sem= rs.getString(6);
              String sub= rs.getString(7);
             
              %>
              <tr style="background-color:white;font-family: courier new;">
            <td ><%=j%></td>
            <td><%out.print(name);%></td>
            <td><%out.print(id);%></td>
            <td><%out.print(type);%></td>
            <td><%out.print(branch);%></td>
             <td><%out.print(sem);%></td>
              <td><%out.print(sub);%></td>
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
