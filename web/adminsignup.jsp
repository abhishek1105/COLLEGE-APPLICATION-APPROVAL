<%-- 
    Document   : SIGNUP
    Created on : Nov 14, 2018, 2:04:17 PM
    Author     : Abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
            <form action="AdminSignUpServlet" method="get">
            <table align="center">
                <tr><th class="sign">SIGN UP</th></tr>
                <tr>
                    <td class="inp1" id="cap">NAME</td></tr>
                <script type="text/javascript">
jQuery.noConflict();
jQuery(document).ready(function($) {
   $("#cap").keyup(function(){
    if($(this).val().length>0 && $(this).val().length<5){
        $(this).val($(this).val().charAt(0).toUpperCase()+$(this).val().substr(1));
     }
});
});
</script>
                   <tr> <td><input class="abc1" type="text" name="fnm" placeholder="eg.RAHUL" required></td>
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
                    <tr><td><input class="abc1" type="password" name="pswd" placeholder="ENTER valid pasword" required></td>
                </tr>
                
                <tr>
                    <td class="inp1">MOBILE NUMBER</td>
                </tr>
                <tr>
                    <td><input type="tel" name="mob" maxlength="10" class="abc1" placeholder="eg..458465465"></td>
                </tr>
                 <tr>
                    <td class="inp1">UNIQUE ID</td>
                </tr>
                <tr>
                    <td><input type="password" name="uni_id" maxlength="5" class="abc1" placeholder="35158"></td>
                </tr>
                <tr><td><input type="submit" value="SIGN UP"></td></tr>
            </table>
                </form>
                </div>
        
    </body>
</html>

