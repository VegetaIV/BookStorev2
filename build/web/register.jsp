<%-- 
    Document   : register
    Created on : Nov 26, 2019, 3:51:28 PM
    Author     : MyPC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>BookStore</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <link rel="stylesheet" href="css/etalage.css" type="text/css" media="all" />
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--fonts-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
        <!--//fonts-->
        <script src="js/jquery.min.js"></script>

        <script src="js/jquery.etalage.min.js"></script>
        <script>
            jQuery(document).ready(function ($) {

                $('#etalage').etalage({
                    thumb_image_width: 300,
                    thumb_image_height: 400,
                    source_image_width: 900,
                    source_image_height: 1200,
                    show_hint: true,
                    click_callback: function (image_anchor, instance_id) {
                        alert('Callback example:\nYou clicked on an image with the anchor: "' + image_anchor + '"\n(in Etalage instance: "' + instance_id + '")');
                    }
                });

            });
        </script>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="container"> 
            <div class="register">
                <form action="register.do" method="post"> 
                    <div class="register-top-grid">
                        <h3>THÔNG TIN CÁ NHÂN</h3>
                        <div class="mation">
                            <span>Họ<label>*</label></span>
                            <input type="text" name="Ho"> 

                            <span>Tên<label>*</label></span>
                            <input type="text" name="name"> 

                            <span>Địa chỉ Email<label>*</label></span>
                            <input type="text" name="mail"> 
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="register-bottom-grid">
                        <h3>THÔNG TIN ĐĂNG NHẬP</h3>
                        <div class="mation">
                            <span>Mật khẩu<label>*</label></span>
                            <input type="password" name="password">
                            <span>Xác nhận mật khẩu<label>*</label></span>
                            <input type="password" name="password">
                        </div>
                    </div>
                </form>
                <div class="clearfix"> </div>
                <div class="register-but">
                    <form>
                        <input type="submit" value="xác nhận">
                        <div class="clearfix"> </div>
                    </form>
                </div>
            </div>
            <jsp:include page="category.jsp"/>
            <div class="clearfix"> </div>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
