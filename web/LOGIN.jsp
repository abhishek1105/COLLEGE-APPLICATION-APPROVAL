

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <title>COLLEGE APPLICATION APPROVAL</title>
	<style>
	body{
            
           background: radial-gradient(red, black);
/*	background-color:#660000;*/
/*background: linear-gradient(to left, black 0%,red 100%);*/       
        }
	.log{
	text-align:center;
	font-family:Courier New;
	font-size:40px;
	color:#444;
	}

	.frm{
           
/*	background-color:white;*/
background: radial-gradient(#FFE4B5, white);
	height:420px;;
	width:350px;;
	margin:auto;
	border-radius:30px;
	box-shadow:5px 5px 5px black;
        margin-top:5%;
       
        
	}
	.abc{
	border-radius:5px;
	height:40px;
	width:250px
	
	}
	.inp{
	font-size:20px;
/*	font-family:Helvetica;*/
        font-weight:Courier New;
	}

	.acc1{
	float:left;
	}
	.acc{
	float:left;
	}
	.forgo{
	float:left;
	
	}
	.butt{
	float:right;}
	.csf{
            font-family:Courier New;
            text-decoration:none;
            font-weight: bold;
            color:black;
            border-radius: 5px;
        
        
	}
	.csf:hover{
	background: linear-gradient(to right, red 0%,white 100%);
	}
	
	
  input[type=submit]:hover {
  background: linear-gradient(to left, red 0%,white 100%);
    
   
    
}
  input[type=submit] {
    width: 100%;
    background:linear-gradient(to right, black 0%,white 100%);
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    
    border-radius: 5px;
    cursor: pointer;
	font-weight:bold;
	font-size:20px;
	box-shadow:5px 5px 5px;
}
</style>
  </head>
<body>
    <div class="frm">
        <form action="loginlogin.jsp" >
            <table align="center" >
                <tr><th class="log">Log In</th></tr>  
                <tr><td class="inp">USERNAME</td></tr>
                <tr><td><input class="abc" type="text" name="user" placeholder="eg.abc123" required></td></tr>
                <tr><td class="inp" >PASSWORD</td></tr>
                <tr><td><input class="abc" id="myInput" type="password" name="pwsd" required placeholder="*********"></td></tr>
                <tr><td><input type="checkbox" onclick="myFunction1()">Show Password<input type="checkbox" name="remember"> Remember me
                        <script>
                            function myFunction1() {
                                var x = document.getElementById("myInput");
                                if (x.type === "password") {
                                    x.type = "text";
                                } else {
                                    x.type = "password";
                                }
                            }
                                                    </script></td></tr>
                
	<tr><td><input type="submit" value="LOGIN"></td></tr>
	<tr></tr>
	</table>
	</form>
        <div class="acc1">
            <a href="LOGINADMIN.jsp" class="csf">As Admin</a>
        </div>
        <BR><BR>
        <div class="forgo">
            <a href="" class="csf" onclick="myFunction()">FORGOT PASSWORD?</a>
            <script>
                function myFunction() {
                    window.open("PASS.jsp", "_blank", "width=300,height=300");
                    }
                                    </script>
        </div>
        <BR><BR>
        
          <div class="acc">
      <a href="SIGNUP.jsp" class="csf">CREATE NEW ACCOUNT?</a>
	
	</div>
            </div>  
 </body>
 </html>