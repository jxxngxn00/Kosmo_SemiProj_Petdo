<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>PetDo : FAQ - 상세보기</title>
    <% String pjName="/petdo"; %>
    <link href="<%=pjName %>/resources/blog-css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/prettyPhoto.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/price-range.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/animate.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/blog-css/main.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/blog-css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="<%=pjName %>/resources/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=pjName %>/resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=pjName %>/resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=pjName %>/resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<%=pjName %>/resources/images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href=""><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
								<li><a href=""><i class="fa fa-envelope"></i> info@domain.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href=""><i class="fa fa-facebook"></i></a></li>
								<li><a href=""><i class="fa fa-twitter"></i></a></li>
								<li><a href=""><i class="fa fa-linkedin"></i></a></li>
								<li><a href=""><i class="fa fa-dribbble"></i></a></li>
								<li><a href=""><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
   
      
      <div class="header_middle"></div>
      <div class="header-bottom"><!--header-bottom-->

         <div class="container ">
            <div class="row">
               <div id="sm-9" class="col-sm-9">
            
                     <a href="../main.do"><img src="<%=pjName %>/resources/images/home/logo.png" width="12%" height="auto" id="petlogo" alt="" /></a>
                  
                  <div class="navbar-header pull-right">
                     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                     </button>
                  </div>
                  
                  <div class="mainmenu pull-left">
                     <ul class="nav navbar-nav collapse navbar-collapse">
                        <li><a href="main.do" class="active">홈</a></li>
                        <li class="dropdown"><a href="care-shop.html">케어<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="care1-shop.html">목욕</a></li>
                              <li><a href="care2-shop.html">미용</a></li> 
                                    </ul>
                                </li> 
                        <li class="dropdown"><a href="toilet-shop.html">배변/위생<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="toilet1-shop.html">배변용품</a></li>
                              <li><a href="toilet2-shop">위생용품</a></li>
                                    </ul>
                                </li> 
                        <li><a href="toy-shop.html">장난감</a></li>
                        
                        <li class="dropdown"><a href="food-shop.html">식품<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" id="sub-menu-txt" class="sub-menu">
                                        <li><a href="food1-shop.html">간식</a></li>
                              <li><a href="food2-shop.html">사료</a></li>
                              <li><a href="food3-shop.html">영양제</a></li>
                                    </ul>
                                </li>
                                <li><a href="living-shop.html">리빙용품</a></li> 
                                <li class="dropdown"><a href="closet-shop.html">의류<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="closet1-shop.html">프리미엄</a></li>
                              <li><a href="closet2-shop.html">아우터</a></li>
                              <li><a href="closet3-shop.html">상의</a></li>
                              <li><a href="closet4-shop.html">악세사리</a></li>
                                    </ul>
                                </li>
                                <li><a href="faq.do" class="active"><b>FAQ</b></a></li>
									   <li><a href="qna.do" class="active"><b>QnA</b></a></li>
									   <li><a href="notice.do" class="active"><b>공지사항</b></a></li>
							</ul>
                      <div class="search_box pull-right">
                        <input type="text" placeholder="검색"/>
                     </div>
                     <div id="topHeader" class="appTopArea" style="top:0px;"></div>
                  </div>
                    
               </div>
            
            
            </div>
         </div>
      </div><!--/header-bottom-->
</div>   
</header>
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Category</h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							
							 <div class="panel panel-default">
								<div class="panel-heading">
								   <h4 class="panel-title"><a href="faq.do">FAQ</a></h4>
								</div>
							 </div>
							 <div class="panel panel-default">
								<div class="panel-heading">
								   <h4 class="panel-title"><a href="qna.do">QnA</a></h4>
								</div>
							 </div>
							 <div class="panel panel-default">
								<div class="panel-heading">
								   <h4 class="panel-title"><a href="notice.do">공지사항</a></h4>
								</div>
							 </div>
						  </div><!--/category-productsr-->
						
						<div class="shipping text-center"><!--shipping-->
							<img src="<%=pjName %>/resources/images/home/shipping.jpg" alt="" />
						</div><!--/shipping-->
					</div>
				</div>
				<div class="col-sm-9">
					<div class="blog-post-area">
						<div class="single-blog-post">
							<h3>댕댕이랑 캠핑 & 피크닉 꿀팁 !</h3>
							<div class="post-meta">
								<ul>
									<li><i class="fa fa-user"></i> Mac Doe</li>
									<li><i class="fa fa-clock-o"></i> 1:33 pm</li>
									<li><i class="fa fa-calendar"></i> DEC 5, 2013</li>
								</ul>
								<span>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</span>
							</div>
							<a href="">
								<img src="<%=pjName %>/resources/images/blog/test-content.jpg" alt="" style="max-width:auto;">
							</a>
						
							<div class="pager-area">
								<ul class="pager pull-right">
									<li><a href="#">Pre</a></li>
									<li><a href="#">Next</a></li>
								</ul>
							</div>
						</div>
					</div><!--/blog-post-area-->

					<div class="rating-area">
						<ul class="ratings">
							<li class="rate-this">Rate this item:</li>
							<li>
								<i class="fa fa-star color"></i>
								<i class="fa fa-star color"></i>
								<i class="fa fa-star color"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</li>
							<li class="color">(6 votes)</li>
						</ul>
						<ul class="tag">
							<li>TAG:</li>
							<li><a class="color" href="">위생/배변<span> / </span></a></li>
							<li><a class="color" href="">급식기/급수기<span> / </span></a></li>
							<li><a class="color" href="">장난감</a></li>
						</ul>
					</div><!--/rating-area-->
				
					<div class="recommended_items"><!--recommended_items-->
						<h2 class="title text-center">recommended items</h2>
						
						<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="item active">	
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="<%=pjName %>/resources/images/home/recommend1.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="<%=pjName %>/resources/images/home/recommend2.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="<%=pjName %>/resources/images/home/recommend3.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
												
											</div>
										</div>
									</div>
								</div>
								<div class="item">	
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="<%=pjName %>/resources/images/home/recommend1.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="<%=pjName %>/resources/images/home/recommend2.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="<%=pjName %>/resources/images/home/recommend3.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
												
											</div>
										</div>
									</div>
								</div>
							</div>
							 <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							  </a>
							  <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
								<i class="fa fa-angle-right"></i>
							  </a>			
						</div>
					</div><!--/recommended_items-->

				</div>	
			</div>
		</div>
	</section>
	
	<footer id="footer"><!--Footer-->
		<div class="footer-widget">
			<div class="container">
				<div class="row" style="padding:3%;">     
					<div class="col-sm-4"></div>
					<div class="col-sm-4">
					   <div class="contact-info">
						  <h2 class="title text-center">Contact Info</h2>
						  <address>
							 <p>(주)펫두 </p>
							<p>서울 금천구 가산디지털2로 101 3층 302호</p>
							<p>서울특별시 금천구 가산동</p>
							<p>Mobile: +82 10 1234 5678</p>
							<p>Fax: 1234-5678</p>
							<p>Email:petdo@shopper.com</p>
						  </address>
						  
					   </div>
					</div>             
				 </div>  
			</div>
		</div>
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a></span></p>
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	

  
  <script src="<%=pjName %>/resources/js/jquery.js"></script>
	<script src="<%=pjName %>/resources/js/price-range.js"></script>
	<script src="<%=pjName %>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName %>/resources/js/bootstrap.min.js"></script>
    <script src="<%=pjName %>/resources/js/jquery.prettyPhoto.js"></script>
    <script src="<%=pjName %>/resources/js/main.js"></script>
</body>
</html>