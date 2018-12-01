<%-- 
    Document   : SIGNUP
    Created on : Nov 14, 2018, 2:04:17 PM
    Author     : Abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>SIGN UP PAGE</title>
        <style>
            body{
	background: radial-gradient(red, black);
	}
	
        
        .frm1{
	background: radial-gradient(#FFE4B5, white);
	height:90%;
	width:400px;
	margin:auto;
	border-radius:30px;
	box-shadow:5px 5px 7px black;
        margin-top:3%;
       
	}
        .sign{
	text-align:center;
	font-family:Courier New;
	font-size:40px;
	color:#444
	}
        .inp1{
            
	font-size:20px;
/*	font-family:Helvetica;*/
        font-weight:Courier New;
	}
        .abc1{
	border-radius:5px;
	height:40px;
	width:250px
	
	}
    input[type=submit]:hover {
    background-color: #45a049;
}
  input[type=submit] {
    width: 50%;
    background-color: black;
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
<!--        <script>
function goBack() {
    window.history.back();
}
</script>
<button onclick="goBack()">Go Back</button>-->
 <div class="frm1">
            <form action="SignUpServlet2" method="get">
            <table align="center">
                <tr><th class="sign">SIGN UP</th></tr>
                <tr>
                    <td class="inp1">NAME</td></tr>
                   <tr> <td><input id="mytextbox" onkeyup="javascript:capitalize(this.id, this.value);"   class="abc1" type="text" name="fnm" placeholder="eg.RAHUL" required></td>
                      

<script type="text/javascript"> function capitalize(textboxid, str) { 
                           if (str && str.length >= 1) {
                               var firstChar = str.charAt(0); 
                               var remainingStr = str.slice(1); 
                               str = firstChar.toUpperCase() + remainingStr; }
                           document.getElementById(textboxid).value = str; } 
                       </script>

                </tr>
               
                    <td class="inp1">E-MAIL</td></tr>
                    <tr><td><input class="abc1" type="email" name="emaill" placeholder="eg.abc@gmail.com" required></td>
                </tr>
                <tr>
                    <td class="inp1">USERNAME</td></tr>
                    <tr><td><input class="abc1" type="text" name="unm" placeholder="eg.abcdef123" required></td>
                </tr>
                
                
                <tr>
                    <td class="inp1">PASSWORD</td></tr>
                <tr><td><input onblur="CheckPassword()" onclick="backtosame()" class="abc1" type="password" name="pswd" id="pwdt" placeholder="ENTER valid pasword" required></td>
<!--                    <script>
                    function CheckPassword() { 
                        var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;
                        var x=document.getElementById("pwdt").value;
                        if(x.match(passw)) {     
                            window.alert("Password");
                        }
                        else{
                            window.alert("Password and Submit [6 to 20 characters which contain at least one numeric digit, one uppercase and one lowercase letter ");
                            document.getElementById("pwdt").style.background = "red";   }
                    }
                  
                        </script>
                        <script>
                          function backtosame(){
                        document.getElementById("pwdt").style.background = "white";
                    }
                        </script>-->
                        
                </tr>
                    <tr>
                    <td class="inp1">CONFIRM PASSWORD</td></tr>
                    <tr><td><input  onclick="backtosameC()" onblur="validate()" class="abc1" type="password" name="cpswd" id="cpwdt" placeholder="repeat pasword" required></td>
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
                
                <tr>
                    <td class="inp1">MOBILE NUMBER</td>
                </tr>
                <tr>
                    <td><input  type="tel" name="mob" maxlength="10" class="abc1" placeholder="eg..458465465"></td>
                </tr>
                 <tr>
                    <td class="inp1">UNIQUE ID</td>
                </tr>
                <tr>
                    <td><input type="password" name="uni_id" maxlength="5" class="abc1" placeholder="35158"></td>
                </tr>
                
                <tr><td><input type="submit"  value="SIGN UP"></td></tr>
            </table>
                </form>
                </div>
        
    </body>
</html>

