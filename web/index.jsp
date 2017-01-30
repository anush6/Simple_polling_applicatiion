<%-- 
    Document   : index
    Created on : 30 Jan, 2017, 6:38:34 PM
    Author     : Anush kumar.v
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Polling_machine</title>
    </head>
    <body>
        <h1>Welcome to online voting</h1>
        <form action="login.jsp" method="POST">
            <center>
                <table border="0">
                    
                    <tbody>
                        <tr>
                            <td>Username :</td>
                            <td><input type="text" name="username" value="" /></td>
                        </tr>
                        <tr>
                            <td>Password :</td>
                            <td><input type="password" name="password" value="" /></td>
                        </tr>
                        <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Yet Not Registered!! <a href="register.jsp">Register Here</a></td>
                    </tr>
                    </tbody>
                </table>

            </center>
        </form>
    </body>
</html>
