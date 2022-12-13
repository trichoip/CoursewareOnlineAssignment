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
        <link rel="stylesheet" href="css/login.css">

    </head>
    <body>

            <div class="container">
                <div class="screen">
                    <div class="screen__content">
                        <form action="MainController" method="post" style=" margin-top: 61px;">

                            <div class="login__field">
                                <i class="login__icon fas fa-user"></i>
                                <input type="text" name="username" value="" class="login__input"   placeholder="User name ">
                            </div>
                            <div class="login__field">
                                <i class="login__icon fas fa-lock"></i>
                                <input type="password" name="password" value="" class="login__input" placeholder="Password">
                            </div>
                           
                            <input class="button login__submit" type="submit" value="Login" name="action" style="width: 200px;"/>
                                <i class="button__icon fas fa-chevron-right"></i>
                            
                        </form>
                        <div class="social-login">
                            <h3>  ${requestScope.MESSAGE}</h3>

                        </div>

                    </div>
                    <div class="screen__background">
                        <span class="screen__background__shape screen__background__shape4"></span>
                        <span class="screen__background__shape screen__background__shape3"></span>
                        <span class="screen__background__shape screen__background__shape2"></span>
                        <span class="screen__background__shape screen__background__shape1"></span>
                    </div>
                </div>
            </div>
    </body>
</html>
