<%-- 
    Document   : cate
    Created on : Nov 26, 2019, 12:11:10 PM
    Author     : MyPC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            <jsp:include page="category.jsp"/>
            <div class="single_mid">
                <ul class="tag_list">
                    <c:forEach var="book" items="${list}">
                        <c:set scope="request" var="linkBook" value="${book.bookID}"/>
                        <li>
                            <a href="book/${linkBook}">
                                <img src="images/${book.bookID}.jpg" class="more-book-image"/>
                                <div class="grid-flex">
                                    <div class="more-book-name">${book.bName}</div>
                                    <p>${book.price/1000}00vnđ</p>
                                </div>
                            </a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </body>
</html>
