<%-- 
    Document   : category
    Created on : Nov 18, 2019, 9:13:39 PM
    Author     : MyPC
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Category</title>
    </head>
    <body>
        <div class="sub-cate">
                <div class=" top-nav rsidebar span_1_of_left">
                    <h3 class="cate">THỂ LOẠI </h3>
                    <ul class="menu">
                        <li><a href="products.do?cate=sgk" class="catee" title="Sách giáo khoa">Sách giáo khoa</a></li>
                        <li><a href="<c:url value='products.do?cate=ttr'/>">Truyện tranh</a></li>
                        <li><a href="<c:url value='products.do?cate=tvn'/>">Thơ ca Việt Nam</a></li>
                        <li><a href="<c:url value='products.do?cate=vvn'/>">Văn học Việt Nam</a></li>                       
                        <li><a href="<c:url value='products.do?cate=tth'/>">Tiểu thuyết</a></li>
                        <li><a href="<c:url value='products.do?cate=vnn'/>">Văn học thế giới</a></li>
                    </ul>
                </div>
                <!--initiate accordion-->
                <script type="text/javascript">
                    $(function () {
                        var menu_ul = $('.menu > li > ul'),
                                menu_a = $('.menu > li > a');
                        menu_ul.hide();
                        menu_a.click(function (e) {
                            e.preventDefault();
                            if (!$(this).hasClass('active')) {
                                menu_a.removeClass('active');
                                menu_ul.filter(':visible').slideUp('normal');
                                $(this).addClass('active').next().stop(true, true).slideDown('normal');
                            } else {
                                $(this).removeClass('active');
                                $(this).next().stop(true, true).slideUp('normal');
                            }
                        });

                    });
                </script>
                <a class="view-all all-product" href="products.do">Xem tất cá các sản phẩm<span> </span></a> 	
            </div>
        <div class="clearfix"> </div>
    </body>
</html>
