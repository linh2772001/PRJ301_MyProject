<%-- 
    Document   : login
    Created on : Jun 9, 2022, 12:50:32 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/login.css" rel="stylesheet" type="text/css"/>
        <script src="../js/login.js" type="text/javascript"></script>
        <title>Login</title>
        <link rel="icon" type="image/x-icon" href="assets/images.png" />
    </head>
    <style>
        body{
            background-color: #F6A7C1;
        }
        .form{
            background-color: #B2EBE0;
        }
    </style>
    <body>

        <div class="login-page">
            <div class="form">
                <form class="register-form" action="login" method="POST">
                    <input type="text" placeholder="name"/>
                    <input type="password" placeholder="password"/>


                    <input type="submit" value="Login">
                </form>
                <form class="login-form">
                    <input type="text" placeholder="username"/>
                    <input type="password" placeholder="password"/>
                    <button>login</button>
                    <p class="message">Not registered? <a href="#">Create an account</a></p>
                </form>
            </div>
        </div>
    </body>


</html>
