<%-- 
    Document   : ABOUTUS
    Created on : Nov 14, 2018, 2:25:04 PM
    Author     : Abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <title>College Application Approval</title>
        <style>
            body {
margin:0;
background-color:grey;}
            .navbar {  
  overflow: hidden;
  background-color: #333;
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
.hdiv{
    margin-top:50px;
    height:100px ;
    width:100%;
    background-color: lightcyan;
}
            </style>
    </head>
    <body>
        <div class="navbar">
            <div class="butt">
                <a href="LogOutServlet" >Log out</a></div>
            <a href="CONTACT.jsp">Contact</a>
            <a href="STATUS.jsp">Status</a>
            <a href="ABOUTUS.jsp" class="active">About Us</a>
            <a href="HOMEPAGE.jsp" >Home</a>  
            <a href="HOMEPAGE.jsp"  style="float:left;">College Appliation Approval</a>
        </div>
        <div class="hdiv">
            
        </div>
        
    </body>
</html>
