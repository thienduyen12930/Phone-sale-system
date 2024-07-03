
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/x-icon" href="https://www.freepnglogos.com/uploads/twitter-x-logo-png/twitter-x-logo-png-9.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                margin:0;
                padding: 0;
                background-image: url('images/banner_login.jpg') ;
                background-size: cover;
                background-repeat: no-repeat;
                backdrop-filter: blur(5px);
                height: auto;
            }
            *,:after,:before{
                box-sizing:border-box
            }
            .clearfix:after,.clearfix:before{
                content:'';
                display:table
            }
            .clearfix:after{
                clear:both;
                display:block
            }
            a{
                color:inherit;
                text-decoration:none
            }

            .login-wrap{
                width:100%;
                margin:auto;
                max-width:525px;
                min-height:670px;
                position:relative;
                /*                background:black;*/

            }
            .login-html{
                width:100%;
                height:80%;
                position:absolute;
                padding:50px 70px 40px 70px;
                margin-top: 70px;
                background: rgba(0, 0, 0, 0.7);
                border-radius:30px ;
            }
            .login-html .sign-in-htm,
            .login-html .sign-up-htm{
                top:0;
                left:0;
                right:0;
                bottom:0;
                position:absolute;
                transform:rotateY(180deg);
                backface-visibility:hidden;
                transition:all .4s linear;
            }
            .login-html .sign-in,
            .login-html .sign-up,
            .login-form .group .check{
                display:none;
            }
            .login-html .tab,
            .login-form .group .label,
            .login-form .group .button{
                text-transform:uppercase;
            }
            .login-html .tab{
                font-size:22px;
                margin-right:15px;
                padding-bottom:5px;
                margin:0 15px 10px 0;
                display:inline-block;
                border-bottom: 2px solid white;
            }
            .login-html .sign-in:checked + .tab,
            .login-html .sign-up:checked + .tab{
                color:#fff;
                border-color:white;
            }
            .login-form{
                min-height:345px;
                position:relative;
                perspective:1000px;
                transform-style:preserve-3d;
            }
            .login-form .group{
                margin-bottom:15px;
            }
            .login-form .group .label,
            .login-form .group .input,
            .login-form .group .button{
                width:100%;
                color:#fff;
                display:block;
            }
            .login-form .group .input,
            .login-form .group .button{
                border:none;
                margin-top:10px;
                padding:15px 20px;
                border-radius:25px;
                background:rgba(255,255,255,.1);
            }
            .login-form .group input[data-type="password"]{
                text-security:circle;
                -webkit-text-security:circle;
            }
            .login-form .group .label{
                color:#aaa;
                font-size:12px;
            }
            .login-form .group .button{
                background:whitesmoke;
                color: black;
            }
            .login-form .group label .icon{
                width:15px;
                height:15px;
                border-radius:2px;
                position:relative;
                display:inline-block;
                background:rgba(255,255,255,.1);
            }
            .login-form .group label .icon:before,
            .login-form .group label .icon:after{
                content:'';
                width:10px;
                height:2px;
                background:#fff;
                position:absolute;
                transition:all .2s ease-in-out 0s;
            }
            .login-form .group label .icon:before{
                left:3px;
                width:5px;
                bottom:6px;
                transform:scale(0) rotate(0);
            }
            .login-form .group label .icon:after{
                top:6px;
                right:0;
                transform:scale(0) rotate(0);
            }
            .login-form .group .check:checked + label{
                color:#fff;
            }
            .login-form .group .check:checked + label .icon{
                background:#1161ee;
            }
            .login-form .group .check:checked + label .icon:before{
                transform:scale(1) rotate(45deg);
            }
            .login-form .group .check:checked + label .icon:after{
                transform:scale(1) rotate(-45deg);
            }
            .login-html .sign-in:checked + .tab + .sign-up + .tab + .login-form .sign-in-htm{
                transform:rotate(0);
            }
            .login-html .sign-up:checked + .tab + .login-form .sign-up-htm{
                transform:rotate(0);
            }

            .hr{
                height:2px;
                margin:60px 0 50px 0;
                background:whitesmoke;
            }
            .foot-lnk{
                text-align:center;
                color: whitesmoke;
            }
        </style>
    </head>
    <body>
        <div class="login-wrap">
            <div class="login-html">
                <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Đăng nhập</label>
                <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
                <div class="login-form">
                    <!--                    đăng nhập-->
                    <div class="sign-in-htm">
                        <form action="login" method="post">
                            <div class="group">
                                <label for="user" class="label" style="margin-bottom:8px">Tên đăng nhập</label>
                                <input id="user" type="text" class="input" name="username" value="${u}">
                            </div>
                            <div class="group">
                                <label for="pass" class="label">Mật khẩu</label>
                                <input id="pass" type="password" class="input" data-type="password" name="password" value="${p}">
                            </div>

                            <div style="color: #ff9999">${wrong}</div><br>

                            <div class="group">
                                <input type="submit" class="button" value="Đăng nhập">
                            </div>
                        </form>
                        <div class="hr"></div>
                        <div class="foot-lnk">
                            <a href="login_signUp.jsp">Bạn chưa có tài khoản?</a>
                        </div>
                    </div>
                    <!--                    đăng kí-->
                    <div class="sign-up-htm">

                    </div>
                </div>
            </div>
        </div>
    </body>

</html>
