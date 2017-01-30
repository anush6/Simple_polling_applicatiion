<%-- 
    Document   : register
    Created on : 30 Jan, 2017, 6:50:48 PM
    Author     : Anush kumar.v
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <h1>Welcome to registration</h1>
        <form action="registration.jsp" method="POST">
            <table border="0">
                
                <tbody>
                    <tr>
                        <td>Username : </td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password :</td>
                        <td><input type="text" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td>email id :</td>
                        <td><input type="text" name="mail" value="" /></td>
                    </tr>
                    <tr>
                        <td>Place :</td>
                        <td><input type="text" name="place" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="index.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
