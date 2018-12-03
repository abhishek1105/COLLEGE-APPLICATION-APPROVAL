

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
    height:83px;
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




.navbar {  
/*  overflow: hidden;*/
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
/*  position: relative;*/
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
    margin-top:10%;
    text-align: center;
    
    border-radius: 30px;
    height: 150%;
    width: 100%;
   background: radial-gradient(lightgoldenrodyellow,white);
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
.welcomediv a:hover{
   background: linear-gradient(to left,  red 0%,black 100%);
}


* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides1 {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow1-container {
  max-width: 1000px;
/*  position: relative;*/
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
/*  position: absolute;*/
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */


/* The dots/bullets/indicators */
.dot1 {
  height: 5px;
  width: 5px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active1 {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
/*  position: relative;*/
  margin: auto;
  
  border-radius: 50%;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
/*  position: absolute;*/
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
/*  position: absolute;*/
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 5px;
  width: 5px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
.th{
    margin-left: 1%;
    margin-right: 1%;
    background-color: white;
    width:600px;
    float:right;
    height: 450px;
    text-align: center;
    border-radius: 15px;
    margin-bottom: 2%;
}
/*.th1{
    background-image: "img33";
    height: 450px;
    width:300px;
    border-radius:30px;
}*/
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
   <a href="HOMEPAGE.jsp" class="active1" style="float:left;border-radius:15px;">College Appliation Approval</a>
		 
  
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
        <a href="accounts.jsp"><abbr title="Change name,username,password"><DIV class="probutton1">
                    WELCOME, <%=      
                        session.getAttribute("cname").toString()  
%>   
<BR>
<%=      
    session.getAttribute("cid").toString()  
%>      
                </DIV></abbr> </a> 
                
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
        
        
        <a href="accounts.jsp"><div class="sdiv">
                <p><b>STUDENT INFO</b></p>
                <p>KNOW YOUR PERSONAL INFORMATION</p>
            </div></a>
       
        
        <a href=""><div class="sdiv">
                <p><b>APPLICATION STATUS</b></p>
                <p>KNOW YOUR APPLICATION STATUS</p>
            </div></a>
    </div>
   

   


<div class="slideshow-container">

<div class="mySlides fade">
 
  <img src="pic1.jpg" style="width:94.7%;height: 30%;border-radius: 30px;">
  
</div>

<div class="mySlides fade">
  
  <img src="pic2.jpg" style="width:94.7%;height: 30%;border-radius: 30px;">
  
</div>

<div class="mySlides fade">
  
  <img src="pic3.jpg" style="width:94.7%;height: 30%;border-radius: 30px;">
  
</div>

</div>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {
        slideIndex = 1;
    }    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 3000); // Change image every 2 seconds
}
</script>
    <div class="th1">
        
    </div>
    <div class="th">
        <img src="pic4.png" style="width:70px;height: 70px;margin-top: 3%;">
        <p style="font-size:40px;">Your Career Needs
Chitkara University</p>
    <p>Chitkara University in Himachal Pradesh has been founded by Dr. Ashok Chitkara and Dr. Madhu Chitkara who have been
        passionate teachers for more than 40 years now. Since inception,
        Chitkara University has been different. 
        Our students have been different. So are our faculty, our academic strengths and our outlook on teaching and learning.

Within a decade, most of our academic programs are ranked in top 50 programs in the country. The unique difference being 
that Chitkara University has been established by and managed by passionate academicians with the sole mission of making
each and every student “industry-ready".</p>
</div>
    <div class="slideshow1-container">
<div class="mySlides1 fade">
 
  <img src="img1.jpg" style="width:94.7%;height: 30%;border-radius: 30px;">
  
</div>
<div class="mySlides1 fade">
 
  <img src="img2.jpg" style="width:94.7%;height: 30%;border-radius: 30px;">
  
</div>

<div class="mySlides1 fade">
  
  <img src="img3.jpg" style="width:94.7%;height: 30%;border-radius: 30px;">
  
</div>

<div class="mySlides1 fade">
  
  <img src="img4.jpg" style="width:94.7%;height: 30%;">
  
</div>

</div>

<div style="text-align:center">
  <span class="dot1"></span> 
  <span class="dot1"></span> 
  <span class="dot1"></span> 
  <span class="dot1"></span> 
</div>
    <script>
var slideIndex1 = 0;
showSlides1();

function showSlides1() {
    var i;
    var slides = document.getElementsByClassName("mySlides1");
    var dots = document.getElementsByClassName("dot1");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex1++;
    if (slideIndex1 > slides.length) {
        slideIndex1 = 1;
    }    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active1", "");
    }
    slides[slideIndex1-1].style.display = "block";  
    dots[slideIndex1-1].className += " active1";
    setTimeout(showSlides1, 3000); // Change image every 2 seconds
}
</script>
</div>

</body>
</html>