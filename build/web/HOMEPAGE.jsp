

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>

<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
body {
margin:0;
background-color:grey;}

.lftdiv{
width:200PX;
height:1500px;
background-color:white;
float:left;
/*background: linear-gradient(to bottom,  lightcyan 0%,#f6f6f6 100%);*/
}
.slftdiv{
    margin-top:100%;
    height:300px ;
    width:100%;
    
}
.rightdiv{
background-color:white;
/*background: linear-gradient(to bottom,  lightcyan 0%,#f6f6f6 100%);*/
float:right;
width:200px;
height:1500px;
}

.getdiv
{background: linear-gradient(to top,  #F0FFFF 0%,#f6f6f6 100%);
    margin-top:50%;
    height:200px;
    width:100%;
}
.welcomediv{
    background-color:white;
    height:100px;
    width:100%;
}
.middiv{
width:100%;
height:1300px;
background-color:grey;
}
.midmiddiv{
    border-radius:5px;
margin-top:50px;
width:100%;
height:200px;
background: linear-gradient(to right,  lightcyan 0%,#f6f6f6 50%,lightcyan 100%);
/*background-color: lightcyan;*/

}
.sdiv{
    background: linear-gradient(to right,  lightgoldenrodyellow 0%,#f6f6f6 100%);
    font-family:Courier New;
float:left;
text-align:center;
/*position:absolute;*/
margin:18px;
/*position:relative;*/
height:150px;
width:150px;
background-color:white;
border-radius:10px;

}
.hdiv1{
/*    background-color: lightblue;*/
background: linear-gradient(to right,  #9c9e9f 0%,#f6f6f6 100%);
    height: 20%;
    width: 100%;
}
.hdiv2{
    background: linear-gradient(to right,  #f6f6f6 0%, #9c9e9f 100%);
/*    background-color: lightblue;*/
    height: 20%;
    width: 100%;
}
.hdiv3{
/*    background-color: lightblue;*/
background: linear-gradient(to right,  #9c9e9f 0%,#f6f6f6 100%);
    height: 20%;
    width: 100%;
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
.tit{height:100%;
width:100%;
color:red;
font-size:20px;}

.sdiv a:hover{
    background:red;
    opacity: 0.5;
    color:blue;
}



/*arrow list*/
#arrow {
    border-right:2px solid black;
    border-bottom:2px solid black;
    width:10px;
    height:10px;
    transform: rotate(-45deg);
    margin-top:40px;
}



ul li {
  position: relative;
	padding-bottom: 10px;
}

ul {
  list-style: none;
}

ul li:before{
   content: '';
   position: absolute;
   border-right:2px solid black;
   border-bottom:2px solid black;
   width:10px;
   height:10px;
   top: calc(50% - 4px);
   left: -20px;
   transform: translateY(-50%) rotate(-45deg);
}

li a{
    display: block;
    color: #000;
    padding: 3px 8px;
    text-decoration: none;
    border-bottom: 1px solid grey; 
}
li a:hover{
    border-left: 7px solid blue;
    background-color: lightgrey;
}
.online{
    height: 20px;
    width:20px;
    border-radius:20px;
}
.probutton1{
    height: 80px;
    width: 100%;
   background: linear-gradient(to right,  white 0%,grey 100%);
    text-align: center;
    border-bottom:3px solid black;
    font-family:Courier new;
    font-size:25px;
}

.welcomediv a{
    text-decoration: none;
    color:black;
    
}
.welcomediv abbr{
    text-decoration: none;
}


</style>

<title>College Application Approval</title>
</head>
<body>
<div class="navbar">
<div class="butt">
    <a href="LogOutServlet" >Log out</a></div>
   <a href="CONTACT.jsp">Contact</a>
   <a href="STATUS.jsp">Status</a>
   <a href="ABOUTUS.jsp">About Us</a>
   <a href="HOMEPAGE.jsp" class="active">Home</a>  
   <a href="HOMEPAGE.jsp" class="active1" style="float:left;">College Appliation Approval</a>
		 
  
</div>
<div class="lftdiv">
    <div class="slftdiv">
        <h3><p>ENGINEERING & TECHNOLOGY</p></h3>
        <ul class="list1">
            <li><a href="cse.jsp">Computer Science Engineering</a></li>
            <li><a href="">Electronics & Comm. Engineering</a></li>
            <li><a href="">Civil Engineering</a></li>
        </ul>
        <h3><p>Lateral Entry Programs</p></h3>
        <ul>
            <li><a href="">Computer Science Engineering</a></li>
            <li><a href="">Electronics & Comm. Engineering</a></li>
            <li><a href="">Civil Engineering</a></li>
        </ul>
        
    </div>
</div>
<div class="rightdiv">
    
    <div class="welcomediv">
         <DIV class="probutton1">
             WELCOME
             <br>
         <%=      
            session.getAttribute("cid").toString()  
        %>
             <BR>
        <%=      
            session.getAttribute("cname").toString()  
        %>
        
        </DIV>
        <br>
      <br>
      
        
        <abbr title="Change name,username,password"><a href="accounts.jsp"><DIV class="probutton1">ACCOUNTS</DIV></a></abbr>  
            
    </div>
    <div class="getdiv">
        <form action="getinservlet" method="get">
            <table>
                <tr><th>Get In Touch With Us</th></tr>
                <tr><td>Name</td></tr>
                <tr><td><input type="text" placeholder="full name" name="getname"></td></tr>
                <tr><td>Mobile Number</td></tr>
                <tr><td><input type="tel" placeholder="46895616" name="getnumber" maxlength="10"></td></tr>
                <tr><td><button>Send</button></td></tr>
            </table>
        </form>
        </div>

</div>



<div class="middiv">
    <div class="midmiddiv">
         <a href="reappear.jsp"><div class="sdiv">
                 <B> <p>REAPPEAR & REVALUATION</p></b>
                <p>SESSIONALS AND END TERMS</p>
            </div></a>
        <a href="gateleave.jsp"><div class="sdiv">
                <P><b>GATE LEAVE APPLICATION</b></P>
                <p>APPLY GATE LEAVE</p>
            </div></a>
        <a href="holileave.jsp"><div class="sdiv">
                <p><b>HOLIDAY LEAVE APPLICATION</b></p>
                <p>APPLY HOLDAY LEAVE</p>
            </div></a>
        
        
        <a href=""><div class="sdiv">
                <p><b>STUDENT INFO</b></p>
                <p>KNOW YOUR PERSONAL INFORMATION</p>
            </div></a>
       
        
        <a href=""><div class="sdiv">
                <p><b>APPLICATION STATUS</b></p>
                <p>KNOW YOUR APPLICATION STATUS</p>
            </div></a>
    </div>
   
    <div class="hdiv1">
       
    </div>
<!--      <script>
$(document).ready(function(){
    $(".hdiv1").mouseenter(function(){
        $(this).css({"background": "linear-gradient(to right,red 0%,yellow 100%)","height":"30%"});
    });
    $(".hdiv1").mouseleave(function(){
        $(this).css({"background": "linear-gradient(to right,#9c9e9f 0%,#f6f6f6 100%)","height":"20%","width":"100%"});
    });
   });
</script>-->
     <div class="hdiv2">
        
    </div>
    <div class="hdiv3">
        
    </div>
  
</div>

</body>
</html>