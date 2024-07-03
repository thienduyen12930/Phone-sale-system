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
                background-image: url('images/banner_login.jpg')  ;
                background-size: cover;
                background-repeat: no-repeat;
                background-color: rgba(0, 0, 0, 0.5);
                backdrop-filter: blur(5px);
                height: 100%;

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
            .images{
                width:100%;
                max-width:525px;
                min-height:600px;
            }
            .login-wrap{
                width:100%;
                margin:auto;
                max-width:525px;
                min-height:600px;
                position:relative;

                /*                box-shadow:0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);*/

            }
            .login-html{
                width:100%;
                height:125%;
                position:absolute;
                padding:40px 70px 200px 70px;
                background: rgba(0, 0, 0, 0.7);
                border-radius: 30px;
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
                border-bottom:2px solid ;
            }
            .sign{
                letter-spacing: 1px;
                font-size: 1em;
                background: white;
                padding: 10px;
                font-weight: bold;
                color: black;
            }
            .tab{
                letter-spacing: 1px;
                font-size: 1em;
                color: white;
            }

            .login-html .sign-in:checked + .tab,
            .login-html .sign-up:checked + .tab{
                color:#fff;
                border-color:whitesmoke;
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
                margin-top: 10px;
                padding:15px 20px;
                border-radius:25px;
                background:rgba(255,255,255,.1);
            }
            .login-form .group input[data-type="password"]{
                text-security:circle;
                -webkit-text-security:circle;
            }
            .login-form .group .label{
                color:white;
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
                margin:20px 0 10px 0;
                background:rgba(255,255,255,.2);
            }
            .foot-lnk{
                text-align:center;
                color: white;

            }

        </style>
    </head>
    <body>
    </div>
    <div class="login-wrap ">
        <div class="login-html ">
            <!--                <input class="sign-in" ><label for="tab-1" class="tab"><span class="sign">Cell</span>Phone X</label><br>-->
            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab" style="margin-bottom: 8px">Đăng ký</label>
            <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
            <div class="login-form">
                <!--đăng ký-->
                <div class="sign-in-htm">
                    <form action="signup" method="post">
                        <div class="group">
                            <label for="user" class="label">Tên đăng nhập</label>
                            <input id="user" type="text" class="input" name="user" value="${user}">
                        </div>

                        <div class="group">
                            <label for="pass" class="label">Mật khẩu</label>
                            <input id="pass" type="password" class="input" data-type="password" name="pass" value="${pass}">
                        </div>
                        <div class="group">
                            <label for="pass" class="label">Xác nhận lại mật khẩu</label>
                            <input id="pass" type="password" class="input" data-type="password" name="repass" value="${repass}">
                        </div>

                        <div class="group">
                            <label for="pass" class="label">Họ và tên</label>
                            <input id="pass" type="text" class="input" name="displayname" ${displayname}>
                        </div>
                        <div class="group">
                            <label for="pass" class="label">Email</label>
                            <input id="pass" type="text" class="input" name="email" value="${email}">
                        </div>
                        <div class="group">
                            <label for="pass" class="label">Số điện thoại</label>
                            <input id="pass" type="text" class="input" name="phonenumber" value="${phonenumber}">
                        </div>
                        <div style="color: #ff9999">${kq}</div><br>
                        <div class="group">
                            <input type="submit" class="button" value="Đăng ký">
                        </div>

                    </form>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                        <a href="login.jsp">Đăng nhập?</a>
                    </div>
                </div>
                <!--đăng kí-->
                <div class="sign-up-htm">

                </div>
            </div>
        </div>
    </div>

</body>
</html>
