<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
    body {
margin:0;
background-color:grey;}
    .mdiv{
    height: 600px;
    width:100%;
     background: linear-gradient(to right,  #9c9e9f 0%,#f6f6f6 100%);
}
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
.pro{
    background: radial-gradient(#FFE4B5, white);
	height:220px;;
	width:500px;;
	margin:auto;
	border-radius:30px;
	box-shadow:5px 5px 5px black;
        margin-top:2%;
}
.pro2{
    background: radial-gradient(#FFE4B5, white);
	height:230px;;
	width:450px;;
	margin:auto;
	border-radius:30px;
	box-shadow:5px 5px 5px black;
        margin-top:2%;
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
   <a href="HOMEPAGE.jsp" class="active1" style="float:left;">College Application Approval</a></div>
<br><br><br>

<div class="lftdiv"></div>
<div class="rightdiv"></div>

    <div class="pro">
     <form action="details">
        <table cellspacing="10" align="center">
             <tr>
                <td>NAME</td>
                <td>:</td>
                <td><input type="text" name="name" value = "<%=session.getAttribute("cname").toString() %>" readonly></td>
            </tr>
             <tr>
                <td>FATHERS NAME</td>
                <td>:</td>
                <td><input type="text"  name="fath_name"></td>
            </tr>
            <tr>
                <td>USERNAME</td>
                <td>:</td>
                <td><input type="text" name="username" value = "<%=session.getAttribute("cuser").toString() %>" readonly></td>
            </tr>
            <tr>
                <td>E-mail</td>
                <td>:</td>
                <td><input type="email" name="email" value = "<%=session.getAttribute("cemail").toString() %>" readonly></td>
            </tr>
            <tr>
                <td>MOBILE</td>
                <td>:</td>
                <td><input type="tel" name="mob" maxlength="10" value="<%=session.getAttribute("cmobile").toString() %>" placeholder="eg..458465465"></td>
            </tr>

            <tr><td></td><td><input type="submit" value="SUBMIT"></td><td><input type="reset"></td></tr>
        </table>
        </form>
    </div>
    
 
            <div class="pro2">
<form action = "passChangeServlet" method = "get">
   
    <table cellspacing="10" align="center">
        <tr>
            <td>USERNAME</td>
            <td>:</td>
            <td><input type = "text" name ="user" value = "<%=session.getAttribute("cuser").toString() %>"  readonly>
            </td>
        </tr>
        <tr>
            <td>
                <p>OLD PASSWORD</p>
            </td>
            <td>:</td>
            <td>
                <input type = "password"   name = "old">
            </td>
            
        </tr> 
        <tr>
                    <td>PASSWORD</td>
                    <td>:</td>
                    <td><input  onclick="backtosame()" class="abc1" type="password" name="pswd" id="pwdt" placeholder="ENTER valid pasword" required></td>
        </tr>
        <tr>
            <td>CONFIRM PASSWORD</td>
            <td>:</td>
        <td><input  onclick="backtosameC()" onblur="validate()" class="abc1" type="password" name="cpswd" id="cpwdt" placeholder="repeat pasword" required></td>
        
                    <script> function validate(){
				var x = document.getElementById("pwdt").value;
				var y = document.getElementById("cpwdt").value;
				if(x !== y){
					window.alert("PASSWORD NOT MATCHED");
					document.getElementById("cpwdt").style.background = "red";
					
				}
				else{

					document.getElementById("cpwdt").style.background= "white";
					document.getElementById("pwdt").style.background = "white";
				}
			}
                        
                        </script>
                        <script>
                          function backtosame(){
                        document.getElementById("cpwdt").style.background = "white";
                    }
                        </script>
    </tr>
                
        <tr><td></td><td></td><td><input type="checkbox" onclick="myFunction1()">Show Password</td></tr>
       
        <tr><td></td><td></td><td><input type="submit" value="CHANGE PASSWORD" required>
            </td>
        </tr>
        
    </table>
            <script>
            function myFunction1() {
    var x = document.getElementById("myInput");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
</script>

   
            </form>
    </div>
            
           

 </body>

</html>

