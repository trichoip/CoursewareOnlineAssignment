<%-- 
    Document   : login
    Created on : Dec 12, 2022, 8:11:43 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="MainController" method="post">
            Username: <input type="text" name="username" value="" /> <br>
            Password: <input type="password" name="password" value="" />
            <br><input type="submit" value="Login" name="action" />
        </form>
        ${requestScope.MESSAGE}

    </body>
</html>
