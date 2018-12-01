<%-- 
    Document   : cse
    Created on : Nov 21, 2018, 11:17:12 PM
    Author     : Abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
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
.theory{
    
    height: 1000px;
        width:70%;
        background-color: white;
        margin-left: 100px;
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
   <a href="HOMEPAGE.jsp" class="active1" style="float:left;">College Appliation Approval</a></div>
   <br><br>
   <div class="theory">
       <h2>B. TECH LATERAL ENTRY COMPUTER SCIENCE & ENGINEERING</h2>
       
       <h3>The Lateral Entry program enables candidates with a 3 years diploma in 
       Engineering or an equivalent degree to get admitted directly to 2nd Year (3rd semester).
       </h3>
       
       <h3>PROGRAM OBJECTIVES</h3>
       
       <p>The fundamental objective of our Computer Science program is to provide the opportunity for our students to 
       develop a firm foundation in Mathematics, Science, and design methodology of computing systems. Our course 
       covers all fundamentals, working and expert subjects that provide a holistic learning environment where 
       students understand and are able to apply 
       the most contemporary and essential tools needed in the breadth and depth of Computer Science & Engineering.</p>
       
       <h3>STUDENT OUTCOMES FOR OUR COMPUTER SCIENCE PROGRAMS</h3>
       <ul class="listing">
<li>An ability to design a software or digital hardware system, component or process to meet desired needs within realistic constraints such as economic, environmental, social, political, ethical, health and safety, manufacturability, and sustainability.
</li><li>Knowledge of probability and statistics, including applications to Computer Science and Engineering.</li>
<li>Knowledge of Mathematics through differential and integral calculus, basic science, Computer Science, and engineering sciences, necessary to analyze and design complex systems containing hardware and software components, as appropriate to Computer Engineering.</li>
<li>Knowledge of advanced Mathematics, including linear algebra, numerical computing methods for Engineering, and discrete Mathematics.</li>
<li>Knowledge of algorithms and data structures</li>
<li>An ability to apply design and development principles in the construction of software systems of varying complexity.</li>
<li>Knowledge of concepts of programming languages.</li>
<li>Knowledge of computer organisation and architecture.</li>
<li>Knowledge of theoretical foundations.</li>
<li>Knowledge of problem analysis and solution design.</li>
<li>An ability to apply Mathematical foundations, algorithmic principles, and Computer Science theory in modeling and design of Computer-based systems in a way that demonstrates comprehension of the tradeoffs involved in design choices.</li>
</ul>
       <h3>PROGRAM CONTENTS AND ACADEMIC FRAMEWORK</h3>
Our curriculum lays intensive focus on:
Computer Programming And Problem Solving/ Object Oriented Paradigm &
Programming/ Digital Logic/ Data Structures & Algorithms/ Computer Architecture 
& Organisation/ Algorithm Design & Analysis/ Microprocessor & Interfacing/ Operating Systems
/ Computer Networks/ Programming Language Translators/ Graphics And Multimedia/ Database Systems/
Software Engineering/ Internet & Web Programming/ Image & Vision Computing/ Software Project Management/ 
Mobile Computing/ Operations Research/ Information Security/ Cloud Computing/ 
Wireless Networks/ Concurrent & Distributed Systems/ Data Warehousing & Data Mining.
   </div>

</body>
</html>
