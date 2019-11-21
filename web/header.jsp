<%-- 
    Document   : header
    Created on : Nov 18, 2019, 9:11:47 PM
    Author     : MyPC
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
    </head>
    <body>
        <div class="header">
            <div class="bottom-header">
                <div class="container">
                    <div class="header-bottom-left">
                        <div class="logo">
                            <a href="index.html"><img src="images/logo.png" alt=" " /></a>
                        </div>
                        <div class="search">
                            <input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }" >
                            <input type="submit"  value="Tìm kiếm">

                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="header-bottom-right">					
                        <div class="account"><a href="login.html"><span> </span>Tài khoản</a></div>
                        <ul class="login">
                            <li><a href="login.html"><span> </span>Đăng nhập</a></li> |
                            <li ><a href="register.html">Đăng kí</a></li>
                        </ul>
                        <div class="cart"><a href="#"><span> </span>Giỏ hàng</a></div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="clearfix"> </div>	
                </div>
            </div>
        </div>
    </body>
</html>