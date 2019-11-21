<%-- 
    Document   : category
    Created on : Nov 18, 2019, 9:13:39 PM
    Author     : MyPC
--%>

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
                <h3 class="cate">THỂ LOẠI</h3>
                <ul class="menu">
                    <li class="item1"><a href="#">Sách giáo khoa<img class="arrow-img" src="images/arrow1.png" alt=""/> </a>
                        <ul class="cute">
                            <li class="subitem1"><a href="product.html">Tiểu học </a></li>
                            <li class="subitem2"><a href="product.html">THCS </a></li>
                            <li class="subitem3"><a href="product.html">THPT </a></li>
                        </ul>
                    </li>
                    <li class="item2"><a href="#">Truyện tranh <img class="arrow-img " src="images/arrow1.png" alt=""/></a>
                        <ul class="cute">
                            <li class="subitem1"><a href="product.html">Việt Nam </a></li>
                            <li class="subitem2"><a href="product.html">Nước ngoài </a></li>                                
                        </ul>
                    </li>
                    <li class="item3"><a href="#">Văn học Việt Nam<img class="arrow-img" src="images/arrow1.png" alt=""/> </a>
                        <ul class="cute">
                            <li class="subitem1"><a href="product.html">Thơ ca </a></li>
                            <li class="subitem2"><a href="product.html">Truyện ngắn </a></li>
                            <li class="subitem3"><a href="product.html">Tiểu thuyết</a></li>
                        </ul>
                    </li>
                    <li class="item4"><a href="#">Văn học nước ngoài <img class="arrow-img" src="images/arrow1.png" alt=""/></a>
                        <ul class="cute">
                            <li class="subitem1"><a href="product.html">Trung Quốc </a></li>
                            <li class="subitem2"><a href="product.html">Nhật Bản </a></li>
                            <li class="subitem3"><a href="product.html">Châu Âu </a></li>
                        </ul>
                    </li>
                    <li>
                        <ul class="kid-menu">
                            <li><a href="product.html">Sách kỹ năng</a></li>
                            <li ><a href="product.html">Sách lịch sử</a></li>
                            <li ><a href="product.html">Các thể loại khác</a></li>
                        </ul>
                    </li>                        
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
        </div>
        <div class="clearfix"> </div>
    </body>
</html>
