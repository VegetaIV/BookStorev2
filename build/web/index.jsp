<%-- 
    Document   : index
    Created on : Dec 9, 2019, 12:47:21 AM
    Author     : MyPC
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <jsp:include page="header.jsp" />
        <!-- container -->
        <div class="container">
            <div class="shoes-grid">
                <a href="book.do?VN1014">
                    <div class="wrap-in">
                        <div class="wmuSlider example1 slide-grid">		 
                            <div class="wmuSliderWrapper">		  
                                <article style="position: absolute; width: 100%; opacity: 0;">					
                                    <div class="banner-matter">
                                        <div class="col-md-5 banner-bag">
                                            <img class="img-responsive " src="images/VN1014.jpg" alt=" "/>
                                        </div>
                                        <div class="col-md-7 banner-off">							
                                            <h2>Vỡ đê</h2>
                                            <label>Vũ Trọng Phụng</label>
                                            <p>Vỡ đê là cuốn tiểu thuyết phản ánh bức tranh xã hội với đầy đủ chi tiết, chân thật đời sống người dân dưới thời nô lệ... </p>					
                                            <span class="on-get">Xem ngay</span>
                                        </div>

                                        <div class="clearfix"> </div>
                                    </div>

                                </article>

                            </div>
                            </a>
                            <ul class="wmuSliderPagination">
                                <li><a href="#" class="">0</a></li>
                                <li><a href="#" class="">1</a></li>
                                <li><a href="#" class="">2</a></li>
                            </ul>
                            <script src="js/jquery.wmuSlider.js"></script> 
                            <script>
                                $('.example1').wmuSlider();
                            </script> 
                        </div>
                    </div>
                </a>
                <!---->
                <div class="shoes-grid-left">
                    <a href="book.do?GK1001">				 
                        <div class="col-md-6 con-sed-grid">

                            <div class=" elit-grid"> 

                                <h4>Sách giáo khoa Toán 1</h4>
                                <label>Bộ giáo dục và đào tạo</label>
                                <p>Đây là cuốn sách bổ ích cần thiết và bắt buộc trong chương trình học cơ bản... </p>
                                <span class="on-get">Xem ngay</span>						
                            </div>						
                            <img class="img-responsive shoe-left" src="images/GK1001.jpg" alt=" " />

                            <div class="clearfix"> </div>

                        </div>
                    </a>
                    <a href="book.do?TT1001">	
                        <div class="col-md-6 con-sed-grid sed-left-top">
                            <div class=" elit-grid"> 
                                <h4>Truyện tranh Thần đồng đất việt tập 1 </h4>
                                <label>Lê Linh</label>
                                <p>Đây là một bộ truyện hay , hấp dẫn và thú vui, lôi cuốn bạn đọc qua từng tập với nhiều câu chuyện...</p>
                                <span class="on-get">Xem ngay</span>
                            </div>		
                            <img class="img-responsive shoe-left" src="images/TT1001.jpg" alt=" " />

                            <div class="clearfix"> </div>
                        </div>
                    </a>
                </div>
                <div class="products">
                    <h5 class="latest-product">Sản phẩm mới nhất</h5>	
                    <a class="view-all" href="products.do">Thông tin<span> </span></a> 		     
                </div>
                <div class="product-left">
                    <div class="col-md-4 chain-grid">
                        <a href="book.do?TT3004"><img class="img-responsive chain" src="images/TT3004.jpg" alt=" " /></a>
                        <span class="star"> </span>
                        <div class="grid-chain-bottom">
                            <h6><a href="book.do?TT3004">Sông ngầm</a></br></h6>
                            <h7 style="margin-left: 8px">Tiểu thuyết</h7>
                            <div class="star-price">
                                <div class="dolor-grid"> 
                                    <span class="actual">300.000 vnđ</span>
                                    <span class="reducedfrom">400.000 vnđ</span>
                                    <span class="rating">
                                        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
                                        <label for="rating-input-1-5" class="rating-star1"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
                                        <label for="rating-input-1-4" class="rating-star1"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
                                        <label for="rating-input-1-3" class="rating-star"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
                                        <label for="rating-input-1-2" class="rating-star"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
                                        <label for="rating-input-1-1" class="rating-star"> </label>
                                    </span>
                                </div>
                                <a class="now-get get-cart" href="cart.do?bookID=TT3004&amount=1">Thêm vào giỏ hàng</a> 
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 chain-grid">
                        <a href="book.do?TT3003"><img class="img-responsive chain" src="images/TT3003.jpg" alt=" " /></a>
                        <span class="star"> </span>
                        <div class="grid-chain-bottom">
                            <h6><a href="book.do?TT3003">Cuồng vọng phi nhân tính</a></h6>
                            <h7 style="margin-left: 8px">Tiểu thuyết</h7>
                            <div class="star-price">
                                <div class="dolor-grid"> 
                                    <span class="actual">499.000 vnđ</span>
                                    <span class="reducedfrom">528.000 vnđ</span>
                                    <span class="rating">
                                        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
                                        <label for="rating-input-1-5" class="rating-star1"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
                                        <label for="rating-input-1-4" class="rating-star1"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
                                        <label for="rating-input-1-3" class="rating-star"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
                                        <label for="rating-input-1-2" class="rating-star"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
                                        <label for="rating-input-1-1" class="rating-star"> </label>
                                    </span>
                                </div>
                                <a class="now-get get-cart" href="cart.do?bookID=TT3003&amount=1">Thêm vào giỏ hàng</a> 
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 chain-grid grid-top-chain">
                        <a href="book.do?NN0001"><img class="img-responsive chain" src="images/NN0001.jpg" alt=" " /></a>
                        <span class="star"> </span>
                        <div class="grid-chain-bottom">
                            <h6><a href="book.do?NN0001">Ruồi Trâu</a></h6>
                            <h7 style="margin-left: 8px">Tiểu thuyết</h7>
                            <div class="star-price">
                                <div class="dolor-grid"> 
                                    <span class="actual">299.000 vnđ</span>
                                    <span class="reducedfrom">400.000 vnđ</span>
                                    <span class="rating">
                                        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
                                        <label for="rating-input-1-5" class="rating-star1"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
                                        <label for="rating-input-1-4" class="rating-star1"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
                                        <label for="rating-input-1-3" class="rating-star"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
                                        <label for="rating-input-1-2" class="rating-star"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
                                        <label for="rating-input-1-1" class="rating-star"> </label>
                                    </span>
                                </div>
                                <a class="now-get get-cart" href="cart.do?bookID=NN0001&amount=1">Thêm vào giỏ hàng</a> 
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="products">
                    <h5 class="latest-product">Sản phẩm mới nhất</h5>	
                    <a class="view-all" href="products.do">Thông tin<span> </span></a> 		     
                </div>
                <div class="product-left">
                    <div class="col-md-4 chain-grid">
                        <a href="book.do?TT3007"><img class="img-responsive chain" src="images/TT3007.jpg" alt=" " /></a>
                        <span class="star"> </span>
                        <div class="grid-chain-bottom">
                            <h6><a href="book.do?TT3007">Tấm vài đỏ</a></h6>
                            <h7 style="margin-left: 8px">Tiểu thuyết</h7>
                            <div class="star-price">
                                <div class="dolor-grid"> 
                                    <span class="actual">159.000 vnđ</span>
                                    <span class="reducedfrom">300.000 vnđ</span>
                                    <span class="rating">
                                        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
                                        <label for="rating-input-1-5" class="rating-star1"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
                                        <label for="rating-input-1-4" class="rating-star1"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
                                        <label for="rating-input-1-3" class="rating-star"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
                                        <label for="rating-input-1-2" class="rating-star"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
                                        <label for="rating-input-1-1" class="rating-star"> </label>
                                    </span>
                                </div>
                                <a class="now-get get-cart" href="cart.do?bookID=TT3007&amount=1">Thêm vào giỏ hàng</a> 
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 chain-grid">
                        <a href="book.do?TT3009"><img class="img-responsive chain" src="images/TT3009.jpg" alt=" " /></a>
                        <span class="star"> </span>
                        <div class="grid-chain-bottom">
                            <h6><a href="book.do?TT3009">Mãi mãi là bao xa</a></h6>
                            <h7 style="margin-left: 8px">Tiểu thuyết</h7>
                            <div class="star-price">
                                <div class="dolor-grid"> 
                                    <span class="actual">325.000 vnđ</span>
                                    <span class="reducedfrom">500.000 vnđ</span>
                                    <span class="rating">
                                        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
                                        <label for="rating-input-1-5" class="rating-star1"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
                                        <label for="rating-input-1-4" class="rating-star1"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
                                        <label for="rating-input-1-3" class="rating-star"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
                                        <label for="rating-input-1-2" class="rating-star"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
                                        <label for="rating-input-1-1" class="rating-star"> </label>
                                    </span>
                                </div>
                                <a class="now-get get-cart" href="cart.do?bookID=TT3009&amount=1">Thêm vào giỏ hàng</a> 
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 chain-grid grid-top-chain">
                        <a href="book.do?TT3005"><img class="img-responsive chain" src="images/TT3005.jpg" alt=" " /></a>
                        <span class="star"> </span>
                        <div class="grid-chain-bottom">
                            <h6><a href="book.do?TT3005">Độc giả thứ 7</a></h6>
                            <h7 style="margin-left: 8px">Tiểu thuyết</h7>
                            <div class="star-price">
                                <div class="dolor-grid"> 
                                    <span class="actual">650.000 vnđ</span>
                                    <span class="reducedfrom">725.000 vnđ</span>
                                    <span class="rating">
                                        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
                                        <label for="rating-input-1-5" class="rating-star1"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
                                        <label for="rating-input-1-4" class="rating-star1"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
                                        <label for="rating-input-1-3" class="rating-star"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
                                        <label for="rating-input-1-2" class="rating-star"> </label>
                                        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
                                        <label for="rating-input-1-1" class="rating-star"> </label>
                                    </span>
                                </div>
                                <a class="now-get get-cart" href="cart.do?bookID=TT3005&amount=1">Thêm vào giỏ hàng</a> 
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="clearfix"> </div>
            </div>   
            <div class="sub-cate">
                <div class=" top-nav rsidebar span_1_of_left">
                    <h3 class="cate">THỂ LOẠI </h3>
                    <ul class="menu">
                        <li><a href="products.do?cate=sgk">Sách giáo khoa</a></li>
                            <li><a href="products.do?cate=ttr">Truyện tranh</a></li>
                            <li><a href="products.do?cate=tvn">Thơ ca Việt Nam</a></li>
                            <li><a href="products.do?cate=vvn">Văn học Việt Nam</a></li>
                            <li><a href="products.do?cate=tth">Tiểu thuyết</a></li>
                            <li><a href="products.do?cate=vnn">Văn học thế giới</a></li>
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
                <div class=" chain-grid menu-chain">
                    <a href="book.do?VN0008"><img class="img-responsive chain" src="images/VN0008.jpg" alt=" " /></a>	   		     		
                    <div class="grid-chain-bottom chain-watch">
                        <span class="actual dolor-left-grid">150.000 vnđ</span>
                        <span class="reducedfrom">200.000 vnđ</span>  
                        <h6><a href="book.do?VN0008">Tập thơ Việt Bắc</a></h6>  		     			   		     										
                    </div>
                </div>
                <a class="view-all all-product" href="product.html">Xem tất cá các sản phẩm<span> </span></a> 	
            </div>
            <div class="clearfix"> </div>        	         
        </div>
        
        <jsp:include page="footer.jsp"/>
    </body>
</html>
