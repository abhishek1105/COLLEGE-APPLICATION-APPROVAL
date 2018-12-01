<%-- 
    Document   : PASS
    Created on : Nov 15, 2018, 1:54:14 PM
    Author     : Abc
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>PASSWORD RECOVER</title>
        
    </head>
    <body>
        <form action="adminforg.jsp" method="post">
            <table>
                <tr><td>ADMIN ID</td><td><input type="text" name="f_username" required></td></tr>
                <tr><td>UNIQUE ID</td><td><input type="password" name="f_uni_id" required></td></tr>
                  <tr><td>NEW PASSWORD</td><td><input type="password" name="fpass" required></td></tr>
              
                <tr><td><button>RESET</button></td><td><button value="submit" >GET PASSWORD</button></td></tr>
<!--                onclick="javascript:window.close()"-->
               
            </table>
        </form>

    </body>
</html>
